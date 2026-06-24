# 3.3 Using Types - 测试执行报告

**测试日期：** 2026-06-11
**编译器：** es2panda
**运行时：** ark VM + boot files
**运行环境：** WSL2 Ubuntu 22.04
**对应规范：** ArkTS Static Spec §3.3 Using Types

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **27** | **27** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（12个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_PREDEFINED_TYPE_REF | 预定义类型名做类型引用 | PASS |
| 002 | PASS_USER_TYPE_REF | 类/接口/枚举做类型引用 | PASS |
| 003 | PASS_GENERIC_TYPE_REF | 泛型类型引用 Holder<T>、嵌套 | PASS |
| 004 | PASS_TYPE_ALIAS_REF | type alias 做类型引用 | PASS |
| 005 | PASS_INPLACE_ARRAY | 就地数组类型 T[]/Array<T>/readonly | PASS |
| 006 | PASS_INPLACE_TUPLE | 就地元组类型 [T1, T2] | PASS |
| 007 | PASS_INPLACE_FUNCTION | 就地函数类型 (x) => R | PASS |
| 008 | PASS_INPLACE_UNION | 就地联合类型 T1\|T2 | PASS |
| 009 | PASS_KEYOF_TYPE | keyof C 类型 | PASS |
| 010 | PASS_PARENTHESES_PRIORITY | 4 种括号优先级正确用法 | PASS |
| 011 | PASS_STRING_LITERAL_INPLACE | 字符串字面量做就地类型 | PASS |
| 012 | PASS_TYPE_IN_PARENTHESES | (type) 括号包裹类型 | PASS |

### compile-fail（10个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 013 | FAIL_UNDEFINED_TYPE_REF | 引用未定义类型 | PASS |
| 014 | FAIL_VARIABLE_AS_TYPE | 变量名作类型 | PASS |
| 015 | FAIL_GENERIC_WRONG_ARITY | 泛型参数数量不匹配 | PASS |
| 016 | FAIL_NULLISH_TO_NONNULLISH_ARRAY | (string\|undefined)[]=undefined | PASS |
| 017 | FAIL_NULLISH_TO_UNION_ARRAY | string\|undefined[]=undefined | PASS |
| 018 | FAIL_NULLISH_TO_FUNCTION | ()=>string\|undefined=undefined | PASS |
| 019 | FAIL_ANNOTATION_NO_PARENTHESES | 注解前缺 () | PASS |
| 020 | FAIL_KEYOF_INVALID_VALUE | keyof C 不接受非字段名 | PASS |
| 021 | FAIL_TUPLE_ARITY | 元组元素数量不匹配 | PASS |
| 022 | FAIL_INPLACE_FUNCTION_SIGNATURE | 就地函数签名不兼容 | PASS |

### runtime（5个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 023 | RUNTIME_PARENTHESES_PRIORITY | 4 种括号优先级运行时语义 | 8 | PASS |
| 024 | RUNTIME_TYPE_ALIAS_TRANSPARENT | type alias 与底层类型互换 | 2 | PASS |
| 025 | RUNTIME_INPLACE_TUPLE_ACCESS | 就地元组索引访问与修改 | 6 | PASS |
| 026 | RUNTIME_KEYOF_DISPATCH | keyof 类型运行时是 string | 2 | PASS |
| 027 | RUNTIME_INPLACE_FUNCTION_INVOKE | 就地函数类型调用、高阶 | 3 | PASS |

---

## 执行过程异常修复记录

首次运行有 3 个用例失败，全部为已知设计问题，已通过修改用例适配解决：

| 用例 | 异常 | 已知问题编号 | 修复方式 |
|------|------|-------------|---------|
| 002 | 局部类禁止 (ESY0040) | TYP-006 | 局部类移到顶层 |
| 011 | 嵌套函数禁止 (ESY0135) | TYP-002 | 嵌套函数移到顶层 |
| 024 | `double` 关键字冲突 (ESY0227) | TYP-003 | 函数名 `double` → `doubleAll` |

均为已在 3.1/3.2 章节记录过的设计问题，无新增异常。

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.3_Using_Types" bash run_types_cases_wsl.sh
```