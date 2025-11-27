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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import stdx.encoding.json.*
import kit.CoreFileKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class testFileIo_stat01_1 {
    /**
     * @tc.number: test_fs.stat_01
     * @tc.name: test_fs.stat_01
     * @tc.desc Test FileIo.stat() interfaces.
     * Enter the path or fd parameter to get the file stat.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_01() {
        sleepFor(5.second)
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_01"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        @Expect(file.name, "file_stat_01")
        @Expect(file.getParent(), "/data/storage/el2/base/haps/entry/files")
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let stat2 = FileIo.stat(file.fd)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_02
     * @tc.name: test_fs.stat_02
     * @tc.desc Test FileIo.stat() interfaces.
     * The path point to nothing, no such file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_02() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_02"

        try {
            let stat = FileIo.stat(fpath)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900002, message: No such file or directory")
        }
    }

    /**
     * @tc.number: test_fs.stat_03
     * @tc.name: test_fs.stat_03
     * @tc.desc Test the ino member of class Stat.
     * Enter the path or fd parameter to get stat.ino of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_03() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_03"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.ino is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.ino is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_04
     * @tc.name: test_fs.stat_04
     * @tc.desc Test the mode member of class Stat.
     * Enter the path or fd parameter to get stat.mode of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_04() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_04"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.mode is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.mode is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_05
     * @tc.name: test_fs.stat_05
     * @tc.desc Test the uid member of class Stat.
     * Enter the path or fd parameter to get stat.uid of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_05() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_05"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.uid is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.uid is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_06
     * @tc.name: test_fs.stat_06
     * @tc.desc Test the gid member of class Stat.
     * Enter the path or fd parameter to get stat.gid of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_06() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_06"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.gid is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.gid is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_07
     * @tc.name: test_fs.stat_07
     * @tc.desc Test the size member of class Stat.
     * Enter the path or fd parameter to get stat.size of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_07() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_07"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.size is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.size is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_08
     * @tc.name: test_fs.stat_08
     * @tc.desc Test the atime member of class Stat.
     * Enter the path or fd parameter to get stat.atime of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_08() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_08"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.atime is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.atime is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_09
     * @tc.name: test_fs.stat_09
     * @tc.desc Test the mtime member of class Stat.
     * Enter the path or fd parameter to get stat.mtime of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_09() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_09"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.mtime is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.mtime is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_10
     * @tc.name: test_fs.stat_10
     * @tc.desc Test the ctime member of class Stat.
     * Enter the path or fd parameter to get stat.ctime of the file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_10() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_10"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let stat = FileIo.stat(fpath)
            let res = stat.ctime is Int64
            @Expect(res)

            let stat2 = FileIo.stat(file.fd)
            let res2 = stat2.ctime is Int64
            @Expect(res2)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isBlockDevice
     * @tc.name: test_fs.stat_isBlockDevice
     * @tc.desc Test the isBlockDevice() method of class Stat.
     * This interface shall not treat a normal file as a block special device.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isBlockDevice() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_isBlockDevice"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let res1 = FileIo.stat(fpath).isBlockDevice()
            @Expect(res1, false)

            let res2 = FileIo.stat(file.fd).isBlockDevice()
            @Expect(res2, false)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isCharacterDevice
     * @tc.name: test_fs.stat_isCharacterDevice
     * @tc.desc Test the isCharacterDevice() method of class Stat.
     * This interface shall not treat a normal file as a character special device.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isCharacterDevice() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_isCharacterDevice"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let res1 = FileIo.stat(fpath).isCharacterDevice()
            @Expect(res1, false)

            let res2 = FileIo.stat(file.fd).isCharacterDevice()
            @Expect(res1, false)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isDirectory_01
     * @tc.name: test_fs.stat_isDirectory_01
     * @tc.desc Test the isDirectory() method of class Stat.
     * interface shall not treat a normal file as a directory.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isDirectory_01() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_isDirectory_01"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let res1 = FileIo.stat(fpath).isDirectory()
            @Expect(res1, false)

            let res2 = FileIo.stat(file.fd).isDirectory()
            @Expect(res2, false)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isDirectory_02
     * @tc.name: test_fs.stat_isDirectory_02
     * @tc.desc Test the isDirectory() method of class Stat.
     * This interface shall treat a directory as a directory.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isDirectory_02() {
        let dpath = "/data/storage/el2/base/haps/entry/files/file_stat_isDirectory_02"

        try {
            FileIo.mkdir(dpath)
            let res1 = FileIo.stat(dpath).isDirectory()
            @Expect(res1, true)

            let dir = FileIo.open(dpath, mode: OpenMode.DIR)
            let res2 = FileIo.stat(dir.fd).isDirectory()
            @Expect(res2, true)

            FileIo.close(dir)
            FileIo.rmdir(dpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isFIFO
     * @tc.name: test_fs.stat_isFIFO
     * @tc.desc Test the isFIFO() method of class Stat.
     * This interface shall not treat a normal file as a FIFO.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isFIFO() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_isFIFO"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let res1 = FileIo.stat(fpath).isFIFO()
            @Expect(res1, false)

            let res2 = FileIo.stat(file.fd).isFIFO()
            @Expect(res2, false)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isFile_01
     * @tc.name: test_fs.stat_isFile_01
     * @tc.desc Test the isFile() method of class Stat.
     * This interface shall treat a normal file as a normal file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isFile_01() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_isFile_01"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let res1 = FileIo.stat(fpath).isFile()
            @Expect(res1, true)

            let res2 = FileIo.stat(file.fd).isFile()
            @Expect(res2, true)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isFile_02
     * @tc.name: test_fs.stat_isFile_02
     * @tc.desc Test the isFile() method of class Stat.
     * This interface shall not treat a directory as a normal file.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isFile_02() {
        let dpath = "/data/storage/el2/base/haps/entry/files/file_stat_isFile_02"

        try {
            FileIo.mkdir(dpath)
            let res1 = FileIo.stat(dpath).isFile()
            @Expect(res1, false)

            let dir = FileIo.open(dpath, mode: OpenMode.DIR)
            let res2 = FileIo.stat(dir.fd).isFile()
            @Expect(res2, false)

            FileIo.close(dir)
            FileIo.rmdir(dpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isSocket
     * @tc.name: test_fs.stat_isSocket
     * @tc.desc Test the isSocket() method of class Stat.
     * This interface shall not treat a file as a socket.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isSocket() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_isSocket"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let res1 = FileIo.stat(fpath).isSocket()
            @Expect(res1, false)

            let res2 = FileIo.stat(file.fd).isSocket()
            @Expect(res2, false)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.stat_isSymbolicLink
     * @tc.name: test_fs.stat_isSymbolicLink
     * @tc.desc Test the isSymbolicLink() method of class Stat.
     * This interface shall not treat a normal file as a symbolic link.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stat_isSymbolicLink() {
        let fpath = "/data/storage/el2/base/haps/entry/files/file_stat_isSymbolicLink"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let res1 = FileIo.stat(fpath).isSymbolicLink()
            @Expect(res1, false)

            let res2 = FileIo.stat(file.fd).isSymbolicLink()
            @Expect(res2, false)

            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func statFileByFdWithFdBeingNegativeInteger_00() {
        const fd = -114514i32
        try {
            let stat = FileIo.stat(fd)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid argument")
            @Expect(e.code, 13900020)
        }
    }
}
