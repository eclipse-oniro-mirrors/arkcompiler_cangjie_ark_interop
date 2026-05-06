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

#include "utf16string.h"

#include "helper.h"
#include "utf16string_dfx.h"
#define SHIFT_BITS_3 3
#define SHIFT_BITS_6 6
#define SHIFT_BITS_10 10
#define SHIFT_BITS_12 12
#define SHIFT_BITS_18 18
#define SHIFT_BITS_24 24
#define SHIFT_BITS_30 30
#define RESIZE_FACTOR_2 2
#define RESIZE_FACTOR_3 3
#define RESIZE_FACTOR_4 4

static size_t AlignedSize(size_t src)
{
    auto fullWords = src >> 3;
    auto rest = src & 0x7;
    if (rest == 0) {
        return fullWords << SHIFT_BITS_3;
    } else {
        return (fullWords + 1) << SHIFT_BITS_3;
    }
}

Utf16StringHandle Utf16String::Create(const char *src, uint32_t length, bool isConst, bool isConstObJ)
{
    if (length == 0 && Empty) {
        return Empty;
    }
    auto isLatin1 = EncodingHelper<char>::IsLatin1(src, length);
    if (isLatin1) {
        return CreateLatin1(src, length, isConst, isConstObJ);
    }
    auto str = malloc(AlignedSize(sizeof(Utf16String) + (length * 2)));
    if (!str) {
        return nullptr;
    }
    auto data = static_cast<uint8_t*>(str) + sizeof(Utf16String);
    length = Utf8ToUtf16(reinterpret_cast<char16_t*>(data), src, length);
    auto result = new (str)Utf16String(isLatin1, false, length, data, isConstObJ);
    return result;
}

Utf16StringHandle Utf16String::Create(bool isLatin1, uint32_t length)
{
    auto str = malloc(AlignedSize(sizeof(Utf16String) + (isLatin1 ? length : (length * 2))));
    if (!str) {
        return nullptr;
    }
    auto data = static_cast<uint8_t*>(str) + sizeof(Utf16String);
    auto result = new (str)Utf16String(isLatin1, false, length, data);
    return result;
}

void Utf16String::Destroy(Utf16StringHandle handle)
{
    const_cast<Utf16String*>(handle)->DecRef();
}

uint32_t Utf16String::Utf8ToUtf16(char16_t *dst, const char *src, uint32_t length)
{
    const auto dstStart = dst;
    const auto srcEnding = src + length;
    while (src < srcEnding) {
        const auto nextChar = *src++;
        char32_t code;
        if ((nextChar & 0x80) == 0) {
            code = nextChar;
        } else if ((nextChar & 0xE0) == 0xC0) {
            code = (nextChar & 0x1F) << SHIFT_BITS_6;
            code |= *src++ & 0x3F;
        } else if ((nextChar & 0xF0) == 0xE0) {
            code = (nextChar & 0x0F) << SHIFT_BITS_12;
            code |= (*src++ & 0x3F) << SHIFT_BITS_6;
            code |= *src++ & 0x3F;
        } else if ((nextChar & 0xF8) == 0xF0) {
            code = (nextChar & 0x07) << SHIFT_BITS_18;
            code |= (*src++ & 0x3F) << SHIFT_BITS_12;
            code |= (*src++ & 0x3F) << SHIFT_BITS_6;
            code |= *src++ & 0x3F;
        } else if ((nextChar & 0xFC) == 0xF8) {
            code = (nextChar & 0x03) << SHIFT_BITS_24;
            code |= (*src++ & 0x3F) << SHIFT_BITS_18;
            code |= (*src++ & 0x3F) << SHIFT_BITS_12;
            code |= (*src++ & 0x3F) << SHIFT_BITS_6;
            code |= *src++ & 0x3F;
        } else { /*if ((nextChar & 0xFC) == 0xFC)*/
            // ignored one error 0x2
            code = (nextChar & 0x01) << SHIFT_BITS_30;
            code |= (*src++ & 0x3F) << SHIFT_BITS_24;
            code |= (*src++ & 0x3F) << SHIFT_BITS_18;
            code |= (*src++ & 0x3F) << SHIFT_BITS_12;
            code |= (*src++ & 0x3F) << SHIFT_BITS_6;
            code |= *src++ & 0x3F;
        }
        if (code < 0x10000) {
            *dst++ = code;
        } else {
            code -= 0x10000;
            *dst++ = 0xD800 + ((code & 0xFFC00) >> SHIFT_BITS_10);
            *dst++ = 0xDC00 + (code & 0x3FF);
        }
    }
    return dst - dstStart;
}

Utf16StringHandle Utf16String::Create(const std::string &src)
{
    if (src.empty()) {
        return Empty;
    }
    return Create(src.c_str(), src.length(), false);
}

Utf16String::Range Utf16String::GetUtf16Range(uint32_t start, uint32_t end) const
{
    auto begin = Utf16Data();
    Utf16::Iter itor {begin, begin + length_};
    Range result {};

    uint32_t current = 0;
    bool startFound = false;
    while (!itor.IsEnd() && current < end) {
        if (!startFound) {
            if (current == start) {
                result.x = itor.current - begin;
                startFound = true;
            }
        } else if (current == end) {
            break;
        }
        itor.Skip();
        ++current;
    }
    result.y = itor.current - begin;
    return result;
}

Utf16StringHandle Utf16String::RawSubstr(uint32_t start, uint32_t end) const
{
    if (start >= length_ || end <= start) {
        return Empty;
    }

    auto length = end - start;
    length = std::min(length, length_ - start);
    if (length == 0) {
        return Empty;
    }

    if (isLatin1_) {
        if (isConstSrc_) {
            return CreateLatin1(static_cast<const char*>(src_) + start, length, true);
        }
        if (parent_) {
            return parent_->RawSlice(parentOffset_ + start, length);
        }
        return CreateSubstr(this, start, length);
    }

    const auto isCompressable = EncodingHelper<char16_t>::IsLatin1(
        Utf16Data() + start,
            length);
    if (isCompressable) {
        auto src = malloc(AlignedSize(sizeof(Utf16String) + length));
        if (!src) {
            return nullptr;
        }
        auto data = static_cast<uint8_t*>(src) + sizeof(Utf16String);
        CompressUtf16ToLatin1(data, Utf16Data() + start, length);
        auto result = new (src)Utf16String(true, false, length, data);
        return result;
    }

    if (isConstSrc_) {
        return CreateUtf16(Utf16Data() + start, length, false);
    }
    if (parent_) {
        return parent_->RawSlice(parentOffset_ + start, length);
    }
    return CreateSubstr(this, start, length);
}

Utf16StringHandle Utf16String::SubString(uint32_t start, uint32_t end) const
{
    if (start >= length_ || end <= start) {
        return Empty;
    }

    if (isLatin1_) {
        return RawSubstr(start, end);
    }

    auto actualRange = GetUtf16Range(start, end);

    return RawSubstr(actualRange.x, actualRange.y);
}

void Utf16String::CompressUtf16ToLatin1(uint8_t *dst, const char16_t *src, uint32_t length)
{
    auto fullWords = length >> 2;
    auto restChars = length & 0x3;
    {
        auto dstStart = reinterpret_cast<uint32_t*>(dst);
        auto srcStart = reinterpret_cast<const uint64_t*>(src);
        for (uint32_t i = 0; i < fullWords; i++) {
            auto srcWord = *srcStart++;
            uint32_t dstWord = (srcWord & 0xFF) | 
                               ((srcWord & 0xFF0000) >> 8) |
                               ((srcWord & 0xFF'0000'0000) >> 16) | 
                               ((srcWord & 0xFF'0000'0000'0000) >> 24);
            *dstStart++ = dstWord;
        }
    }
    {
        auto dstStart = dst + (fullWords << 2);
        auto srcStart = src + (fullWords << 2);
        for (uint32_t i = 0; i < restChars; i++) {
            *dstStart++ = *srcStart++;
        }
    }
}

Utf16StringHandle Utf16String::RawSlice(uint32_t start, uint32_t length) const
{
    if (parent_) {
        return parent_->RawSlice(parentOffset_ + start, length);
    }
    return CreateSubstr(this, start, length);
}

Utf16StringHandle Utf16String::CreateSubstr(const Utf16String *src, uint32_t offset, uint32_t length)
{
    auto str = malloc(sizeof(Utf16String));
    if (!str) {
        return nullptr;
    }
    auto result = new (str)Utf16String(src->isLatin1_, false, length, src->GetData(offset));
    result->SetParent(const_cast<Utf16String *>(src), offset);
    return result;
}

void Utf16String::SetParent(Utf16String *parent, uint32_t start)
{
    parent->IncRef();
    parent_ = parent;
    parentOffset_ = start;
}

Utf16StringHandle Utf16String::CreateLatin1(const char *src, uint32_t length, bool isConst, bool isConstObJ)
{
    if (isConst) {
        auto str = malloc(sizeof(Utf16String));
        if (!str) {
            return nullptr;
        }
        auto result = new (str)Utf16String(true, true, length, src, isConstObJ);
        return result;
    }
    auto str = malloc(AlignedSize(sizeof(Utf16String) + length));
    if (!str) {
        return nullptr;
    }
    auto data = static_cast<uint8_t*>(str) + sizeof(Utf16String);
    auto result = new (str)Utf16String(true, false, length, data, isConstObJ);
    __builtin_memcpy(data, src, length);
    return result;
}

Utf16StringHandle Utf16String::CreateUtf16(const char16_t *src, uint32_t length, bool isConst, bool isConstObJ)
{
    if (isConst) {
        auto str = malloc(sizeof(Utf16String));
        if (!str) {
            return nullptr;
        }
        auto result = new (str)Utf16String(false, true, length, src, isConstObJ);
        return result;
    } else {
        auto str = malloc(AlignedSize(sizeof(Utf16String) + (length * 2)));
        if (!str) {
            return nullptr;
        }
        auto data = reinterpret_cast<char16_t*>(static_cast<char*>(str) + sizeof(Utf16String));
        auto result = new (str)Utf16String(true, false, length, data, isConstObJ);
        __builtin_memcpy(data, src, length * RESIZE_FACTOR_2);

        return result;
    }
}

Utf16String::Utf16String(bool isLatin1, bool isConst, uint32_t length, const void *src, bool isConstObj)
    : isLatin1_(isLatin1), isConstSrc_(isConst), isConstObj_(isConstObj), length_(length), src_(src)
{
    if (!isConstObj) {
        Utf16StringRecorder::New(this);
    }
}

Utf16String::~Utf16String()
{
    if (parent_) {
        const_cast<Utf16String*>(parent_)->DecRef();
        parent_ = nullptr;
    }
    if (!isConstObj_) {
        Utf16StringRecorder::Del(this);
    }
}

void Utf16String::IncRef()
{
    if (isConstObj_) {
        return;
    }
    ++refCount_;
}

void Utf16String::DecRef()
{
    if (isConstObj_) {
        return;
    }
    if (!--refCount_) {
        Release(this);
    }
}

void Utf16String::Release(Utf16StringHandle src)
{
    src->~Utf16String();
    free(const_cast<Utf16String *>(src));
}

std::string Utf16String::ToString() const
{
    std::string result;
    if (isLatin1_) {
        result.resize(length_);
    } else {
        result.resize(length_ * RESIZE_FACTOR_4);
    }
    result.resize(WriteToUtf8(result.data()));
    return result;
}

uint32_t Utf16String::WriteToUtf8(char *dst) const
{
    if (isLatin1_) {
        __builtin_memcpy(dst, src_, length_);
        return length_;
    }
    return Utf16ToUtf8(dst, Utf16Data(), length_);
}

uint32_t Utf16String::Utf16ToUtf8(char *dst, const char16_t *src, uint32_t length)
{
    const auto dstStart = dst;
    const auto ending = src + length;
    while (src < ending) {
        const auto nextChar = *src++;
        char32_t code;
        if (nextChar < 0xD800 || nextChar >= 0xE000) {
            code = nextChar;
        } else {
            code = 0x10000 | (((nextChar & 0x3FF) << SHIFT_BITS_10) | (*src++ & 0x3FF));
        }
        if (code < 0x80) {
            *dst++ = code;
        } else if (code < 0x800) {
            *dst++ = 0xC0 | ((code & 0x7C0) >> SHIFT_BITS_6);
            *dst++ = 0x80 | (code & 0x3F);
        } else if (code < 0x10000) {
            *dst++ = 0xE0 | ((code & 0xF000) >> SHIFT_BITS_12);
            *dst++ = 0x80 | ((code & 0xFC0) >> SHIFT_BITS_6);
            *dst++ = 0x80 | (code & 0x3F);
        } else if (code < 0x20'0000) {
            *dst++ = 0xF0 | ((code & 0x1C'0000) >> SHIFT_BITS_18);
            *dst++ = 0x80 | ((code & 0x3'F000) >> SHIFT_BITS_12);
            *dst++ = 0x80 | ((code & 0xFC0) >> SHIFT_BITS_6);
            *dst++ = 0x80 | (code & 0x3F);
        } else if (code < 0x400'0000) {
            *dst++ = 0xF8 | ((code & 0x300'0000) >> SHIFT_BITS_24);
            *dst++ = 0x80 | ((code & 0xFC'0000) >> SHIFT_BITS_18);
            *dst++ = 0x80 | ((code & 0x3'F000) >> SHIFT_BITS_12);
            *dst++ = 0x80 | ((code & 0xFC0) >> SHIFT_BITS_6);
            *dst++ = 0x80 | (code & 0x3F);
        } else {
            *dst++ = 0xFC | ((code & 0x4000'0000) >> SHIFT_BITS_30);
            *dst++ = 0x80 | ((code & 0x3F00'0000) >> SHIFT_BITS_24);
            *dst++ = 0x80 | ((code & 0xFC'0000) >> SHIFT_BITS_18);
            *dst++ = 0x80 | ((code & 0x3'F000) >> SHIFT_BITS_12);
            *dst++ = 0x80 | ((code & 0xFC0) >> SHIFT_BITS_6);
            *dst++ = 0x80 | (code & 0x3F);
        }
    }
    return dst - dstStart;
}

int32_t Utf16String::Compare(Utf16StringHandle other) const
{
    if (isLatin1_ && other->isLatin1_) {
        return Latin1CompareLatin1(other);
    }
    if (!isLatin1_ && !other->isLatin1_) {
        return Utf16CompareUtf16(other);
    }
    if (!isLatin1_) {
        return Utf16CompareLatin1(other);
    }
    return -other->Utf16CompareLatin1(this);
}

int32_t Utf16String::Latin1CompareLatin1(const Utf16String *other) const
{
    auto length = std::min(length_, other->length_);
    if (auto result = __builtin_memcmp(src_, other->src_, length)) {
        return result;
    }
    return CompareLength(other);
}

int32_t Utf16String::CompareLength(const Utf16String *other) const
{
    if (length_ > other->length_) {
        return 1;
    }
    if (length_ < other->length_) {
        return -1;
    }
    return 0;
}

int32_t Utf16String::Utf16CompareUtf16(const Utf16String *other) const
{
    auto length = std::min(length_, other->length_);
    if (auto result = Utf16::Compare(Utf16Data(), other->Utf16Data(), length)) {
        return result;
    }
    return CompareLength(other);
}

int32_t Utf16String::Utf16CompareLatin1(const Utf16String *other) const
{
    auto start = Utf16Data();
    Utf16::Iter itor {start, start + length_};
    auto tar = other->Latin1Data();
    auto tarEnd = tar + other->length_;
    while (!itor.IsEnd() && tar < tarEnd) {
        const auto nextA = itor.Next();
        auto nextB = *tar++;
        if (nextA != nextB) {
            return nextA > nextB ? 1 : -1;
        }
    }
    if (itor.IsEnd() && tar >= tarEnd) {
        return 0;
    }
    return itor.IsEnd() ? 1 : -1;
}

Utf16StringHandle Utf16String::Empty = Create(nullptr, 0, true, true);

char32_t Utf16String::operator[](int64_t index) const
{
    if (isLatin1_) {
        if (index >= 0) {
            if (index >= length_) {
                return 0;
            }
            return Latin1Data()[index];
        } else {
            if (-index > length_) {
                return 0;
            }
            return Latin1Data()[length_ + index];
        }
    }
    if (index >= 0) {
        auto start = Utf16Data();
        Utf16::Iter itor {start, start + length_};
        int32_t i = 0;
        while (i++ < index) {
            itor.Skip();
            if (itor.IsEnd()) {
                break;
            }
        }
        if (!itor.IsEnd()) {
            return itor.Next();
        }
    } else {
        index = -index;
        auto rend = Utf16Data();
        Utf16::RIter itor {rend + length_, rend};
        int32_t i = 0;
        while (++i < index) {
            itor.Skip();
            if (itor.IsEnd()) {
                break;
            }
        }
        if (!itor.IsEnd()) {
            return itor.Next();
        }
    }

    return 0;
}

size_t Utf16String::Hash() const
{
    if (isLatin1_) {
        auto src = Latin1Data();
        return std::__do_string_hash(src, src + length_);
    } else {
        auto src = Utf16Data();
        return std::__do_string_hash(src, src + length_);
    }
}

std::vector<Utf16StringHandle> Utf16String::SplitEmpty(uint32_t maxCount) const
{
    if (!length_) {
        return {};
    }
    if (maxCount == 0) {
        maxCount = length_;
    }
    std::vector<Utf16StringHandle> result;
    maxCount = std::min(maxCount, length_);
    if (isLatin1_) {
        for (uint32_t i = 0; i < maxCount - 1; ++i) {
            result.push_back(SubString(i, i + 1));
        }
        result.push_back(SubString(maxCount - 1, length_));
    } else {
        auto begin = Utf16Data();
        Utf16::Iter itor {begin, begin + length_};
        auto start = begin;
        while (!itor.IsEnd() && maxCount > 1) {
            --maxCount;
            itor.Skip();
            auto end = itor.current;
            result.push_back(RawSubstr(start - begin, end - begin));
            start = end;
        }
        if (!itor.IsEnd()) {
            result.push_back(RawSubstr(itor.current - begin, length_));
        }
    }
    return result;
}

std::vector<Utf16StringHandle> Utf16String::Split(Utf16StringHandle separator, uint32_t limit) const
{
    if (separator->IsEmpty()) {
        return SplitEmpty(limit);
    }

    limit = limit == 0 ? UINT32_MAX : limit - 1;

    std::vector<Utf16StringHandle> result;

    int64_t start = 0;
    uint32_t count = 0;
    while (start < length_ && count < limit) {
        const auto next = RawIndexOf(separator, start);
        if (next < 0) {
            break;
        }
        result.push_back(SubString(start, next));
        start = next + separator->length_;
        ++count;
    }
    if (start < length_) {
        result.push_back(SubString(start, length_));
    } else {
        result.push_back(Empty);
    }
    return result;
}

Utf16String::CharCode Utf16String::CharCodeAt(const uint32_t index) const
{
    if (index >= length_) {
        return {CharCode::INVALID, 0};
    }
    char32_t code;
    if (isLatin1_) {
        code = Latin1Data()[index];
        return {CharCode::LATIN1, code};
    }
    const auto src = Utf16Data();
    code = src[index];
    if (code < 0xD800 || code >= 0xE000) {
        return {CharCode::CHAR16, code};
    }
    if (code < 0xDC00) {
        if (index < length_ - 1) {
            code = 0x10000 | (((code & 0x3FF) << SHIFT_BITS_10) | (src[index + 1] & 0x3FF));
        } else {
            return {CharCode::INVALID, 0};
        }
    } else {
        if (index > 0) {
            code = 0x10000 | (((src[index - 1] & 0x3FF) << SHIFT_BITS_10) | (code & 0x3FF));
        } else {
            return {CharCode::INVALID, 0};
        }
    }
    return {CharCode::CHAR16_X2, code};
}

template <typename T>
const T* FindChar(const T* src, uint32_t length, char32_t target)
{
    for (uint32_t i = 0; i < length; i++) {
        if (*src == target) {
            return src;
        }
        ++src;
    }
    return nullptr;
}

template <typename T>
const T* RFindChar(const T* src, uint32_t length, char32_t target)
{
    for (uint32_t i = 0; i < length; i++) {
        if (*--src == target) {
            return src;
        }
    }
    return nullptr;
}

int64_t Utf16String::RawIndexOf(const CharCode code, uint32_t start) const
{
    if (code.kind == CharCode::LATIN1) {
        if (isLatin1_) {
            if (auto location = FindChar(Latin1Data() + start, length_ - start, code.value)) {
                return location - Latin1Data();
            }
            return -1;
        }
        if (auto location = FindChar(Utf16Data() + start, length_ - start, code.value)) {
            return location - Utf16Data();
        }
        return -1;
    }
    if (isLatin1_) {
        return -1;
    }
    if (code.kind == CharCode::CHAR16) {
        if (auto location = FindChar(Utf16Data() + start, length_ - start, code.value)) {
            return location - Utf16Data();
        }
        return -1;
    }
    const auto charCode = code.value - 0x10000;
    const char16_t higher = 0xD800 | ((charCode & 0xFFC00) >> 10);
    const char16_t lower = 0xDC00 | (charCode & 0x3FF);
    while (start < length_) {
        const auto location = FindChar(Utf16Data() + start, length_ - start, higher);
        if (!location || location - Utf16Data() == length_ - 1) {
            return -1;
        }
        if (location[1] == lower) {
            return location - Utf16Data();
        }
        start = location - Utf16Data() + 2;
    }
    return -1;
}

int64_t Utf16String::RawLastIndexOf(const CharCode code, uint32_t start) const
{
    if (code.kind == CharCode::LATIN1) {
        if (isLatin1_) {
            if (auto location = RFindChar(Latin1Data() + start, start, code.value)) {
                return location - Latin1Data();
            }
            return -1;
        }
        if (auto location = RFindChar(Utf16Data() + start, start, code.value)) {
            return location - Utf16Data();
        }
        return -1;
    }
    if (isLatin1_) {
        return -1;
    }
    if (code.kind == CharCode::CHAR16) {
        if (auto location = RFindChar(Utf16Data() + start, start, code.value)) {
            return location - Utf16Data();
        }
        return -1;
    }
    const auto charCode = code.value - 0x10000;
    const char16_t higher = 0xD800 | ((charCode & 0xFFC00) >> 10);
    const char16_t lower = 0xDC00 | (charCode & 0x3FF);
    while (start < length_) {
        const auto location = RFindChar(Utf16Data() + start, start, lower);
        if (!location || location == src_) {
            return -1;
        }
        if (location[-1] == higher) {
            return location - Utf16Data();
        }
        start = location - Utf16Data() - 1;
    }
    return -1;
}

int64_t Utf16String::RawIndexOf(Utf16StringHandle separator, uint32_t start) const
{
    if (start >= length_) {
        return -1;
    }
    if (separator->IsEmpty()) {
        return start;
    }
    auto nextCode = separator->CharCodeAt(0);
    while (start < length_) {
        auto next = RawIndexOf(nextCode, start);
        if (next < 0) {
            return -1;
        }
        if (RawStartsWith(separator, next)) {
            return next;
        }
        start = static_cast<uint32_t>(next) + 1;
    }
    return -1;
}

int64_t Utf16String::RawLastIndexOf(Utf16StringHandle separator, uint32_t ending) const
{
    if (ending > length_) {
        return -1;
    }
    if (separator->IsEmpty()) {
        return ending;
    }
    auto lastCode = separator->CharCodeAt(separator->length_ - 1);
    while (ending > 0) {
        auto next = RawLastIndexOf(lastCode, ending);
        if (next < 0) {
            return -1;
        }
        auto start = next - (separator->length_ - 1);
        if (RawStartsWith(separator, start)) {
            return start;
        }
        ending = static_cast<uint32_t>(next);
    }
    return -1;
}

int64_t Utf16String::IndexOf(Utf16StringHandle separator, int64_t start) const
{
    auto offset = start >= 0 ? CharOffset(start) : RCharOffset(start);
    auto result = RawIndexOf(separator, offset);
    return result;
}

uint32_t Utf16String::TotalChars() const
{
    if (isLatin1_) {
        return length_;
    }
    auto result = 0;
    Utf16::Iter iter {Utf16Data(), Utf16Data() + length_};
    while (!iter.IsEnd()) {
        iter.Skip();
        ++result;
    }
    return result;
}

int64_t Utf16String::LastIndexOf(Utf16StringHandle separator, int64_t ending) const
{
    auto offset = ending >= 0 ? CharOffset(ending) : RCharOffset(-ending);
    auto result = RawLastIndexOf(separator, offset);
    return result;
}

uint32_t Utf16String::CharIndex(uint32_t offset) const
{
    if (isLatin1_) {
        return offset;
    }

    Utf16::Iter iter {Utf16Data(), Utf16Data() + offset};

    uint32_t current = 0;

    while (!iter.IsEnd()) {
        iter.Skip();
        ++current;
    }

    return current;
}

uint32_t Utf16String::CharOffset(uint32_t index) const
{
    if (isLatin1_) {
        return index;
    }

    Utf16::Iter iter {Utf16Data(), Utf16Data() + length_};

    uint32_t current = 0;

    while (!iter.IsEnd() && current < index) {
        iter.Skip();
        ++current;
    }

    return iter.current - Utf16Data();
}

uint32_t Utf16String::RCharOffset(uint32_t index) const
{
    if (isLatin1_) {
        return length_ - index;
    }

    auto begin = Utf16Data();

    Utf16::RIter iter {begin + length_, begin};

    uint32_t current = 1;

    while (!iter.IsEnd() && current < index) {
        iter.Skip();
        ++current;
    }

    return iter.current - begin;
}


int64_t Utf16String::CountOf(Utf16StringHandle separator) const
{
    int32_t result = 0;
    uint32_t index = 0;
    while (index < length_) {
        const auto next = RawIndexOf(separator, index);
        if (next < 0) {
            return result;
        }
        ++result;
        index = next + separator->length_;
    }
    return result;
}

Utf16StringHandle Utf16String::Replace(Utf16StringHandle search, Utf16StringHandle replacement, uint32_t count) const
{
    const auto list = Split(search, count ? count + 1 : 0);
    auto result = Join(list.data(), list.size(), replacement);
    DestroyList(list);
    return result;
}

bool Utf16String::Contains(Utf16StringHandle separator) const
{
    return RawIndexOf(separator, 0) != -1;
}

bool Utf16EqualsLatin1(const char16_t* src, const char* dst, uint32_t length)
{
    constexpr uint64_t hMask = 0xFF00FF00FF00FF00;
    auto wSrc = reinterpret_cast<const uint64_t*>(src);
    auto wDst = reinterpret_cast<const uint64_t*>(dst);
    auto fullWords = length >> 3;
    auto restChars = length & 0x7;
    for (uint32_t i = 0; i < fullWords; i++) {
        auto l = *wSrc++;
        auto r = *wSrc++;
        if ((l & hMask) || (r & hMask)) {
            return false;
        }
        uint64_t a = ((r & 0xFF'0000'0000'0000) << 8) | 
                     ((r & 0xFF'0000'0000) << 16) | 
                     ((r & 0xFF'0000) << 24) | 
                     ((r & 0xFF) << 32);
        uint64_t b = ((l & 0xFF'0000'0000'0000) >> 24) | 
                     ((l & 0xFF'0000'0000) >> 16) | 
                     ((l & 0xFF'0000) >> 8) | 
                     (l & 0xFF);
        auto c = *wDst++;
        if ((a | b) != c) {
            return false;
        }
    }
    src += (fullWords << RESIZE_FACTOR_3);
    dst += (fullWords << RESIZE_FACTOR_3);
    for (uint32_t i = 0; i < restChars; i++) {
        if (*src++ != *dst++) {
            return false;
        }
    }
    return true;
}

bool Utf16String::RawStartsWith(Utf16StringHandle subject, uint32_t start) const
{
    if (length_ < start + subject->length_) {
        return false;
    }
    if (isLatin1_ == subject->isLatin1_) {
        if (isLatin1_) {
            return memcmp(Latin1Data() + start, subject->Latin1Data(), subject->length_) == 0;
        } else {
            return memcmp(Utf16Data() + start, subject->Utf16Data(), subject->length_ * RESIZE_FACTOR_2) == 0;
        }
    }
    if (isLatin1_) {
        return Utf16EqualsLatin1(subject->Utf16Data(), Latin1Data() + start, subject->length_);
    } else {
        return Utf16EqualsLatin1(Utf16Data() + start, subject->Latin1Data(), subject->length_);
    }
}

bool Utf16String::RawEndsWith(Utf16StringHandle subject, uint32_t ending) const
{
    if (ending <= 0) {
        ending = length_;
    }
    if (length_ < ending) {
        return false;
    }
    return RawStartsWith(subject, ending - subject->length_);
}

Utf16StringHandle Utf16String::Append(Utf16StringHandle subject) const
{
    if (IsEmpty()) {
        auto target = const_cast<Utf16String*>(subject);
        target->IncRef();
        return target;
    }
    if (subject->IsEmpty()) {
        auto target = const_cast<Utf16String*>(this);
        target->IncRef();
        return target;
    }
    auto isLatin1 = isLatin1_ && subject->isLatin1_;
    auto length = length_ + subject->length_;
    auto src = malloc(AlignedSize(sizeof(Utf16String) + length * (isLatin1 ? 1 : 2)));
    if (!src) {
        return nullptr;
    }
    auto data = static_cast<char*>(src) + sizeof(Utf16String);
    auto result = new (src)Utf16String(isLatin1, false, length, data);
    if (isLatin1) {
        std::copy_n(Latin1Data(), length_, data);
        std::copy_n(subject->Latin1Data(), subject->length_, data + length_);
        return result;
    }
    result->Write(this, 0);
    result->Write(subject, length_);
    return result;
}

uint32_t Utf16String::Write(Utf16StringHandle src, uint32_t offset)
{
    if (isLatin1_) {
        auto dst = const_cast<char*>(Latin1Data()) + offset;
        if (src->isLatin1_) {
            std::copy_n(src->Latin1Data(), src->length_, dst);
        }
    } else {
        auto dst = const_cast<char16_t*>(Utf16Data()) + offset;
        if (src->isLatin1_) {
            auto targetData = src->Latin1Data();
            for (uint32_t i = 0; i < src->length_; i++) {
                *dst++ = *targetData++;
            }
        } else {
            std::copy_n(src->Utf16Data(), src->length_, dst);
        }
    }
    return offset + src->length_;
}

Utf16StringHandle Utf16String::Join(const Utf16StringHandle *src, uint32_t length, Utf16StringHandle separator)
{
    /*
        There is a corner case, if the `search` parameter of `Replace` is empty, then the
        length is zero, it will OutOfMemory caused by integer wrapping.
        example code:
        let from = Utf16String("")
        let to = Utf16String("222222222222222222222222")
        let search = Utf16String("")
        var result1 = from.replace(search, to, count:0)
    */
    if (length == 0) {
        return Empty;
    }
    size_t size = separator->length_ * (length - 1);
    bool isLatin1 = separator->isLatin1_;
    for (uint32_t i = 0; i < length; i++) {
        size += src[i]->length_;
        isLatin1 = isLatin1 && src[i]->isLatin1_;
    }
    if (size >= UINT32_MAX) {
        return nullptr;
    }
    auto mem = malloc(AlignedSize(sizeof(Utf16String) + size * (isLatin1 ? 1 : 2)));
    if (!mem) {
        return nullptr;
    }
    auto data = static_cast<const char*>(mem) + sizeof(Utf16String);
    auto result = new (mem)Utf16String(isLatin1, false, size, data);
    uint32_t offset = 0;
    for (uint32_t i = 0; i < length; i++) {
        offset = result->Write(*src++, offset);
        if (i < length - 1) {
            offset = result->Write(separator, offset);
        }
    }
    return result;
}
