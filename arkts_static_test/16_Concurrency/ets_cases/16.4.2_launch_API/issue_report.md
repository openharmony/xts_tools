# 16.4.2 launch API - Issue Report

> 只记录**当前未解决的编译/执行异常**。一旦异常通过编译器更新而消除，立即从此文件移除。

## 已知 Bug

| # | ID | 用例 | 期望 | 实际 | 严重程度 | 根因分析 |
|---|-----|------|------|------|:--------:|---------|
| 1 | BUG-16.4.2-001 | `launch<T>(async () => { await g(); return val; })` | 编译通过 | **编译器 CRASH（段错误）** | **C 类** | `PromiseTypeArg` 解析时段错误，es2panda 在处理 `launch` + async lambda + `await` 组合时触发内部空指针 |
| 2 | BUG-16.4.2-002 | `launch<T>(async () => { await Promise.resolve(0); return val; })` | 编译通过 | **编译器 CRASH（段错误）** | **C 类** | 同上，显式类型参数 + async lambda + await 同样触发段错误 |

## 受影响的用例

| 文件 | 当前状态 | 路径 |
|------|:-------:|------|
| CCY_16_04_02_003_PASS_launch_async_lambda.ets | compile-pass（编译器 CRASH） | `compile-pass/CCY_16_04_02_003_PASS_launch_async_lambda.ets` |
| CCY_16_04_02_004_PASS_launch_with_type.ets | compile-pass（编译器 CRASH） | `compile-pass/CCY_16_04_02_004_PASS_launch_with_type.ets` |

## Bug 复现条件

- 必须同时满足三个条件才会触发段错误：
  1. `launch<T>(...)` 调用
  2. lambda 使用 `async` 修饰符
  3. lambda 体内包含 `await` 表达式

- 任一条件不满足则正常编译：
  - `launch<T>(() => { return val; })` ✅ 同步 lambda 正常
  - `launch<T>(async () => { return val; })` ✅ async lambda 无 await 正常
  - `launch<void>(() => { ... })` ✅ 无类型参数正常

## 严重程度定义

| 等级 | 说明 |
|:----:|------|
| **C 类** | 编译器崩溃（CRASH）—— 最严重，阻塞该路径所有测试 |
| **D 类** | Spec 与实现不一致 —— 语法支持不足 |

## 临时规避方案

- 当前无法编译 `launch<T>(async () => { await ...; })` 路径（编译器 CRASH）
- 用例保留在 `compile-pass/` 目录，标注 `@expect compile-pass`，但实际运行时编译器段错误
- 可使用同步 lambda 或 async lambda 不含 await 绕过
- 使用 `new Promise<T>(...)` + `await` 替代 `launch` 内部的异步逻辑

## 跟踪记录

| 日期 | 事项 |
|------|------|
| 2026-06-23 | 发现编译器 CRASH，003/004 保留在 compile-pass/ 目录，issue_report 记录 |
| 2026-06-23 | 创建 issue_report.md，详细记录复现条件和影响 |
