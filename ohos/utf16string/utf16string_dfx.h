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

#ifndef ARKCOMPILER_CANGJIE_API_UTF16STRING_DFX_H
#define ARKCOMPILER_CANGJIE_API_UTF16STRING_DFX_H

#include <cstdint>

#include "utf16string.h"

class Utf16StringRecorder {
public:
    static void New(Utf16StringHandle src);
    static void Del(Utf16StringHandle src);

private:
    friend class Utf16StringScope;
    static size_t alive_;
};

class __attribute__((visibility("default"))) Utf16StringScope {
public:
    Utf16StringScope();
    ~Utf16StringScope();

    size_t GetRaise() const;

private:
    size_t last_;
};


#endif // ARKCOMPILER_CANGJIE_API_UTF16STRING_DFX_H
