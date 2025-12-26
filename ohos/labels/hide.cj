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

package ohos.labels

/**
 * Annotation class for defining APIs that need to be hidden.
 * APIs marked with this annotation will not show hints and will not allow navigation in the IDE.
 */
@Annotation
protected class Hide {
    /**
     * Creates a new Hide annotation with the specified parameters.
     *
     * @param { Bool } isChecked - indicates whether compiler-plugin checking is needed.
     *                             When isChecked is true, the compiler-plugin will check and report an error if the user uses the marked APIs;
     *                             when isChecked is false, the compiler-plugin will not perform the check. 
     *                             The default value is false.
     */
    protected const init(isChecked!: Bool = false) {
    }
}
