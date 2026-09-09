package ohos_app_cangjie_entry

import std.reflect.ClassTypeInfo
import std.reflect.InstanceFunctionInfo
import std.reflect.InvocationTargetException
import std.random.Random
import std.collection.ArrayList
import std.sync.AtomicInt64
import kit.PerformanceAnalysisKit.Hilog
import ohos.ark_interop.JSContext
import ohos_app_cangjie_entry.utils.*

public class TestInstance {
    var testClassInstance: KitTest
    var methodInfo: InstanceFunctionInfo
    var apiName: String

    public init(instance: KitTest, methodInfo: InstanceFunctionInfo, apiName: String) {
        this.testClassInstance = instance
        this.methodInfo = methodInfo
        this.apiName = apiName
    }
}

public class TestInit {
    var testInstancePool: ArrayList<TestInstance>
    let globalSeed: UInt64
    public let sandboxFile: String
    var currentApiIndex: AtomicInt64 = AtomicInt64(0)
    var iterCounter: AtomicInt64 = AtomicInt64(0)

    public init(jsContext: JSContext, moduleKeys: Array<String>, sandboxFile: String, seed: UInt64) {
        this.testInstancePool = ArrayList<TestInstance>()
        this.globalSeed = seed
        this.sandboxFile = sandboxFile
        this.currentApiIndex = AtomicInt64(0)
        this.iterCounter = AtomicInt64(0)

        for (moduleKey in moduleKeys) {
            match (testModuleRegistry.get(moduleKey)) {
                case Some(factory) =>
                    let instance = factory(jsContext, sandboxFile)
                    let typeInfo = ClassTypeInfo.of(instance)
                    let methodNames = instance.getTestMethodNames()

                    for (methodName in methodNames) {
                        try {
                            let funcInfos = typeInfo.getInstanceFunctions(methodName)
                            if (funcInfos.size > 0) {
                                let funcInfo = funcInfos[0]
                                let ti = TestInstance(instance, funcInfo, methodName)
                                testInstancePool.add(ti)
                            }
                        } catch (e: Exception) {
                            Hilog.error(1, "HybridTest", "Failed to get method ${methodName}: ${e}")
                        }
                    }
                case None =>
                    Hilog.error(1, "HybridTest", "Module ${moduleKey} not found in registry")
            }
        }
    }

    public func getInstanceArrSize(): Int64 {
        testInstancePool.size
    }

    public func run(threadId: Int64, isRandom: Bool, exceptionRatio: Float64): String {
        if (testInstancePool.size == 0) { return "" }

        let iterCount = iterCounter.fetchAdd(1)
        let threadSeed = RandomUtil.mixSeed(globalSeed, UInt64(threadId), callSeq: iterCount)
        let rng = Random(threadSeed)

        let poolSize = testInstancePool.size
        let ti: TestInstance = if (isRandom) {
            let idx = rng.nextInt64(poolSize)
            testInstancePool[idx]
        } else {
            let idx = currentApiIndex.fetchAdd(1) % poolSize
            testInstancePool[idx]
        }

        let apiSeed = rng.nextInt64(Int64(UInt32.Max) + 1)
        let seedUInt32 = UInt32(apiSeed)
        let shouldInjectFault = exceptionRatio > 0.0 && rng.nextFloat64() < exceptionRatio
        let faultType = if (shouldInjectFault) { rng.nextInt64(3) } else { Int64(-1) }

        ti.testClassInstance.currentSeed = seedUInt32
        ti.testClassInstance.currentThreadId = threadId
        ti.testClassInstance.currentIterCount = iterCount
        ti.testClassInstance.currentFaultType = faultType
        ti.testClassInstance.currentIsRandom = isRandom
        ti.testClassInstance.currentExceptionRatio = exceptionRatio

        try {
            if (shouldInjectFault) {
                match (faultType) {
                    case 0 =>
                        let badArgs: Array<Any> = [seedUInt32, exceptionRatio * -1.0]
                        ti.methodInfo.apply(ti.testClassInstance, badArgs)
                    case 1 =>
                        let maxSeed = UInt32(999999999)
                        let badArgs: Array<Any> = [maxSeed, exceptionRatio]
                        ti.methodInfo.apply(ti.testClassInstance, badArgs)
                    case _ =>
                        let badArgs: Array<Any> = [seedUInt32, exceptionRatio * 2.0]
                        ti.methodInfo.apply(ti.testClassInstance, badArgs)
                }
            } else {
                let args: Array<Any> = [seedUInt32, exceptionRatio]
                ti.methodInfo.apply(ti.testClassInstance, args)
            }
        } catch (e: InvocationTargetException) {
            Hilog.error(1, "HybridTest", "Target exception for ${ti.apiName} (fault=${shouldInjectFault}): ${e}")
            if (!shouldInjectFault) {
                ti.testClassInstance.writeLog(ti.apiName, "InvocationTarget", e.message)
            }
        } catch (e: Exception) {
            Hilog.error(1, "HybridTest", "Reflection call failed for ${ti.apiName} (fault=${shouldInjectFault}): ${e}")
            if (!shouldInjectFault) {
                ti.testClassInstance.writeLog(ti.apiName, "ReflectionError", e.message)
            }
        }

        return ti.apiName
    }

    public func close(): Unit { }
}
