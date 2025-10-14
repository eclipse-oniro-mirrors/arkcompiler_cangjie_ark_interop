# I/O Processing Streams

Processing streams refer to streams that act as intermediaries for processing other data streams.

Common processing streams in the Cangjie programming language include `BufferedInputStream`, `BufferedOutputStream`, `StringReader`, `StringWriter`, `ChainedInputStream`, etc.

This chapter introduces buffered streams and string streams.

## Buffered Streams

Since disk I/O operations are significantly slower than memory I/O operations, for high-frequency, small-data read/write operations, unbuffered data streams are highly inefficient—each read and write operation incurs substantial I/O overhead. Buffered data streams, however, can perform multiple read/write operations without triggering disk I/O; instead, data is temporarily stored in memory. Only when the buffer reaches its capacity is the data written to disk in a single operation. This approach dramatically reduces the number of disk operations, thereby improving performance.

The Cangjie programming language standard library provides `BufferedInputStream` and `BufferedOutputStream` to offer buffering functionality.

To use `BufferedInputStream` and `BufferedOutputStream`, the `io` package must be imported.

Example of importing the io package:

<!-- run -->

```cangjie
import std.io.*
```

The role of `BufferedInputStream` is to add buffering functionality to another input stream. Essentially, `BufferedInputStream` is implemented using an internal buffer array.

When reading data through `BufferedInputStream`, it reads an entire buffer's worth of data at once. Subsequent `read` operations can then retrieve smaller chunks of data. When the buffer is exhausted, the input stream refills it. This process repeats until all data in the stream is read.

To construct a `BufferedInputStream`, simply pass another input stream to its constructor. To specify the buffer size, an additional `capacity` parameter can be provided.

Example of constructing a BufferedInputStream:

<!-- run -->

```cangjie
import std.io.{ByteBuffer, BufferedInputStream}

main(): Unit {
    let arr1 = "0123456789".toArray()
    let byteBuffer = ByteBuffer()
    byteBuffer.write(arr1)
    let bufferedInputStream = BufferedInputStream(byteBuffer)
    let arr2 = Array<Byte>(20, repeat: 0)

    /* Reads data from the stream and returns the length of data read */
    let readLen = bufferedInputStream.read(arr2)
    println(String.fromUtf8(arr2[..readLen])) // 0123456789
}
```

The role of `BufferedOutputStream` is to add buffering functionality to another output stream. `BufferedOutputStream` is also implemented using an internal buffer array.

When writing data through `BufferedOutputStream`, the `write` operation first stores data in the internal buffer array. When the buffer is full, `BufferedOutputStream` writes all buffered data to the output stream in a single operation, then clears the buffer for new writes. This process repeats until all data is written.

Note: Since writing data that doesn't fill the buffer won't trigger an output stream write operation, after completing all writes to `BufferedOutputStream`, an additional `flush` function call is required to finalize the writes.

To construct a `BufferedOutputStream`, simply pass another output stream to its constructor. To specify the buffer size, an additional `capacity` parameter can be provided.

Example of constructing a BufferedOutputStream:

<!-- run -->

```cangjie
import std.io.{ByteBuffer, BufferedOutputStream, readToEnd}

main(): Unit {
    let arr1 = "01234".toArray()
    let byteBuffer = ByteBuffer()
    byteBuffer.write(arr1)
    let bufferedOutputStream = BufferedOutputStream(byteBuffer)
    let arr2 = "56789".toArray()

    /* Writes data to the stream; data remains in the external stream's buffer */
    bufferedOutputStream.write(arr2)

    /* Calls the flush function to actually write data to the internal stream */
    bufferedOutputStream.flush()
    println(String.fromUtf8(readToEnd(byteBuffer))) // 0123456789
}
```

## String Streams

Since the input and output streams in the Cangjie programming language are byte-based (for better performance), they can be less user-friendly in string-heavy scenarios. For example, when writing large amounts of text to a file, the text must first be converted to byte data before writing.

To provide more convenient string handling capabilities, the Cangjie programming language offers `StringReader` and `StringWriter`.

To use `StringReader` and `StringWriter`, the `io` package must be imported:

Example of importing the io package:

<!-- run -->

```cangjie
import std.io.*
```

`StringReader` provides line-by-line reading and conditional reading capabilities. Compared to manually converting byte data to strings, it offers better performance and usability.

To construct a `StringReader`, simply pass another input stream to its constructor.

Example of using StringReader:

<!-- run -->

```cangjie
import std.io.{ByteBuffer, StringReader}

main(): Unit {
    let arr1 = "012\n346789".toArray()
    let byteBuffer = ByteBuffer()
    byteBuffer.write(arr1)
    let stringReader = StringReader(byteBuffer)

    /* Reads a line of data */
    let line = stringReader.readln()
    println(line ?? "error") // 012
}
```

`StringWriter` provides direct string writing and line-by-line string writing capabilities. Compared to manually converting byte data to strings before writing, it offers better performance and usability.

To construct a `StringWriter`, simply pass another output stream to its constructor.

Example of using StringWriter:

<!-- run -->

```cangjie
import std.io.{ByteBuffer, StringWriter, readToEnd}

main(): Unit {
    let byteBuffer = ByteBuffer()
    let stringWriter = StringWriter(byteBuffer)

    /* Writes a string */
    stringWriter.write("number")

    /* Writes a string with automatic line break */
    stringWriter.writeln(" is:")

    /* Writes a number */
    stringWriter.write(100.0f32)

    stringWriter.flush()

    println(String.fromUtf8(readToEnd(byteBuffer))) // number is:\n100.000000
}
```