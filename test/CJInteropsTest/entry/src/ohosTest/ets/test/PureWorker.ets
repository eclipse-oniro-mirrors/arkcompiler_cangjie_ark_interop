import { ErrorEvent, MessageEvents, ThreadWorkerGlobalScope, worker } from "@kit.ArkTS";
import { requireCJLib } from "libark_interop_loader.so";

const workerPort: ThreadWorkerGlobalScope = worker.workerPort;

interface PureLib {
    runPureTests(): Promise<void>
}

workerPort.onmessage = async (event: MessageEvents) => {
    interface Res {
        data: string;
    }

    let req = event.data as Res;
    if (req.data === "start") {
        let lib = requireCJLib("libentry.pure.so") as PureLib;
        await lib.runPureTests();
        let res: Res = { data: "end" };
        workerPort.postMessage(res);
    }
};