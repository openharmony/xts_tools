# 16 Concurrency Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|:---|------|--------|---------|--------|--------|
| CONC-G2 | CCY_16_04_04_020~023_FAIL_taskpool_* | `taskpool.execute()` 参数合法性未被编译器拒绝 | compile-fail | 编译通过（应报错） | C类-边界未拒绝 |
| CONC-A4 | 16.5.5 Atomic（4） | `AtomicInt`/`AtomicBoolean`/`AtomicReference` 使用 `native` 方法，运行时未链接 | compile-pass/runtime | `type does not exist` | C类-标准库native未链接 |
| CONC-A5 | 16.5.6 Concurrent（2） | `ConcurrentMap` 不存在（最近为 `std.containers.ConcurrentHashMap`） | compile-pass/runtime | `Cannot find type` | C类-标准库不存在 |
| CONC-B1 | 16.6.3~16.6.5 部分用例 | `Promise<T>` 泛型参数无法推断 | compile-pass | 编译失败（2026-07复测部分用例已通过） | C类-泛型推导 |
| CONC-B2 | 16.6.1_001 | `launch(() => Promise<Double>)` 签名不匹配（Spec §16.4.2 支持异步lambda） | compile-pass | 编译失败 | C类-类型推导 |
| CONC-C1 | 16.7.1_001 | `setTimeout`/`Promise` 回调签名与当前编译器版本不一致 | compile-pass | 编译失败 | C类-API签名变更 |
| CONC-SCHED-01 | §16.7.1 | 调度优先级(协程>其余)和FIFO顺序未验证 | runtime | 无测试 | C类-运行时环境未就绪 |
| CONC-PROM-01 | §16.6.3 | Promise回调跨工作线程执行顺序 | runtime | 无测试 | C类-运行时环境未就绪 |
| CONC-UNHANDLED-01 | §16.6.4 | 未处理拒绝跨工作线程语义 | runtime | 无测试 | C类-运行时环境未就绪 |

---

### CONC-G2 — Taskpool 运行时线程不终止（编译通过，运行时 hang）⭐⭐⭐ HIGH

**涉及文件：** `CCY_16_04_04_020~023_FAIL_taskpool_*`

**问题描述：**
`taskpool.execute()` 创建真实 worker 线程执行任务，当前 4 个 runtime 用例均在输出 "verified" 后进程不退出（exit 124 timeout）。

**Spec 依据：** §16.4.4 Taskpool API — 定义 `taskpool.execute()`、`Task`、`TaskGroup` 等并行执行 API。

**源码分析：** 标准库源码位于 `demo/stdlib/std/concurrency/taskpool.ets`

**1. Worker 线程模型**
`GlobalQueueWorker` 继承自 `EAWorker`（真实 OS 线程），其主体循环在 `workerBody()` 中：
```typescript
// taskpool.ets:326
private workerBody() {
    while (this.isWorkerActive()) {   // ← 只要 active 就一直运行
        // 等待新任务、执行任务
    }
}
```

**2. 线程保持活跃的机制**
```typescript
// taskpool.ets:442-449
ConcurrencyHelpers.lockGuard(workersMutex, () => {
    let readyWorkersNum: int = 0;
    for (let w: GlobalQueueWorker of workers) {
        if (w.isReadyForTask()) {
            readyWorkersNum++;
        }
    }
    // 至少保留 WORKERS_MINIMUM 个线程
    canRetire = workers.size - readyWorkersNum > WORKERS_MINIMUM;
});
```
线程池保持至少 `WORKERS_MINIMUM` 个活跃线程，即使没有待执行任务。

**3. 缺少全局终止 API**
```typescript
// taskpool.ets:380
closeWorker(): void {
    this.setWorkerActive(false);      // 单个 worker 终止
}

// taskpool.ets:787
stopManagerWorker(): void {
    // 仅内部调用，非公开 API
}

// taskpool.ets:2898
export function terminateTask(longTask: LongTask): void {}  // 空实现！
```
存在 `stopManagerWorker()` 和 `closeWorker()`，但均**不是公开 API**。`terminateTask()` 是空函数。**没有任何方式可以从外部关闭整个线程池。**

**4. 运行时行为验证**
```bash
$ timeout 10 ark ... CCY_16_04_04_020_FAIL_taskpool_execute_task/ETSGLOBAL::main
verified
Exit: 124   # 输出 "verified" 后进程不退出，被 timeout 杀死
```

**跨语言对比：**

| 维度 | ArkTS 标准库 | Java | Swift |
|------|:----------:|:----:|:-----:|
| 线程池类型 | `taskpool` (GlobalQueueWorker) | `ForkJoinPool` / `ExecutorService` | `TaskPool` (Swift Concurrency) |
| 默认线程数 | 至少 WORKERS_MINIMUM 常驻 | 根据 CPU 核数自动调整 | 由全局调度器管理 |
| 程序退出行为 | **❌ 线程阻止进程退出** | ✅ `ExecutorService` 非守护线程 | ✅ 全局调度器自动管理 |
| 终止 API | ❌ 无公开 shutdown API | ✅ `executor.shutdown()` | ✅ 超出作用域自动取消 |
| terminateTask | ❌ 空函数 | ✅ `Future.cancel()` | ✅ `Task.cancel()` |

**根因：** `taskpool` 的 worker 线程不是守护线程（daemon），在 `main()` 结束后仍存活。Java 的 `ForkJoinPool` 和 Swift 的全局调度器都有机制在程序出口自动终止或允许进程退出，但 ArkTS taskpool 缺少这一机制。

**修复建议：**
1. 编译器团队在 taskpool 标准库中添加全局 shutdown API（如 `taskpool.shutdown()`）
2. 或将 worker 线程改为守护线程，允许进程在 main 结束后退出
3. 短期：在测试 main() 末尾添加显式的 task 清理或线程终止调用（当前无可用 API，不可行）

---
### CONC-A4 — Atomic 类型（AtomicInteger/AtomicBoolean/AtomicReference）未定义（§16.5.5）⭐⭐⭐ HIGH

**涉及文件（4 个）：** `16.5.5_Atomic_Operations/` 下全部 compile-pass（1）和 runtime（3）用例

**Spec 依据：** §16.5.5 Atomic operations（spec_original.md:1041-1045）
> "ArkTS standard library provides a set of classes that support atomic operations. The intended use cases for them are lock free data structures and algorithms: from simple compare-and-swap and spinlocks to complex containers."

**实测结果：**
```typescript
let atomicInt: AtomicInteger = new AtomicInteger(0);
// ^ Semantic error ESE0371: Cannot find type 'AtomicInteger'

let atomicBool: AtomicBoolean = new AtomicBoolean(false);
// ^ Semantic error ESE0371: Cannot find type 'AtomicBoolean'

atomicInt.increment();
// ^ Semantic error ESE0087: Property 'increment' does not exist on type 'AtomicBoolean'
// （AtomicBoolean 也不存在，编译器 fallback 为 unknown 类型）
```

**跨语言对比：**
| 维度 | ArkTS Spec | ArkTS 编译器 | Java | Swift |
|------|:----------:|:-----------:|:----:|:-----:|
| 原子整型 | `AtomicInt` / `AtomicInteger` | ❌ **不存在** | `java.util.concurrent.atomic.AtomicInteger` | `SwiftAtomics.AtomicInt` |
| 原子布尔 | `AtomicBoolean` | ❌ **不存在** | `AtomicBoolean` | `ManagedAtomic<Bool>` |
| 原子引用 | `AtomicReference` | ❌ **不存在** | `AtomicReference<V>` | `ManagedAtomic<UnsafeMutablePointer>` |
| CAS 操作 | `compareAndSet(expected, new)` | ❌ | ✅ `compareAndSet` | ✅ `compareExchange` |
| increment | `increment()` | ❌ | ✅ `incrementAndGet()` | ✅ `wrappingIncrement()` |

**影响：** 无锁数据结构（lock-free）和无等待算法（wait-free）的验证完全阻塞。

---

### CONC-A5 — `ConcurrentMap` / `ConcurrentSet` 标准库类型未定义（§16.5.6）⭐⭐⭐ HIGH

**涉及文件（2 个）：** `16.5.6_Additional_Entities/` 下 compile-pass（1）和 runtime（1）用例

**Spec 依据：** §16.5.6 Additional entities（spec_original.md:1057-1067）
> "The ArkTS standard library provides various additional classes and APIs that help developers to build safe and efficient concurrent programs. Such classes include: **thread safe concurrent containers**, APIs that operate on worker thread-local data, other helpers."

**实测结果：**
```typescript
let map: ConcurrentMap<string, number> = new ConcurrentMap<string, number>();
// ^ Semantic error ESE0371: Cannot find type 'ConcurrentMap'
```

**跨语言对比：**
| 维度 | ArkTS Spec | ArkTS 编译器 | Java | Swift |
|------|:----------:|:-----------:|:----:|:-----:|
| 并发 Map | `ConcurrentMap<K,V>` | ❌ **不存在** | `ConcurrentHashMap<K,V>` | `OS_dispatch_queue` + `Dictionary` |
| set/get | `map.set(key, val)` / `map.get(key)` | ❌ | `map.put(k, v)` / `map.get(k)` | `dict[key] = val` / `dict[key]` |
| 线程安全 | 是 | ❌ | ✅ | ✅ |

---

---

### CONC-B1 — `Promise<T>` 泛型参数缺失 ⭐⭐ MEDIUM

**涉及文件：** `CCY_16_06_03_001/002/003`, `CCY_16_06_04_001`, `CCY_16_06_05_001`

**问题描述：**
部分 Promise 相关用例在调用 `Promise` 构造函数时未提供类型实参，如 `new Promise((resolve, reject) => { ... })`。当前编译器要求显式指定泛型参数 `Promise<T>`，不符合 spec 的类型推断要求。

**Spec 依据：** §16.3.5 定义 Promise 为泛型类，其类型参数应能从构造函数参数中推断：
> "Promise<T> is a generic class..." — 泛型类的类型参数在提供构造参数时应可推断。

**实测结果：**
```typescript
let p = new Promise((resolve: (v: number) => void) => { resolve(42); });
// ^ Semantic error ESE0170: Type 'Promise<T>' is generic but type argument were not provided.
```

**跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| 构造 Promise 不指定类型参数 | 应推断 | ❌ **拒绝** | ✅ `new CompletableFuture<>()` 可推断 | ✅ `Task { 42 }` 可推断 |

**建议：** 补充 `new Promise<number>(...)` 显式类型参数即可绕过，或等待编译器实现类型推断。

---

### CONC-B2 — `launch` API 闭包类型签名不匹配 ⭐⭐ MEDIUM

**涉及文件：** `CCY_16_06_01_001_PASS_launch_details`

**问题描述：**
用例传递一个 `async` lambda 给 `launch`，但编译器拒绝接受异步闭包作为 launch 的参数。

**Spec 依据：** §16.4.2 明确支持 launch 接受同步和异步 lambda（spec_original.md:345）：
> "The launch API is the primary parallel execution API. It launches the provided lambda (synchronous or asynchronous) as a new job."
> "full explicit form: launch<T>(async () => { ... })"

**实测结果：**
```typescript
let p: Promise<number> = launch<number>(async () => { return 42; });
// ^ Semantic error ESE0127: No matching call signature for launch((() => Promise<Double>))
// ^ Type '(() => Promise<Double>)' is not compatible with type '(() => Double)' at index 1
```

**跨语言对比：**

| 行为 | ArkTS 规范 | ArkTS 编译器 | Java | Swift |
|------|:---------:|:-----------:|:----:|:-----:|
| launch 异步 lambda | ✅ `launch(async () => val)` | ❌ **签名不匹配** | ✅ `supplyAsync(() -> val)` | ✅ `Task { await ... }` |
| launch 同步 lambda | ✅ `launch(() => val)` | ✅ | ✅ | ✅ |

**建议：** 确认 launch 的 API 签名是否支持 async 闭包的重载版本，可能需要编译器团队修正 launch 重载决议。

---

### CONC-C1 — `setTimeout` / `Promise` 构造回调类型签名不匹配 🟡 LOW

**涉及文件：** `CCY_16_07_001_PASS_placeholder`

**问题描述：**
`setTimeout` 和 `Promise` 构造函数的回调参数类型签名与当前编译器版本的实际定义不一致，导致 type mismatch。

**Spec 依据：** §16.7 运行时实现细节 — setTimeout 的回调应为 `() => void` 类型。

**实测结果：**
```typescript
new Promise<string>((resolve: (s: string) => void) => {
    setTimeout(resolve, 1000);
});
// ^ Semantic error ESE0127: No matching construct signature for Promise(...)
// ^ Type '((p1: PromiseLike<undefined>|undefined) => undefined)' is not compatible with type 'String'
```

**建议：** 确认当前编译器中 `setTimeout` 和 `Promise` 构造函数的实际签名，修正用例中的回调类型以匹配。

---

### 说明

1. **C 类异常**：编译器实现 bug / 编译器崩溃，指编译器未实现 Spec 要求的功能或触发段错误
2. **D 类异常**：Spec 待废弃特性/跨语言差异，当前不作为执行失败。D 类问题记录在 `design_issues_report_XX.md` 中，不在此文件追踪
3. **跨语言对比**：每个异常必须提供 ArkTS + Java + Swift 的对比分析
