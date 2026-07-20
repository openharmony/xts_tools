# 14 Ambient Declarations Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后全量编译验证：2026-07-17，es2panda `--extension=ets`。

| ID          | Case                 | Symptom                            | Expected           | Actual         | Status     |
| ----------- | -------------------- | ---------------------------------- | ------------------ | -------------- | ---------- |
| D-14.3-01   | AMB_14_03_008        | Overload 重载等价签名检查缺失                | compile-time error | 编译通过           | D类-Spec不一致 |
| D-14.3-02   | AMB_14_03_009        | Overload 空重载集检查缺失                  | compile-time error | 编译通过           | D类-Spec不一致 |
| D-14.3-03   | AMB_14_03_011        | Overload 引用非 declare 函数检查缺失        | compile-time error | 编译通过           | D类-Spec不一致 |
| D-14.6-01   | AMB_14_06_006/007    | Ambient enum 成员初始化器检查缺失            | compile-time error | 编译通过           | D类-Spec不一致 |

### 异常详情

**D-14.3-01** MEDIUM — Overload 重载等价签名检查缺失

- **问题描述：** ArkTS spec 要求 `declare overload` 中两个函数的参数类型完全相同（overload-equivalent）时产生 compile-time error，但当前编译器允许
- **复现用例 ID：** AMB_14_03_008_FAIL_OVERLOAD_DUPLICATE_SIG
- **2026-07-17 复测：** 仍 ACCEPTED，未修复
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

**D-14.3-02** LOW — Overload 空重载集检查缺失

- **问题描述：** `declare overload foo {}` 空集当前编译通过，spec 要求 compile-time error
- **复现用例 ID：** AMB_14_03_009_FAIL_OVERLOAD_EMPTY_SET
- **2026-07-17 复测：** 仍 ACCEPTED，未修复
- **严重性：** LOW
- **分类：** D 类（Spec 与实现不一致）

**D-14.3-03** MEDIUM — Overload 引用非 declare 函数检查缺失

- **问题描述：** `declare overload` 引用普通函数（非 declare）当前编译通过，spec 要求 compile-time error
- **复现用例 ID：** AMB_14_03_011_FAIL_OVERLOAD_REF_NON_AMBIENT
- **2026-07-17 复测：** 仍 ACCEPTED，未修复
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

**D-14.6-01** MEDIUM — Ambient enum 成员初始化器检查缺失

- **问题描述：** ArkTS spec 要求 ambient enum 成员不能有初始化器，但编译器允许
- **复现用例 ID：** AMB_14_06_006_FAIL_MEMBER_INITIALIZER, AMB_14_06_007_FAIL_MIXED_INITIALIZER
- **2026-07-17 复测：** 仍 ACCEPTED，未修复
- **严重性：** MEDIUM
- **分类：** D 类（Spec 与实现不一致）

### 已解决问题

**~~D-14.7.1-01~~** ❌ 未修复 — declare namespace 与 namespace 合并

- 原问题：编译器拒绝 `declare namespace A {}` + `namespace A {}`，报 "Unable to merge namespaces"
- **2026-07-17 复测：** 编译器仍拒绝合并，报 ESY0006。用例 `AMB_14_07_01_001_PASS_IMPLEMENT_SAME_NAME` 在 compile-pass 目录，但编译失败（ESY0006）。
- 此前误判为已修复（文件在 compile-pass 目录但实际编译未通过）。实际仍为 D 类未修复。

**~~D-14.1-01/02~~** ✅ 已修复 — Ambient 声明初始化器和类型注解检查

- 编译器已正确强制执行两个约束，2026-06-26 和 2026-07-17 两轮复测均通过。

## 整改建议

### 1. Overload 声明校验（D-14.3-01/02/03）

编译器应增加对 `declare overload` 的校验：
- **重载等价签名**：两个函数的参数类型完全相同 → compile-time error
- **空重载集**：`declare overload foo {}` → compile-time error
- **target 必须是 declare function**：overload 列表中的函数必须是 `declare function`，不能引用普通函数

> Java 和 Swift 均对重载等价签名报错，建议对齐。

### 2. Enum 成员初始化器校验（D-14.6-01）

编译器应增加对 ambient enum 成员的校验：
- `declare enum E { A = 5 }` → compile-time error
- Java 和 Swift 均允许，但 ArkTS spec 限制临时禁止
