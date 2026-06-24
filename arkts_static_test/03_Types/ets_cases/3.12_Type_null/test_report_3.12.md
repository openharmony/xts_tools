# 3.12 Type null - 测试执行报告

**测试日期：** 2026-06-20
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04
**运行脚本：** `03_Types/run_types_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 9 | 9 | 0 | 100% |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **27** | **27** | **0** | **100%** |

---

## 运行时执行验证

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 022 | null 联合类型收窄 | ✅ `if (s == null)` 分支 + string.length 调用 |
| 023 | null 与 undefined 严格不等 | ✅ `null === undefined` 为 false |
| 024 | null 在数组中检测 | ✅ null 元素计数 (2 null + 2 string) |
| 025 | null 在 switch-case 匹配 | ✅ `case null:` 分支正确执行 |
| 026 | 函数返回 null | ✅ findName 返回 null 值 |
| 027 | Any 接受 null | ✅ `Any` 变量持有 null 和非 null 值 |

---

## 详细执行结果

### compile-pass（12个，001~012）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | TYP_03_12_001 | null 字面量声明 `let x: null = null` | ✅ PASS |
| 2 | TYP_03_12_002 | `int \| null` 联合类型声明与赋值 | ✅ PASS |
| 3 | TYP_03_12_003 | `string \| null` 联合类型声明与赋值 | ✅ PASS |
| 4 | TYP_03_12_004 | `Object \| null` 联合类型声明与赋值 | ✅ PASS |
| 5 | TYP_03_12_005 | `T \| null \| undefined` 三重联合 | ✅ PASS |
| 6 | TYP_03_12_006 | 函数返回 `string \| null` | ✅ PASS |
| 7 | TYP_03_12_007 | 函数参数类型 `string \| null` | ✅ PASS |
| 8 | TYP_03_12_008 | `switch` 中 `case null:` | ✅ PASS |
| 9 | TYP_03_12_009 | `Any` 类型变量接受 null | ✅ PASS |
| 10 | TYP_03_12_010 | 类字段 `string \| null = null` | ✅ PASS |
| 11 | TYP_03_12_011 | 数组元素 `(string \| null)[]` | ✅ PASS |
| 12 | TYP_03_12_012 | null 与 undefined 类型不兼容但可共存于联合 | ✅ PASS |

### compile-fail（9个，013~021）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | TYP_03_12_013 | null 赋值给 int/string/boolean/Object | ✅ PASS（编译报错） |
| 2 | TYP_03_12_014 | 类字段非空类型初始化为 null | ✅ PASS（编译报错） |
| 3 | TYP_03_12_015 | 函数参数传 null 给非空类型 | ✅ PASS（编译报错） |
| 4 | TYP_03_12_016 | `Object \| null` 赋值给 `Object` | ✅ PASS（编译报错） |
| 5 | TYP_03_12_017 | `null` 类型变量赋值为数值/字符串/undefined | ✅ PASS（编译报错） |
| 6 | TYP_03_12_018 | `undefined` 赋值给 `null` 类型变量 | ✅ PASS（编译报错） |
| 7 | TYP_03_12_019 | 函数返回 `string` 但返回 null | ✅ PASS（编译报错） |
| 8 | TYP_03_12_020 | `null \| undefined` 传给 `Object` 参数 | ✅ PASS（编译报错） |
| 9 | TYP_03_12_021 | 类字段 `Object` 默认值为 null | ✅ PASS（编译报错） |

### runtime（6个，022~027）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | TYP_03_12_022 | null 联合类型收窄 | 3 | ✅ PASS |
| 2 | TYP_03_12_023 | null !== undefined 严格不等 | 2 | ✅ PASS |
| 3 | TYP_03_12_024 | 数组中 null 元素计数 | 2 | ✅ PASS |
| 4 | TYP_03_12_025 | switch case null | 3 | ✅ PASS |
| 5 | TYP_03_12_026 | 函数返回 null | 2 | ✅ PASS |
| 6 | TYP_03_12_027 | Any 接受 null | 2 | ✅ PASS |

---

## 执行过程异常修复记录

无异常。一次通过率 100%。

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.12_Type_null" bash run_types_cases_wsl.sh
```