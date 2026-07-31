# 16 并发示例

ArkTS 并发（Concurrency）的参考示例，覆盖 16_Concurrency 章节中的核心并发语法和 API。

---

## Async 函数

```ets
// async 函数声明
async function fetchData(): Promise<string> {
    return "data";
}

// async 函数中可使用 await
async function process(): Promise<void> {
    let result: string = await fetchData();
    console.log(result);
}
```

## Async 函数调用

```ets
// 调用 async 函数返回 Promise
let p: Promise<string> = fetchData();

// 在 async 函数中 await
async function main(): Promise<void> {
    let data: string = await fetchData();
    console.log(`Data: ${data}`);
}
```

## launch 并行执行

```ets
import { launch } from "arkts:concurrency";

// 启动一个并行任务
async function compute(): Promise<void> {
    let result = await launch<number>(async () => {
        return 42;
    });
    console.log(`Result: ${result}`);
}
```

## Worker

```ets
import { Worker } from "arkts:concurrency";

// 创建 Worker 并执行任务
async function runWorker(): Promise<void> {
    let worker = new Worker("path/to/worker.ets");
    worker.postMessage("task");
    let result = await worker.onMessage();
    console.log(`Worker result: ${result}`);
    worker.terminate();
}
```

## 异步锁（Asynchronous Lock）

```ets
import { AsyncLock } from "arkts:concurrency";

let lock = new AsyncLock();

async function criticalSection(): Promise<void> {
    await lock.lock();
    try {
        // 临界区代码
        console.log("locked section");
    } finally {
        lock.unlock();
    }
}
```

## 异步读写锁（Asynchronous ReadWrite Lock）

```ets
import { AsyncReadWriteLock } from "arkts:concurrency";

let rwLock = new AsyncReadWriteLock();

async function readData(): Promise<void> {
    await rwLock.readLock();
    try {
        // 读操作
    } finally {
        rwLock.readUnlock();
    }
}

async function writeData(): Promise<void> {
    await rwLock.writeLock();
    try {
        // 写操作
    } finally {
        rwLock.writeUnlock();
    }
}
```

## 原子操作（Atomic Operations）

```ets
import { AtomicInt32, AtomicInt64, AtomicBool } from "arkts:concurrency";

// 原子整数
let counter = new AtomicInt32(0);
counter.add(1);       // 原子加
let val = counter.get();  // 原子读

// 原子布尔
let flag = new AtomicBool(false);
flag.set(true);       // 原子写
let b = flag.get();   // 原子读
```

## 条件变量（ConditionVariable）

```ets
import { AsyncLock, ConditionVariable } from "arkts:concurrency";

let lock = new AsyncLock();
let cond = new ConditionVariable();

async function waiter(): Promise<void> {
    await lock.lock();
    try {
        await cond.wait(lock);  // 等待条件满足
        console.log("woken up");
    } finally {
        lock.unlock();
    }
}

async function signaler(): Promise<void> {
    await lock.lock();
    try {
        cond.signal();  // 唤醒一个等待者
    } finally {
        lock.unlock();
    }
}
```

## 编译错误示例

```ets
// 错误 1：非 async 函数中使用 await
// function foo(): void {
//     await fetchData();  // 编译错误：await 只能在 async 函数中使用
// }

// 错误 2：launch 中缺少 async
// launch<number>(() => {
//     await fetchData();  // 编译错误：非 async lambda 中使用 await
// });

// 错误 3：锁重复获取
// async function deadlock(): Promise<void> {
//     await lock.lock();
//     await lock.lock();  // 编译错误或运行时死锁
// }

// 错误 4：未释放锁
// async function missingUnlock(): Promise<void> {
//     await lock.lock();
//     // 未调用 lock.unlock() 导致锁泄漏
// }
```
