/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

 // The Cangjie API is in Beta. For Details on its capabilities and limitations, please refer to the README file.

protected package ohos.ffi

import std.sync.Mutex
import std.collection.HashMap

foreign func FfiOHOSFFIFFIDataExist(id: Int64): Bool

foreign func FfiOHOSFFIFFIDataRelease(id: Int64): Unit

enum RemoteDataStatus {
    // created with invalid id: 0.
    | INVALID
    | VALID
    /**
     * removed from global map, native object not destructed yet.
     *  once cj RemoteData release the reference, FFIDataManager may not destructor the native object right now,
     *  cause some place at native may still hold the reference.
     *  This status means the native object may still be alive, but cj can't access it.
     */
    | OUT_REACH
    // native object destructed.
    | DESTROYED
}

protected const SUCCESS_CODE: Int32 = 0
protected const INVALID_CODE: Int32 = -1

/**
 * base class of native objects that would be visit by cj, cj holds a shared pointer to the native object.
 *  cj can use c funcs to visit a native object by a handle, a handle can be a pointer to the object or a unique id,
 *  in this case we use a unique id to present the native object.
 *  on the native side, we keep a global map to store objects that to be passed to cj, and each object has unique id,
 *  native provides c functions to cj, c funcs accept unique id and find the object stored in the map, then visit the
 *  properties and methods of the object.
 */
protected open class RemoteData {
    protected init() {
        id_ = 0
        status_ = INVALID
    }

    protected init(id: Int64) {
        id_ = id
        if (id == 0) {
            status_ = INVALID
        } else {
            status_ = VALID
        }
    }

    protected func dataInit(id: Int64): Unit {
        id_ = id
        if (id == 0) {
            status_ = INVALID
        } else {
            status_ = VALID
        }
    }

    private var id_: Int64
    private var status_: RemoteDataStatus

    /**
     * before visit the native object, must check the object is valid[is deleted], or unexpected situation would occur.
     */
    protected func isValid(): Bool {
        match (status_) {
            case VALID => true
            case _ => false
        }
    }

    /**
     * once determinate to delete the object, remote the native object from the global map
     */
    protected func release(): Unit {
        unsafe {
            status_ = RemoteDataStatus.OUT_REACH
            FfiOHOSFFIFFIDataRelease(id_)
            id_ = 0
        }
    }

    protected func getID(): Int64 {
        if (!isValid()) {
            throw NoneValueException("not a valid RemoteData: ${id_}")
        }
        return id_
    }

    /**
     * this method will be called once native object is destroyed, be clear about that this method would not always be
     * call once after `release` called, it only be called when native object is destructed.
     */
    protected open func onDestroyed(): Unit {
        status_ = DESTROYED
    }
}

/**
 * stores a global map for RemoteData.
 *  when a NativeObject passed to cj for more than one time, could have several RemoteData referenced to the same
 *  NativeObject. Once A RemoteData release the NativeObject, others visit the NativeObject would causes exception.
 *  The solution is check status before visit any NativeObject's properties or methods.
 *  The old way to check status is call a FFI function, that is much expensive. If we store the status as local
 *  property, the trouble is how to synchronize NativeObject's status to cj. That is what RemoteDataManager design for,
 *  we provide @C func to synchronize NativeObject's status, to achieve that, we have to keep every RemoteData on a
 *  global map, so that we can change their status from the native.By the way, it also can prevent several RemoteData
 *  reference to the same NativeObject.
 */
protected class RemoteDataManager {
    private static let INSTANCE = RemoteDataManager()
    protected static func getInstance(): RemoteDataManager {
        INSTANCE
    }

    private let store_ = HashMap<Int64, RemoteData>()
    private let dataLock = Mutex()
    protected func getOrCreate<T>(id: Int64, creator: (Int64) -> T): T where T <: RemoteData {
        synchronized(dataLock) {
            let optData = store_.get(id)
            match (optData) {
                case Some(data) => getOrThrow(data as T, msg: "getOrCreate fail, data exist but type mismatch.")
                case _ =>
                    let data = creator(id)
                    store_.add(id, data)
                    data
            }
        }
    }

    protected func register(data: RemoteData): Unit {
        synchronized(dataLock) {
            let id = data.getID();
            if (store_.contains(id)) {
                FFI_BIND_LOG.error("RemoteData repeat register: " + id.toString())
            }
            store_.add(id, data)
        }
    }

    protected func releaseData(id: Int64): Bool {
        synchronized(dataLock) {
            let optData = store_.get(id)
            match (optData) {
                case Some(data) =>
                    data.onDestroyed()
                    store_.remove(id)
                    true
                case _ => false
            }
        }
    }
}

@C
protected func OHOSFFIReleaseRemoteData(id: Int64): Bool {
    return RemoteDataManager.getInstance().releaseData(id)
}

protected open class RemoteDataLite {
    protected RemoteDataLite(protected var myDataId: Int64) {
        if (myDataId <= 0) {
            throw IllegalArgumentException("invalid object")
        }
    }

    protected init() {
        myDataId = 0
    }

    protected func getID(): Int64 {
        myDataId
    }

    protected func dataInit(id: Int64): Unit {
        if (id <= 0) {
            throw IllegalArgumentException("invalid object")
        }
        myDataId = id
    }
}

protected func releaseFFIData(id: Int64): Unit {
    unsafe { FfiOHOSFFIFFIDataRelease(id) }
}

protected func getOrCreate<V>(map: HashMap<Int64, V>, id: Int64, creator: (Int64) -> V): V {
    match (map.get(id)) {
        case Some(data) => data
        case _ =>
            let data = creator(id)
            map.add(id, data)
            data
    }
}

protected open class RemoteDataWithIdManager {
    let idManager: IdManager

    protected init(myDataId: Int64) {
        idManager = IdManager(myDataId)
    }

    protected func getID(): Int64 {
        idManager.myDataId
    }
}

class IdManager {
    IdManager(let myDataId: Int64) {}

    ~init() {
        releaseFFIData(myDataId)
    }
}
