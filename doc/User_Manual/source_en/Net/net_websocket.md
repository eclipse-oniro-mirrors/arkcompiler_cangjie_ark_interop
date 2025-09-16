# WebSocket Programming

In network programming, WebSocket is a commonly used application-layer protocol. Like HTTP, it is also built on top of the TCP protocol and is frequently employed in web server application development.

Unlike HTTP, WebSocket only requires a single handshake between client and server to establish a persistent connection, enabling bidirectional data transmission. This means WebSocket-based servers can actively push data to clients, achieving real-time communication.

WebSocket is an independent protocol. Its connection to HTTP lies in the fact that its handshake is interpreted by HTTP servers as an upgrade request. Therefore, Cangjie includes WebSocket in the `http` package.

Cangjie abstracts the WebSocket communication mechanism into the `WebSocket` class, providing methods to upgrade an HTTP/1.1 or HTTP/2.0 server handle to a WebSocket protocol instance. Communication is then conducted through the returned `WebSocket` instance, such as reading and writing data packets.

In Cangjie, the fundamental data unit transmitted via WebSocket is called a frame. Frames are divided into two categories: one type transmits control information (e.g., Close Frame for connection termination, Ping Frame for keep-alive, Pong Frame as the response type for Ping Frame); the other type transmits application data, supporting fragmented transmission.

Cangjie's frames consist of three attributes: `fin` and `frameType` jointly indicate whether the frame is fragmented and its type, while `payload` contains the frame's data payload. Developers don't need to concern themselves with other attributes for packet transmission.

The following example demonstrates WebSocket handshaking and message exchange: creating HTTP client and server instances, initiating WebSocket upgrade (handshake), and performing frame read/write operations after successful handshake.

> **Note:**
>
> Libraries such as net, encoding, and log have been moved from the Cangjie SDK to the stdx module. Before use, download the package and configure it in cjpm.toml.

<!-- verify -->

```cangjie
import stdx.net.http.*
import stdx.encoding.url.*
import std.time.*
import std.sync.*
import std.collection.*
import stdx.log.*

let server = ServerBuilder()
                        .addr("127.0.0.1")
                        .port(0)
                        .build()

// client:
main() {
    // 1 Start server
    spawn { startServer() }
    sleep(Duration.millisecond * 200)

    let client = ClientBuilder().build()
    let u = URL.parse("ws://127.0.0.1:${server.port}/webSocket")

    let subProtocol = ArrayList<String>(["foo1", "bar1"])
    let headers = HttpHeaders()
    headers.add("test", "echo")

    // 2 Complete WebSocket handshake, obtain WebSocket instance
    let websocket: WebSocket
    let respHeaders: HttpHeaders
    (websocket, respHeaders) = WebSocket.upgradeFromClient(client, u, subProtocols: subProtocol, headers: headers)
    client.close()

    println("subProtocol: ${websocket.subProtocol}")      // fool1
    println(respHeaders.getFirst("rsp") ?? "") // echo

    // 3 Message exchange
    // Send hello
    websocket.write(TextWebFrame, "hello".toArray())
    // Receive
    let data = ArrayList<UInt8>()
    var frame = websocket.read()
    while(true) {
        match(frame.frameType) {
            case ContinuationWebFrame =>
                data.add(all: frame.payload)
                if (frame.fin) {
                    break
                }
            case TextWebFrame | BinaryWebFrame =>
                if (!data.isEmpty()) {
                    throw Exception("invalid frame")
                }
                data.add(all: frame.payload)
                if (frame.fin) {
                    break
                }
            case CloseWebFrame =>
                websocket.write(CloseWebFrame, frame.payload)
                break
            case PingWebFrame =>
                websocket.writePongFrame(frame.payload)
            case _ => ()
        }
        frame = websocket.read()
    }
    println("data size: ${data.size}")      // 4097
    println("last item: ${String.fromUtf8(data.toArray()[4096])}")        // a

    // 4 Close WebSocket
    // Exchange CloseFrame
    websocket.writeCloseFrame(status: 1000)
    let websocketFrame = websocket.read()
    println("close frame type: ${websocketFrame.frameType}")      // CloseWebFrame
    println("close frame payload: ${websocketFrame.payload}")     // 3, 232
    // Close underlying connection
    websocket.closeConn()

    server.close()
}

func startServer() {
    // 1 Register handler
    server.distributor.register("/webSocket", handler1)
    server.logger.level = LogLevel.OFF
    server.serve()
}

// server:
func handler1(ctx: HttpContext): Unit {
    // 2 Complete WebSocket handshake, obtain WebSocket instance
    let websocketServer = WebSocket.upgradeFromServer(ctx, subProtocols: ArrayList<String>(["foo", "bar", "foo1"]),
        userFunc: {request: HttpRequest =>
            let value = request.headers.getFirst("test") ?? ""
            let headers = HttpHeaders()
            headers.add("rsp", value)
            headers
        })
    // 3 Message exchange
    // Receive hello
    let data = ArrayList<UInt8>()
    var frame = websocketServer.read()
    while(true) {
        match(frame.frameType) {
            case ContinuationWebFrame =>
                data.add(all: frame.payload)
                if (frame.fin) {
                    break
                }
            case TextWebFrame | BinaryWebFrame =>
                if (!data.isEmpty()) {
                    throw Exception("invalid frame")
                }
                data.add(all: frame.payload)
                if (frame.fin) {
                    break
                }
            case CloseWebFrame =>
                websocketServer.write(CloseWebFrame, frame.payload)
                break
            case PingWebFrame =>
                websocketServer.writePongFrame(frame.payload)
            case _ => ()
        }
        frame = websocketServer.read()
    }
    println("data: ${String.fromUtf8(data.toArray())}")    // hello
    // Send 4097 'a's
    websocketServer.write(TextWebFrame, Array<UInt8>(4097, repeat: 97))

    // 4 Close WebSocket
    // Exchange CloseFrame
    let websocketFrame = websocketServer.read()
    println("close frame type: ${websocketFrame.frameType}")   // CloseWebFrame
    println("close frame payload: ${websocketFrame.payload}")     // 3, 232
    websocketServer.write(CloseWebFrame, websocketFrame.payload)
    // Close underlying connection
    websocketServer.closeConn()
}
```

The example execution results are as follows:

```text
subProtocol: foo1
echo
data: hello
data size: 4097
last item: a
close frame type: CloseWebFrame
close frame payload: [3, 232]
close frame type: CloseWebFrame
close frame payload: [3, 232]
```