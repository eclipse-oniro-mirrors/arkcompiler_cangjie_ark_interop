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

#include "utf16string_dfx.h"

size_t Utf16StringRecorder::alive_ = 0;

void Utf16StringRecorder::New(Utf16StringHandle src)
{
    if (!src->isConstObj_) {
        ++alive_;
    }
}

void Utf16StringRecorder::Del(Utf16StringHandle src)
{
    if (!src->isConstObj_) {
        --alive_;
    }
}

Utf16StringScope::Utf16StringScope(): last_(Utf16StringRecorder::alive_)
{
}

Utf16StringScope::~Utf16StringScope()
{
    Utf16StringRecorder::alive_ = last_;
}

size_t Utf16StringScope::GetRaise() const
{
    return Utf16StringRecorder::alive_  - last_;
}
