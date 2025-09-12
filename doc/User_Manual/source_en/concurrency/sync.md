# Synchronization Mechanisms

In concurrent programming, without synchronization mechanisms to protect variables shared by multiple threads, data race issues can easily occur.

The Cangjie programming language provides three common synchronization mechanisms to ensure thread safety of data: atomic operations, mutex locks, and condition variables.

## Atomic Operations

Cangjie provides atomic operations for integer types, `Bool` type, and reference types.

The integer types include: `Int8`, `Int16`, `Int32`, `Int64`, `UInt8`, `UInt16`, `UInt32`, `UInt64`.

Atomic operations for integer types support basic read/write, swap, and arithmetic operations:

| Operation        | Functionality                                              |
| ---------------- | ---------------------------------------------------------- |
| `load`           | Read                                                       |
| `store`          | Write                                                      |
| `swap`           | Swap, returns the value before swapping                    |
| `compareAndSwap` | Compare and swap, returns `true` if successful, otherwise `false` |
| `fetchAdd`       | Addition, returns the value before the addition operation  |
| `fetchSub`       | Subtraction, returns the value before the subtraction operation |
| `fetchAnd`       | Bitwise AND, returns the value before the AND operation    |
| `fetchOr`        | Bitwise OR, returns the value before the OR operation      |
| `fetchXor`       | Bitwise XOR, returns the value before the XOR operation    |

Note the following:

1. The return value of swap and arithmetic operations is the value before modification.
2. `compareAndSwap` checks if the current value of the atomic variable equals the old value; if so, it replaces it with the new value; otherwise, no replacement occurs.

Taking `Int8` as an example, the corresponding atomic operation type declaration is as follows:

```cangjie
class AtomicInt8 {
    public func load(): Int8
    public func store(val: Int8): Unit
    public func swap(val: Int8): Int8
    public func compareAndSwap(old: Int8, new: Int8): Bool
    public func fetchAdd(val: Int8): Int8
    public func fetchSub(val: Int8): Int8
    public func fetchAnd(val: Int8): Int8
    public func fetchOr(val: Int8): Int8
    public func fetchXor(val: Int8): Int8
}
```

Each method of the above atomic types has a corresponding method that accepts a memory ordering parameter. Currently, only sequential consistency is supported for memory ordering.

Similarly, other integer types have corresponding atomic operation types:

```cangjie
class AtomicInt16 {...}
class AtomicInt32 {...}
class AtomicInt64 {...}
class AtomicUInt8 {...}
class AtomicUInt16 {...}
class AtomicUInt32 {...}
class AtomicUInt64 {...}
```

The following example demonstrates how to use atomic operations to implement counting in a multi-threaded program:

<!-- verify -->

```cangjie
import std.sync.AtomicInt64
import std.collection.ArrayList

let count = AtomicInt64(0)

main(): Int64 {
    let list = ArrayList<Future<Int64>>()

    // create 1000 threads.
    for (_ in 0..1000) {
        let fut = spawn {
            sleep(Duration.millisecond) // sleep for 1ms.
            count.fetchAdd(1)
        }
        list.add(fut)
    }

    // Wait for all threads finished.
    for (f in list) {
        f.get()
    }

    let val = count.load()
    println("count = ${val}")
    return 0
}
```

The output should be:

```text
count = 1000
```

Here are some other correct examples of using integer-type atomic operations:

<!-- compile -->

```cangjie
var obj: AtomicInt32 = AtomicInt32(1)
var x = obj.load() // x: 1, the type is Int32
x = obj.swap(2) // x: 1
x = obj.load() // x: 2
var y = obj.compareAndSwap(2, 3) // y: true, the type is Bool.
y = obj.compareAndSwap(2, 3) // y: false, the value in obj is no longer 2 but 3. Therefore, the CAS operation fails.
x = obj.fetchAdd(1) // x: 3
x = obj.load() // x: 4
```

Atomic operations for `Bool` type and reference types only provide read/write and swap operations:

| Operation        | Functionality                                              |
| ---------------- | ---------------------------------------------------------- |
| `load`           | Read                                                       |
| `store`          | Write                                                      |
| `swap`           | Swap, returns the value before swapping                    |
| `compareAndSwap` | Compare and swap, returns `true` if successful, otherwise `false` |

> **Note:**
>
> Atomic reference operations are only valid for reference types.

The atomic reference type is `AtomicReference`. Here are some correct examples of using `Bool` type and reference-type atomic operations:

<!-- verify -->

```cangjie
import std.sync.{AtomicBool, AtomicReference}

class A {}

main() {
    var obj = AtomicBool(true)
    var x1 = obj.load() // x1: true, the type is Bool
    println(x1)
    var t1 = A()
    var obj2 = AtomicReference(t1)
    var x2 = obj2.load() // x2 and t1 are the same object
    var y1 = obj2.compareAndSwap(x2, t1) // x2 and t1 are the same object, y1: true
    println(y1)
    var t2 = A()
    var y2 = obj2.compareAndSwap(t2, A()) // x and t1 are not the same object, CAS fails, y2: false
    println(y2)
    y2 = obj2.compareAndSwap(t1, A()) // CAS successes, y2: true
    println(y2)
}
```

Compiling and executing the above code outputs:

```text
true
true
false
true
```

## Reentrant Mutex Lock

A reentrant mutex lock protects critical sections, ensuring that only one thread can execute the critical section code at any given time. When a thread attempts to acquire a lock held by another thread, it blocks until the lock is released. Reentrant means a thread can acquire the same lock multiple times.

When using a reentrant mutex lock, two rules must be followed:

1. Before accessing shared data, the lock must be acquired.
2. After processing shared data, the lock must be released so other threads can acquire it.

The main member functions provided by `Mutex` are as follows:

```cangjie
public class Mutex <: UniqueLock {
    // Create a Mutex.
    public init()

    // Locks the mutex, blocks if the mutex is not available.
    public func lock(): Unit

    // Unlocks the mutex. If there are other threads blocking on this
    // lock, then wake up one of them.
    public func unlock(): Unit

    // Tries to lock the mutex, returns false if the mutex is not
    // available, otherwise returns true.
    public func tryLock(): Bool

    // Generate a Condition instance for the mutex.
    public func condition(): Condition
}
```

The following example demonstrates how to use `Mutex` to protect access to the global shared variable `count`. Operations on `count` constitute the critical section:

<!-- verify -->

```cangjie
import std.sync.Mutex
import std.collection.ArrayList

var count: Int64 = 0
let mtx = Mutex()

main(): Int64 {
    let list = ArrayList<Future<Unit>>()

    // create 1000 threads.
    for (i in 0..1000) {
        let fut = spawn {
            sleep(Duration.millisecond) // sleep for 1ms.
            mtx.lock()
            count++
            mtx.unlock()
        }
        list.add(fut)
    }

    // Wait for all threads finished.
    for (f in list) {
        f.get()
    }

    println("count = ${count}")
    return 0
}
```

The output should be:

```text
count = 1000
```

The following example demonstrates how to use `tryLock`:

<!-- run -->

```cangjie
import std.sync.Mutex

main(): Int64 {
    let mtx: Mutex = Mutex()
    var future: Future<Unit> = spawn {
        mtx.lock()
        println("get the lock, do something")
        sleep(Duration.millisecond * 10)
        mtx.unlock()
    }
    try {
        future.get(Duration.millisecond * 10)
    } catch (e: TimeoutException) {
        if (mtx.tryLock()) {
            println("tryLock success, do something")
            mtx.unlock()
            return 0
        }
        println("tryLock failed, do nothing")
        return 0
    }
    return 0
}
```

A possible output is:

```text
get the lock, do something
```

Here are some incorrect examples of using mutex locks:

Error Example 1: A thread does not release the lock after operating on the critical section, causing other threads to block.

<!-- compile.error -->
<!-- cfg="libcangjie-std-sync" -->

```cangjie
import std.sync.Mutex

var sum: Int64 = 0
let mutex = Mutex()

main() {
    let foo = spawn { =>
        mutex.lock()
        sum = sum + 1
    }
    let bar = spawn { =>
        mutex.lock()
        sum = sum + 1
    }
    foo.get()
    println("${sum}")
    bar.get() // Because the thread is not unlocked, other threads waiting to obtain the current mutex will be blocked.
}
```

Error Example 2: Calling `unlock` without holding the lock throws an exception.

<!-- compile.error -->
<!-- cfg="libcangjie-std-sync" -->

```cangjie
import std.sync.Mutex

var sum: Int64 = 0
let mutex = Mutex()

main() {
    let foo = spawn { =>
        sum = sum + 1
        mutex.unlock() // Error, Unlock without obtaining the lock and throw an exception: IllegalSynchronizationStateException.
    }
    foo.get()
}
```

Error Example 3: `tryLock()` does not guarantee acquiring the lock, which may lead to operating on the critical section without lock protection or throwing exceptions when calling `unlock` without holding the lock.

<!-- compile.error -->
<!-- cfg="libcangjie-std-sync" -->

```cangjie
import std.sync.Mutex

var sum: Int64 = 0
let mutex = Mutex()

main() {
    for (i in 0..100) {
        spawn { =>
            mutex.tryLock() // Error, `tryLock()` just trying to acquire a lock, there is no guarantee that the lock will be acquired, and this can lead to abnormal behavior.
            sum = sum + 1
            mutex.unlock()
        }
    }
}
```

Additionally, `Mutex` is designed as a reentrant lock, meaning that if a thread already holds a `Mutex` lock, it can immediately acquire the same `Mutex` lock again.

> **Note:**
>
> Although `Mutex` is a reentrant lock, the number of `unlock()` calls must match the number of `lock()` calls to successfully release the lock.

The following example demonstrates the reentrant property of `Mutex`:

<!-- verify -->

```cangjie
import std.sync.Mutex

var count: Int64 = 0
let mtx = Mutex()

func foo() {
    mtx.lock()
    count += 10
    bar()
    mtx.unlock()
}

func bar() {
    mtx.lock()
    count += 100
    mtx.unlock()
}

main(): Int64 {
    let fut = spawn {
        sleep(Duration.millisecond) // sleep for 1ms.
        foo()
    }

    foo()

    fut.get()

    println("count = ${count}")
    return 0
}
```

The output should be:

```text
count = 220
```

In the above example, whether in the main thread or the newly created thread, if the lock is already acquired in `foo()`, then calling `bar()` will immediately acquire the same `Mutex` lock without causing a deadlock.

## Condition Variables

`Condition` is a condition variable (i.e., a wait queue) bound to a mutex lock. A `Condition` instance is created by a mutex lock, and one mutex lock can create multiple `Condition` instances. `Condition` allows threads to block and wait for signals from other threads to resume execution. This is a synchronization mechanism using shared variables, providing the following main methods:

```cangjie
public class Mutex <: UniqueLock {
    // ...
    // Generate a Condition instance for the mutex.
    public func condition(): Condition
}

public interface Condition {
    // Wait for a signal, blocking the current thread.
    func wait(): Unit
    func wait(timeout!: Duration): Bool

    // Wait for a signal and predicate, blocking the current thread.
    func waitUntil(predicate: ()->Bool): Unit
    func waitUntil(predicate: ()->Bool, timeout!: Duration): Bool

    // Wake up one thread of those waiting on the monitor, if any.
    func notify(): Unit

    // Wake up all threads waiting on the monitor, if any.
    func notifyAll(): Unit
}
```

Before calling the `wait`, `notify`, or `notifyAll` methods of the `Condition` interface, ensure the current thread holds the bound lock. The `wait` method performs the following actions:

1. Adds the current thread to the wait queue of the corresponding lock.
2. Blocks the current thread, fully releases the lock, and records the reentrant count.
3. Waits for another thread to signal this thread using the `notify` or `notifyAll` method of the same `Condition` instance.
4. When the current thread is awakened, it automatically attempts to reacquire the lock with the same reentrant state as recorded in step 2. If acquiring the lock fails, the thread blocks on the lock.

The `wait` method accepts an optional `timeout` parameter. Note that many common operating systems do not guarantee real-time scheduling, so a thread may not block for "exactly N nanoseconds"—imprecision may be observed depending on the system. Additionally, the current language specification explicitly allows implementations to produce spurious wakeups—in such cases, the `wait` return value is implementation-dependent (either `true` or `false`). Therefore, developers are encouraged to always wrap `wait` in a loop:

```cangjie
synchronized (obj) {
    while (<condition is not true>) {
        obj.wait()
    }
}
```

Here is a correct example of using `Condition`:

<!-- verify -->

```cangjie
import std.sync.Mutex

let mtx = Mutex()
let condition = synchronized(mtx) {
    mtx.condition()
}
var flag: Bool = true

main(): Int64 {
    let fut = spawn {
        mtx.lock()
        while (flag) {
            println("New thread: before wait")
            condition.wait()
            println("New thread: after wait")
        }
        mtx.unlock()
    }

    // Sleep for 10ms, to make sure the new thread can be executed.
    sleep(10 * Duration.millisecond)

    mtx.lock()
    println("Main thread: set flag")
    flag = false
    mtx.unlock()

    mtx.lock()
    println("Main thread: notify")
    condition.notifyAll()
    mtx.unlock()

    // wait for the new thread finished.
    fut.get()
    return 0
}
```

The output should be:

```text
New thread: before wait
Main thread: set flag
Main thread: notify
New thread: after wait
```

When executing `wait` on a `Condition` object, it must be done under lock protection; otherwise, the unlock operation in `wait` will throw an exception.

Here are some incorrect examples of using condition variables:

<!-- run.error -->

```cangjie
import std.sync.Mutex

let m1 = Mutex()
let c1 = synchronized(m1) {
    m1.condition()
}
let m2 = Mutex()
var flag: Bool = true
var count: Int64 = 0

func foo1() {
    spawn {
        m2.lock()
        while (flag) {
            c1.wait() // Error：The lock used together with the condition variable must be the same lock and in the locked state. Otherwise, the unlock operation in `wait` throws an exception.
        }
        count = count + 1
        m2.unlock()
    }
    m1.lock()
    flag = false
    c1.notifyAll()
    m1.unlock()
}

func foo2() {
    spawn {
        while (flag) {
            c1.wait() // Error：The `wait` of a conditional variable must be called with a lock held.
        }
        count = count + 1
    }
    m1.lock()
    flag = false
    c1.notifyAll()
    m1.unlock()
}

main() {
    foo1()
    foo2()
    c1.wait()
}
```

In complex thread synchronization scenarios, multiple `Condition` instances may need to be generated for the same lock object. The following example implements a fixed-length bounded `FIFO` queue. When the queue is empty, `get()` blocks; when the queue is full, `put()` blocks.

<!-- compile -->

```cangjie
import std.sync.{Mutex, Condition}

class BoundedQueue {
    // Create a Mutex, two Conditions.
    let m: Mutex = Mutex()
    var notFull: Condition
    var notEmpty: Condition

    var count: Int64 // Object count in buffer.
    var head: Int64  // Write index.
    var tail: Int64  // Read index.

    // Queue's length is 100.
    let items: Array<Object> = Array<Object>(100, {i => Object()})

    init() {
        count = 0
        head = 0
        tail = 0

        synchronized(m) {
          notFull  = m.condition()
          notEmpty = m.condition()
        }
    }

    // Insert an object, if the queue is full, block the current thread.
    public func put(x: Object) {
        // Acquire the mutex.
        synchronized(m) {
          while (count == 100) {
            // If the queue is full, wait for the "queue notFull" event.
            notFull.wait()
          }
         ## The synchronized Keyword

`Lock` provides a convenient and flexible way to acquire locks. However, due to its flexibility, it may lead to issues such as forgetting to unlock or failing to automatically release the lock when an exception is thrown while holding the lock. Therefore, the Cangjie programming language provides a `synchronized` keyword to be used in conjunction with `Lock`. It automatically performs lock acquisition and release operations within its following scope to address such issues.

The following example demonstrates how to use the `synchronized` keyword to protect shared data:

<!-- verify -->

```cangjie
import std.sync.Mutex
import std.collection.ArrayList

var count: Int64 = 0
let mtx = Mutex()

main(): Int64 {
    let list = ArrayList<Future<Unit>>()

    // create 1000 threads.
    for (i in 0..1000) {
        let fut = spawn {
            sleep(Duration.millisecond) // sleep for 1ms.
            // Use synchronized(mtx), instead of mtx.lock() and mtx.unlock().
            synchronized(mtx) {
                count++
            }
        }
        list.add(fut)
    }

    // Wait for all threads finished.
    for (f in list) {
        f.get()
    }

    println("count = ${count}")
    return 0
}
```

The expected output is:

```text
count = 1000
```

By appending a `Lock` instance after `synchronized`, the code block it modifies is protected, ensuring that at most one thread can execute the protected code at any given time:

1. Before entering a `synchronized` block, a thread automatically acquires the lock associated with the `Lock` instance. If the lock cannot be acquired, the current thread is blocked.
2. Before exiting a `synchronized` block, a thread automatically releases the lock associated with the `Lock` instance.

For control transfer expressions (such as `break`, `continue`, `return`, `throw`), when they cause the program execution to exit the `synchronized` block, they also comply with the second rule above—meaning the lock associated with the `synchronized` expression is automatically released.

The following example demonstrates the use of a `break` statement within a `synchronized` block:

<!-- verify -->

```cangjie
import std.sync.Mutex
import std.collection.ArrayList

var count: Int64 = 0
var mtx: Mutex = Mutex()

main(): Int64 {
    let list = ArrayList<Future<Unit>>()
    for (i in 0..10) {
        let fut = spawn {
            while (true) {
                synchronized(mtx) {
                    count = count + 1
                    break
                    println("in thread")
                }
            }
        }
        list.add(fut)
    }

    // Wait for all threads finished.
    for (f in list) {
        f.get()
    }

    synchronized(mtx) {
        println("in main, count = ${count}")
    }
    return 0
}
```

The expected output is:

```text
in main, count = 10
```

In reality, the line `in thread` will not be printed because the `break` statement causes the program execution to exit the `while` loop (before exiting the `while` loop, it first exits the `synchronized` block).

## Thread-Local Variables (ThreadLocal)

Using `ThreadLocal` from the core package, you can create and use thread-local variables. Each thread has its own independent storage space for these thread-local variables. Thus, each thread can safely access its own thread-local variables without interference from other threads.

```cangjie
public class ThreadLocal<T> {
    /* Constructs a Cangjie thread-local variable with an empty value */
    public init()

    /* Gets the value of the Cangjie thread-local variable */
    public func get(): Option<T> // Returns Option<T>.None if the value does not exist. The return value Option<T> represents the value of the thread-local variable.

    /* Sets the value of the Cangjie thread-local variable using 'value' */
    public func set(value: Option<T>): Unit // If Option<T>.None is passed, the value of the local variable will be deleted and cannot be retrieved in subsequent operations. Parameter 'value' - the value to set for the local variable.
}
```

The following example demonstrates how to use the `ThreadLocal` class to create and access thread-local variables for individual threads:

<!-- run -->

```cangjie

main(): Int64 {
    let tl = ThreadLocal<Int64>()
    let fut1 = spawn {
        tl.set(123)
        println("tl in spawn1 = ${tl.get().getOrThrow()}")
    }
    let fut2 = spawn {
        tl.set(456)
        println("tl in spawn2 = ${tl.get().getOrThrow()}")
    }
    fut1.get()
    fut2.get()
    0
}
```

Possible output:

```text
tl in spawn1 = 123
tl in spawn2 = 456
```

Or:

```text
tl in spawn2 = 456
tl in spawn1 = 123
```