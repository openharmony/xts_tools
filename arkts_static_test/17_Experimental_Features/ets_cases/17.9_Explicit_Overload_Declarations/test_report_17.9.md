# 17.9 Explicit Overload Declarations - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04
**运行脚本：** `ets_cases/run_17.9_all_cases.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| **runtime（真实执行）** | **1** | **1** | **0** | **100%** |
| **总计** | **8** | **8** | **0** | **100%** |

---

## 运行时执行验证

`overload` 重载集在编译时按声明顺序解析，运行时调用验证实际执行的是正确的候选函数：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 008 | overload 按声明顺序匹配 int 参数 → fnOne | ✅ overviewLog 副作用计数器确认 fnOne 被调用 |
| 008 | overload 按声明顺序匹配 double 参数 → fnTwo | ✅ overviewLog 副作用计数器确认 fnTwo 被调用 |
| 008 | overload 按声明顺序匹配 string 参数 → fnThree | ✅ overviewLog 副作用计数器确认 fnThree 被调用 |

---

## 详细结果

### compile-pass（5个）
所有合法 overload 声明语法和语义用法均编译通过：

- **EXP2_Overload_BasicFunc_pass**: 基本 overload 函数声明 — 编译时多态，按名称解析，第一个匹配签名的候选胜出
- **EXP2_Overload_MultiEntity_pass**: 一个实体可出现在多个 overload 声明中（`toInt` 同时参与 `conv1` 和 `conv2` 两个重载集）
- **EXP2_Overload_Ordered_pass**: overload 按声明顺序检查匹配，声明顺序影响匹配优先级
- **EXP2_Overload_ExplicitImplicit_pass**: 结合显式重载和隐式重载（带默认参数的函数与显式 overload 结合）
- **EXP2_Overload_Generic_pass**: 泛型函数参与 overload，显式类型参数可缩小候选范围

### compile-fail（2个）
所有违反重载规则的用例均按预期产生编译错误：

- **EXP2_Overload_NoMatchingSignature_fail**: 调用 overload 但 `boolean` 参数不匹配任何候选签名 — 编译时错误
- **EXP2_Overload_SyntaxError_fail**: overload 声明中引用非函数实体（class NotAFunc）— 编译时错误

### runtime（1个）
所有用例真实执行通过：

- **EXP2_Overload_OrderResolution_runtime**: 运行时验证重载解析顺序。通过副作用计数器（`overviewLog`）确认 `multi(int)` 路由到 `fnOne`、`multi(double)` 路由到 `fnTwo`、`multi(string)` 路由到 `fnThree`，所有 3 个断言通过，无异常抛出。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features/ets_cases
bash run_17.9_all_cases.sh
```
