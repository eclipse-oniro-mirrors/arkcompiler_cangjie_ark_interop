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

package entry.macro_test

import ohos.ark_interop_macro.*
import ohos.ark_interop.*
import ohos.hilog.Hilog

@Interop[ArkTS]
public class Node {
    public init(nodeName: JSStringEx, leftChild: Option<Node>, rightChild: Option<Node>) {
        this.name = nodeName
        this._leftChild = leftChild
        this._rightChild = rightChild
    }
    public let name: JSStringEx
    @Interop[ArkTS, Invisible]
    public var _parent: Option<Node> = None
    @Interop[ArkTS, Invisible]
    public var _leftChild: Option<Node>
    @Interop[ArkTS, Invisible]
    public var _rightChild: Option<Node>
    public prop childCount: UInt32 {
        get() {
            1 + (this._leftChild?.childCount ?? 0) + (this._rightChild?.childCount ?? 0)
        }
    }
    public prop childNodeNameList: JSArrayEx<JSStringEx> {
        get() {
            Hilog.info(0, "WBT", "name = ${this.name}, ${this.hasLeftChild}, ${this.hasRightChild}")
            JSArrayEx([this.name])
                .concat(this._leftChild?.childNodeNameList ?? JSArrayEx())
                .concat(this._rightChild?.childNodeNameList ?? JSArrayEx())
        }
    }
    public prop hasAnyDescendants: Bool {
        get() {
            this.childNodeNameList.size > 1
        }
    }
    public func toMap(map: JSHashMapEx<String, Node>): Unit {
        map.set(this.name.toString(), this)
        this._leftChild?.toMap(map)
        this._rightChild?.toMap(map)
    }
    func setLeftChild(node: Node): Unit {
        this._leftChild = node
        node._parent = this
    }
    func setRightChild(node: Node): Unit {
        this._rightChild = node
        node._parent = this
    }
    public prop parent: Node {
        get() {
            match (this._parent) {
                case Some(parent) => parent
                case None => throw Exception("node ${this.name} has no parent.")
            }
        }
    }
    public mut prop leftChild: Node {
        get() {
            match (this._leftChild) {
                case Some(leftChild) => leftChild
                case None => throw Exception("node ${this.name} has no left child.")
            }
        }
        set(v) {
            this.setLeftChild(v)
        }
    }
    public mut prop rightChild: Node {
        get() {
            match (this._rightChild) {
                case Some(rightChild) => rightChild
                case None => throw Exception("node ${this.name} has no right child.")
            }
        }
        set(v) {
            this.setRightChild(v)
        }
    }
    public prop isRoot: Bool {
        get() {
            match (this._parent) {
                case Some(_) => false
                case None => true
            }
        }
    }
    public prop hasLeftChild: Bool {
        get() {
            match (this._leftChild) {
                case Some(_) => true
                case None => false
            }
        }
    }
    public prop hasRightChild: Bool {
        get() {
            match (this._rightChild) {
                case Some(_) => true
                case None => false
            }
        }
    }
}
