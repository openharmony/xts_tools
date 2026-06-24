# 3.2 User-Defined Types - 测试执行报告

**测试日期：** 2026-06-11
**编译器：** es2panda
**运行时：** ark VM + boot files
**运行环境：** WSL2 Ubuntu 22.04

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 11 | 11 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（11个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_CLASS_DECLARE | 类声明、new、成员访问 | PASS |
| 002 | PASS_INTERFACE_DECLARE | 接口声明、implements | PASS |
| 003 | PASS_ENUM_DECLARE | 枚举 int 基类型、成员引用 | PASS |
| 004 | PASS_FUNCTION_TYPE_ALIAS | 函数类型别名（顶层声明） | PASS |
| 005 | PASS_TUPLE_DECLARE | 元组 [int, string, ...] | PASS |
| 006 | PASS_UNION_DECLARE | 联合类型 T1 \| T2 | PASS |
| 007 | PASS_TYPE_PARAM_CLASS | 泛型类（用 MyBox 避开 stdlib） | PASS |
| 008 | PASS_TYPE_PARAM_FUNCTION | 泛型函数 identity<T> | PASS |
| 009 | PASS_LITERAL_TYPE_STRING | 字符串字面量类型 | PASS |
| 011 | PASS_TYPE_ALIAS_USER | 类型别名 Matrix/Handler | PASS |
| 012 | PASS_ENUM_STRING_BASE | 枚举 string 基类型 | PASS |

### compile-fail（11个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 010 | FAIL_NUMERIC_LITERAL_TYPE | 数字/布尔字面量类型不支持 | PASS |
| 013 | FAIL_CLASS_ABSTRACT_INSTANTIATE | 抽象类不能 new | PASS |
| 014 | FAIL_INTERFACE_MISSING_METHOD | 缺失接口方法实现 | PASS |
| 015 | FAIL_ENUM_INVALID_MEMBER | 重复成员/混合基类型 | PASS |
| 016 | FAIL_TUPLE_TYPE_MISMATCH | 元组元素类型不匹配 | PASS |
| 017 | FAIL_UNION_INVALID_ASSIGN | 联合类型赋值不兼容 | PASS |
| 018 | FAIL_TYPE_PARAM_CONSTRAINT | 泛型超出约束 | PASS |
| 019 | FAIL_LITERAL_TYPE_ASSIGN | 字面量值不匹配 | PASS |
| 020 | FAIL_ENUM_NON_EXISTENT | 枚举不存在的成员 | PASS |
| 025 | FAIL_FUNCTION_TYPE_INVALID | 函数类型签名不兼容 | PASS |
| 026 | FAIL_TYPE_ALIAS_RECURSIVE | 类型别名循环引用 | PASS |

### runtime（8个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 021 | RUNTIME_CLASS_INHERITANCE | super 调用、多态分发 | 3 | PASS |
| 022 | RUNTIME_ENUM_METHODS | values()/fromValue()/getName() | 5 | PASS |
| 023 | RUNTIME_UNION_INSTANCEOF | 联合类型 instanceof 收窄 | 3 | PASS |
| 024 | RUNTIME_TUPLE_ACCESS | 元组索引访问与修改 | 5 | PASS |
| 027 | RUNTIME_INTERFACE_DISPATCH | 接口多态方法分发 | 3 | PASS |
| 028 | RUNTIME_LITERAL_TYPE_CHECK | 字面量类型运行时值 | 4 | PASS |
| 029 | RUNTIME_GENERIC_INSTANTIATE | 泛型实例化、多类型参数 | 6 | PASS |
| 030 | RUNTIME_FUNCTION_TYPE_INVOKE | 高阶函数（filter/reduce） | 4 | PASS |

---

## 执行过程异常修复记录

首次运行有 10 个用例失败，已修复，详见 `03_Types/issue_report.md` ISS-001 ~ ISS-006。

### 关键修复总览

| 问题 | 涉及用例 | 处理方式 |
|------|---------|---------|
| 嵌套函数禁止 | 003、006、008、009、010 | 嵌套函数提到顶层 |
| 局部 type alias 禁止 | 004、009、010、011 | type alias 提到顶层 |
| 局部类禁止 | 007、010 | 局部类提到顶层 |
| stdlib 含 Box 类 | 007、029 | 用例改名 MyBox/Container |
| **数字字面量类型不支持** | 010 | 改为反向用例 FAIL |
| **enum.values() 返回 FixedArray** | 022 | 改用 FixedArray<T> 接收 |

---

## 后续运行

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.2_User_Defined_Types" bash run_types_cases_wsl.sh
```