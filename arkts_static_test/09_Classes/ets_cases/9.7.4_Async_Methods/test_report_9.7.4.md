# 9.7.4 异步方法 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `09_Classes/run_classes_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 9 | 9 | 0 | 100% |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **21** | **21** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（6/6 通过）

验证合法的 async 方法声明可通过编译：

- **CLS_09_07_014_PASS_ASYNC_METHOD_BASIC** -- 异步方法基本用法：async 修饰符，返回 Promise\<T\>，await 表达式调用。
- **CLS_09_07_042_PASS_ASYNC_RETURN_PROMISE** -- async 方法返回 Promise。`fetch(): Promise<string>` 返回字符串字面量，编译器自动包装为 Promise。
- **CLS_09_07_045_PASS_ASYNC_STATIC** -- static async 方法声明，验证 static 与 async 可合法共存。
- **CLS_09_07_046_PASS_ASYNC_RETURN_T** -- async 方法返回非 Promise 的 T，自动装箱为 Promise\<T\>。
- **CLS_09_07_048_PASS_ASYNC_VOID_RETURN** -- async 方法返回 void，方法体无 return 语句合法。
- **CLS_09_07_060_PASS_ASYNC_FINAL_METHOD** -- final async 方法被编译器接受（spec 未禁止 final+async 组合，es2panda 正确编译）。

### compile-fail（9/9 通过）

验证不合法 async 声明的编译期报错：

- **CLS_09_07_043_FAIL_ASYNC_ABSTRACT** -- 抽象类中 declare `abstract async foo(): void`，async + abstract 不可共存。
- **CLS_09_07_047_FAIL_ASYNC_WRONG_PROMISE_SIG** -- async 方法返回 Promise 但 Promise 构造函数签名不匹配（应传 `(resolve, reject) => void`）。
- **CLS_09_07_049_FAIL_ASYNC_OVERLOAD** -- async 方法不支持方法重载（overload 签名）。
- **CLS_09_07_050_FAIL_ASYNC_NON_PROMISE_RETURN** -- async 方法返回类型非 `Promise<T>`，如 `int` 或 `string`。
- **CLS_09_07_051_FAIL_ASYNC_NATIVE** -- async + native 修饰符不可共存。
- **CLS_09_07_052_FAIL_ASYNC_STATIC_FINAL** -- static final async 修饰符组合冲突检查。
- **CLS_09_07_053_FAIL_ASYNC_OVERRIDE_WRONG_SIG** -- override async 方法签名与父类不匹配（类型不同）。
- **CLS_09_07_054_FAIL_ASYNC_NON_ABSTRACT_EMPTY_BODY** -- 非 abstract 非 native 的 async 方法缺少方法体（仅有分号体）。
- **CLS_09_07_061_FAIL_ASYNC_OVERRIDE_WITHOUT_ASYNC** -- override 方法缺少 async 修饰符，与父类 async 方法不一致。

### runtime（6/6 — ark VM 真实执行 + assert）

验证 async 方法在 ark VM 上的运行时行为：

- **CLS_09_07_044_RUNTIME_ASYNC_CALL** -- 基本运行时 async 方法调用，`getData(): Promise<int>` 返回 42，`console.log("verified")` 确认执行。
- **CLS_09_07_055_RUNTIME_ASYNC_AWAIT_PROMISE** -- async 方法中 await Promise 解析，获取 Promise 包装值并验证正确性。
- **CLS_09_07_056_RUNTIME_ASYNC_STATIC_CALL** -- 通过类名调用 static async 方法，await 获取结果。编译通过，ark VM 正确执行。
- **CLS_09_07_057_RUNTIME_ASYNC_MULTIPLE_AWAITS** -- async 方法中包含多个 await 挂起点，按序挂起并恢复，验证 async 方法的挂起/恢复语义。
- **CLS_09_07_058_RUNTIME_ASYNC_CHAIN** -- async 方法链式调用：方法 A 调用方法 B，均 async/await，验证调用链完整性和值传递。
- **CLS_09_07_059_RUNTIME_ASYNC_INSTANCE_METHOD** -- 实例 async 方法通过对象字段访问并 await，验证实例方法上下文正确性。

---

## 覆盖率总结

| 测试维度 | 覆盖情况 |
|---------|---------|
| async + static | ✅ CLS_09_07_045 / CLS_09_07_056 |
| async + final | ✅ CLS_09_07_060 |
| async + override | ✅ CLS_09_07_053 / CLS_09_07_061 |
| async + native | ❌ 禁止 → CLS_09_07_051 |
| async + abstract | ❌ 禁止 → CLS_09_07_043 |
| await 基本解析 | ✅ CLS_09_07_055 |
| 多 await 挂起 | ✅ CLS_09_07_057 |
| 链式调用 | ✅ CLS_09_07_058 |
| 实例方法调用 | ✅ CLS_09_07_059 |
| 静态方法调用 | ✅ CLS_09_07_056 |
| 返回类型装箱 | ✅ CLS_09_07_046 / CLS_09_07_048 |
| 方法重载 | ❌ 不支持 → CLS_09_07_049 |

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.4_Async_Methods" bash run_classes_cases_wsl.sh
```
