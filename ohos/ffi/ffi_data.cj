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

import std.collection.HashMap

/**
 * base class of objects that would be visited by native, on place should keep any reference of a FFIData,
 * native have the ownership of the object.
 *  pass a cj object to native takes 3 steps
 *   1. give the object a global unique id which keeps in FFIData::id_
 *   2. register the object to a global map by FFIDataManager.getInstance().register
 *   3. pass the unique id instead of the object itself to native
 *  how native visit properties and methods on the object
 *   1. call global @C function, and pass the unique id to that func
 *   2. @C func fetch the object from global map by unique id
 *   3. @C func visit the properties and methods of the object
 */
protected open class FFIData {
    // fucking stupid spec forbid use methods within open class constructor,
    // and derived open class may use id to construct other variable,
    // so I have to expose this variable to derived class.
    protected var id_: Int64

    protected FFIData() {
        id_ = FFIDataManager.getInstance().newId()
    }

    protected func getID(): Int64 {
        return id_
    }

    protected func registerSelf(): Unit {
        FFIDataManager.getInstance().register(this)
    }

    /**
     * Destroy this FFIData object manually.
     * This function should be called when the FFI interface fails to take over the object.
     * Corresponds to registerSelf(), used to manually release the object when FFI call fails.
     */
    protected func destroySelf(): Unit {
        FFIDataManager.getInstance().releaseData(id_)
    }

    protected open func onDestroyed(): Unit {
    }
}

/**
 * this singleton class keeps the global map of FFIData,
 * any FFIData that pass to native must register to the map first.
 * when native determinate to delete the object, native should call the FFIDataManager.getInstance().releaseData
 */
protected class FFIDataManager {
    private static let INSTANCE = FFIDataManager()
    protected static func getInstance(): FFIDataManager {
        INSTANCE
    }

    private let store_ = HashMap<Int64, FFIData>();
    private var gid_: Int64 = 0
    private let maxId: Int64 = 0x7fff_ffff_ffff_ffff
    private var dataLock = AtomicLock()
    // maxCapacity can be set to a larger number if needed, make sure maxCapacity is less than maxId
    private let maxCapacity: Int64 = 0x7fff_ffff_ffff_ffff

    protected func register(data: FFIData): Unit {
        dataLock.acquire {
            let id = data.getID()
            if (store_.contains(id)) {
                FFI_BIND_LOG.info("FFIData id duplicate: ${id} with cache!")
            }
            store_.add(id, data)
        }
    }

    private func gidSafeIncrease(): Int64 {
        gid_++
        if (gid_ >= maxId) {
            FFI_BIND_LOG.info("FFIData id(${gid_}) over max ${maxId}, reset to 0")
            gid_ = 1
            return 1
        }
        return 0
    }

    protected func newId(): Int64 {
        dataLock.acquire {
            if (store_.size >= Int64(maxCapacity)) {
                let msg = "FFIData store_ over max capacity: ${maxCapacity}"
                throw Exception(msg)
            }
            var resetTimes = gidSafeIncrease()
            while (store_.contains(gid_) && resetTimes < 2) {
                resetTimes += gidSafeIncrease()
            }
            if (resetTimes >= 2) {
                let msg = "FFIData id run out"
                throw Exception(msg)
            }
            gid_
        }
    }

    protected func getData<T>(id: Int64): Option<T> where T <: FFIData {
        dataLock.acquire {
            let optData = store_.get(id)
            match (optData) {
                case None => Option<T>.None
                case Some(data) => data as T
            }
        }
    }

    protected func exist(id: Int64): Bool {
        dataLock.acquire {
            return store_.contains(id)
        }
    }

    protected func releaseData(id: Int64): Bool {
        dataLock.acquire {
            let optData = store_.remove(id)
            match (optData) {
                case None => false
                case Some(data) =>
                    data.onDestroyed()
                    true
            }
        }
    }
}

@C
protected func OHOSFFIExistFFIData(id: Int64): Bool {
    return FFIDataManager.getInstance().exist(id)
}

@C
protected func OHOSFFIReleaseFFIData(id: Int64): Bool {
    return FFIDataManager.getInstance().releaseData(id)
}
