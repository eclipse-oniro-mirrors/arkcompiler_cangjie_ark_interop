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

#ifndef ARKCOMPILER_CANGJIE_API_HELPER_H
#define ARKCOMPILER_CANGJIE_API_HELPER_H
#define CHAR_SHIFT_BASE 3
#define CHAR_SHIFT_MASK 7
#define CHAR16_T_SHIFT_BASE 2
#define CHAR16_T_SHIFT_MASK 3
#define CHAR32_T_SHIFT_BASE 1
#define CHAR32_T_SHIFT_MASK 1
#define SHIFT_BITS_2 2
#define SHIFT_BITS_10 10

#include <cstdint>

template <typename T>
struct CharHelper {
    static constexpr bool supported = false;
};

template<>
struct CharHelper<char> {
    static constexpr bool supported = true;
    static constexpr uint64_t GetSingleMask()
    {
        return 0x80;
    }
    static constexpr uint64_t GetShiftBase()
    {
        return CHAR_SHIFT_BASE;
    }
    static constexpr uint64_t GetShiftMask()
    {
        return CHAR_SHIFT_MASK;
    }
};

template<>
struct CharHelper<char16_t> {
    static constexpr bool supported = true;
    static constexpr uint64_t GetSingleMask()
    {
        return 0xFF00 | 0x80;
    }
    static constexpr uint64_t GetShiftBase()
    {
        return CHAR16_T_SHIFT_BASE;
    }
    static constexpr uint64_t GetShiftMask()
    {
        return CHAR16_T_SHIFT_MASK;
    }
};

template<>
struct CharHelper<char32_t> {
    static constexpr bool supported = true;
    static constexpr uint64_t GetSingleMask()
    {
        return 0xFFFFFF00 | 0x80;
    }
    static constexpr uint64_t GetShiftBase()
    {
        return CHAR32_T_SHIFT_BASE;
    }
    static constexpr uint64_t GetShiftMask()
    {
        return CHAR32_T_SHIFT_MASK;
    }
};

template <typename T>
struct EncodingHelper {
    static_assert(CharHelper<T>::supported && "Only support char, char16_t, char32_t");

private:
    template <uint8_t Count>
    static constexpr uint64_t GetLatin1Mask()
    {
        static_assert(Count * sizeof(T) <= 8);

        constexpr auto bitsPerByte = 8;
        constexpr auto shiftBase = sizeof(T) * bitsPerByte;
        if constexpr (Count == 0) {
            return 0;
        } else {
            constexpr uint64_t base = CharHelper<T>::GetSingleMask();
            return base << ((Count - 1) * shiftBase) | GetLatin1Mask<Count - 1>();
        }
    }

    static bool IsWordsLatin1(const uint64_t* src, uint32_t length)
    {
        constexpr auto wordMask = GetLatin1Mask<8 / sizeof(T)>();
        for (uint32_t i = 0; i < length; i++) {
            if (*src++ & wordMask) {
                return false;
            }
        }
        return true;
    }

    static bool IsRestsLatin1(const T* src, uint32_t length)
    {
        constexpr auto restMask = GetLatin1Mask<1>();
        for (uint32_t i = 0; i < length; i++) {
            if (*src++ & restMask) {
                return false;
            }
        }
        return true;
    }

public:
    static bool IsLatin1(const T* src, uint32_t length)
    {
        // disable simd on 32bit platform due to pointer alignment is not 8,
        // pointer starting position may trigger SIGBUS.
        if constexpr (sizeof(void*) != 8) {
            return IsRestsLatin1(src, length);
        }
        constexpr auto shift = CharHelper<T>::GetShiftBase();
        constexpr auto mask = CharHelper<T>::GetShiftMask();
        const auto fullWords = length >> shift;
        const auto restBytes = length & mask;
        if (!IsWordsLatin1(reinterpret_cast<const uint64_t*>(src), fullWords)) {
            return false;
        }
        if (!IsRestsLatin1(src + (fullWords << shift), restBytes)) {
            return false;
        }
        return true;
    }
};

struct Utf16 {
    static int32_t Compare(const char16_t* a, const char16_t* b, uint32_t length)
    {
        // disable simd on 32bit platform due to pointer alignment is not 8,
        // pointer starting position may trigger SIGBUS.
        if constexpr (sizeof(void*) != 8) {
            return Diff(a, b, length);
        }
        auto fullWords = length >> 2;
        auto restChars = length & 0x3;
        {
            auto aStart = reinterpret_cast<const uint64_t*>(a);
            auto bStart = reinterpret_cast<const uint64_t*>(b);
            for (uint32_t i = 0; i < fullWords; i++) {
                if (aStart[i] != bStart[i]) {
                    if (auto result = Diff(a + (i << 2), b + (i << 2), 4)) {
                        return result;
                    }
                }
            }
        }
        return Diff(a + (fullWords << 2), b + (fullWords << SHIFT_BITS_2), restChars);
    }

    struct Iter {
        const char16_t* current;
        const char16_t* end;

        bool IsEnd() const
        {
            return current >= end;
        }

        char32_t Next()
        {
            char32_t code;
            if (const auto nextChar = *current++; nextChar < 0xD800 || nextChar >= 0xE000) {
                code = nextChar;
            } else {
                code = 0x10000 | (((nextChar & 0x3FF) << SHIFT_BITS_10) | (*current++ & 0x3FF));
            }
            return code;
        }

        void Skip()
        {
            const auto nextChar = *current++;
            if (nextChar >= 0xD800 && nextChar < 0xE000) {
                ++current;
            }
        }
    };

    struct RIter {
        const char16_t* current;
        const char16_t* rend;

        bool IsEnd() const
        {
            return current <= rend;
        }

        char32_t Next()
        {
            char32_t code;
            if (const auto nextChar = *--current; nextChar < 0xD800 || nextChar >= 0xE000) {
                code = nextChar;
            } else {
                code = 0x10000 | ((*--current & 0x3FF) << SHIFT_BITS_10) | (nextChar & 0x3FF);
            }
            return code;
        }

        void Skip()
        {
            const auto nextChar = *--current;
            if (nextChar >= 0xD800 && nextChar < 0xE000) {
                --current;
            }
        }
    };

private:
    static int32_t Diff(const char16_t* a, const char16_t* b, uint32_t length)
    {
        for (uint32_t i = 0; i < length; i++) {
            if (a[i] != b[i]) {
                auto aValue = CharAt(a + i);
                auto bValue = CharAt(b + i);
                if (aValue > bValue) {
                    return 1;
                }
                if (aValue < bValue) {
                    return -1;
                }
            }
        }
        return 0;
    }

    static char32_t CharAt(const char16_t* src)
    {
        char32_t code = *src;
        if (code < 0xD800 || code >= 0xE000) {
            return code;
        }
        if (code < 0xDC00) {
            code = 0x10000 | (((code & 0x3FF) << SHIFT_BITS_10) | (src[1] & 0x3FF));
        } else {
            code = 0x10000 | (((src[-1] & 0x3FF) << SHIFT_BITS_10) | (code & 0x3FF));
        }
        return code;
    }
};


#endif // ARKCOMPILER_CANGJIE_API_HELPER_H
