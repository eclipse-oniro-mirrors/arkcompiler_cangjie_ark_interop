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

package ohos_app_cangjie_entry

let _ = testsuite()

func testsuite(): Unit {
    registerTestSuite("Test_SecurityHuks_AbortSession", {
        => Test_SecurityHuks_AbortSession()
    })
    registerTestSuite("Test_SecurityHuks_Aes", {
        => Test_SecurityHuks_Aes()
    })

    registerTestSuite("Test_SecurityHuks_AnonAttest", {
        => Test_SecurityHuks_AnonAttest()
    })
    registerTestSuite("Test_SecurityHuks_BasicAsymmetric", {
        => Test_SecurityHuks_BasicAsymmetric()
    })
    registerTestSuite("Test_SecurityHuks_DeleteKey", {
        => Test_SecurityHuks_DeleteKey()
    })
    registerTestSuite("Test_SecurityHuks_ExportKeyItem", {
        => Test_SecurityHuks_ExportKeyItem()
    })
    registerTestSuite("Test_SecurityHuks_GenerateKey", {
        => Test_SecurityHuks_GenerateKey()
    })
    registerTestSuite("Test_SecurityHuks_GetKeyItemProperties", {
        => Test_SecurityHuks_GetKeyItemProperties()
    })

    registerTestSuite("Test_SecurityHuks_ImportKey", {
        => Test_SecurityHuks_ImportKey()
    })
    registerTestSuite("Test_SecurityHuks_ImportWrappedKeyItem", {
        => Test_SecurityHuks_ImportWrappedKeyItem()
    })
    registerTestSuite("Test_SecurityHuks_IsKeyItemExist", {
        => Test_SecurityHuks_IsKeyItemExist()
    })
    registerTestSuite("Test_SecurityHuks_KeyExchange", {
        => Test_SecurityHuks_KeyExchange()
    })
    registerTestSuite("Test_SecurityHuks_SessionOther", {
        => Test_SecurityHuks_SessionOther()
    })
    registerTestSuite("Test_SecurityHuks_SM2", {
        => Test_SecurityHuks_SM2()
    })
    registerTestSuite("Test_SecurityHuks_SM4", {
        => Test_SecurityHuks_SM4()
    })
    registerTestSuite("Test_SecurityHuks_Special", {
        => Test_SecurityHuks_Special()
    })
    registerTestSuite("Test_SecurityHuks_Struct_ffi", {
        => Test_SecurityHuks_Struct_ffi()
    })
    registerTestSuite("Test_SecurityHuks_Struct", {
        => Test_SecurityHuks_Struct()
    })
}
