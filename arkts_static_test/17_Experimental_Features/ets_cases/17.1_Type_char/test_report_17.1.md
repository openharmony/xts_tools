# 17.1 Type char - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_01_001_PASS_CHAR_DECLARE_INIT | char 类型变量声明与初始化（c'a', c'Z', c'0' 等） | ✅ PASS |
| 002 | EXP2_17_01_002_PASS_CHAR_ASSIGN_TO_OBJECT | char 赋值给 Object（子类型关系） | ✅ PASS |
| 003 | EXP2_17_01_003_PASS_CHAR_FUNC_PARAM_RETURN | char 作为函数参数类型和返回类型 | ✅ PASS |
| 004 | EXP2_17_01_004_PASS_CHAR_CLASS_FIELD | char 作为类字段类型 | ✅ PASS |
| 005 | EXP2_17_01_005_PASS_CHAR_GENERIC_ARRAY | char 作为泛型参数（char[]） | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 006 | EXP2_17_01_006_FAIL_INT_ASSIGN_TO_CHAR | int 赋值给 char（无隐式转换） | ✅ FAIL (expected) |
| 007 | EXP2_17_01_007_FAIL_CHAR_ASSIGN_TO_INT | char 赋值给 int（无隐式转换） | ✅ FAIL (expected) |
| 008 | EXP2_17_01_008_FAIL_STRING_ASSIGN_TO_CHAR | string 赋值给 char | ✅ FAIL (expected) |
| 009 | EXP2_17_01_009_FAIL_BOOLEAN_ASSIGN_TO_CHAR | boolean 赋值给 char | ✅ FAIL (expected) |
| 010 | EXP2_17_01_010_FAIL_CHAR_AS_VAR_NAME | char 关键字用作变量名 | ✅ FAIL (expected) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 011 | EXP2_17_01_011_RUNTIME_CHAR_VALUE_VERIFY | c'a' == 0x61, c'A' == 65 | 2 | ✅ PASS |
| 012 | EXP2_17_01_012_RUNTIME_CHAR_OBJECT_INSTANCEOF | char 赋值给 Object 后非空检查 | 1 | ✅ PASS |
| 013 | EXP2_17_01_013_RUNTIME_CHAR_ARRAY_OPS | char[] 数组长度、索引、排序比较 | 4 | ✅ PASS |

---

## 关键发现

1. **char 是独立的 class 类型，不是数值类型的别名**：char 与 int/long/short/byte 之间没有隐式转换，这与 Java 的 char 设计不同（Java 中 char 可以 widening 到 int）。
2. **char 是 Object 的子类型**：char 变量可以赋值给 Object 类型变量，验证了 spec 中的 "char is a class type, subtype of Object"。
3. **char 是关键字**：不能用作变量名，与 Java 一致。

---

## 后续运行命令

```bash
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
```
