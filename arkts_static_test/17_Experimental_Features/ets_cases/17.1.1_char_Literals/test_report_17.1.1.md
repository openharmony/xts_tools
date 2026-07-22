# 17.1.1 char Literals - 测试执行报告

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
| compile-fail | 5 | 4 | 1 | 80% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **15** | **14** | **1** | **93.3%** |

> **注：** compile-fail 中有 1 个 SPEC 不一致（c'\q' 编译通过），该用例保留在 FAIL 分类中并标注 ⚠️ SPEC 不一致。

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_01_01_001_PASS_ASCII_CHAR_LITERAL | 基本 ASCII 字面量 c'a', c'Z', c'0', c' ', c'!', c'~' | ✅ PASS |
| 002 | EXP2_17_01_01_002_PASS_ESCAPE_SEQUENCE | 转义序列 c'\n', c'\t', c'\r', c'\\', c'\'' | ✅ PASS |
| 003 | EXP2_17_01_01_003_PASS_HEX_ESCAPE | 十六进制转义 c'\x41', c'\x7F', c'\x00', c'\xFF' | ✅ PASS |
| 004 | EXP2_17_01_01_004_PASS_UNICODE_ESCAPE | Unicode 转义 c'A', c'a', c'' | ✅ PASS |
| 005 | EXP2_17_01_01_005_PASS_BOUNDARY_VALUES | 边界值 c'\x00' (U+0000), c'￿' (U+FFFF) | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 006 | EXP2_17_01_01_006_FAIL_EMPTY_CHAR_LITERAL | 空字面量 c'' | ✅ FAIL (expected) |
| 007 | EXP2_17_01_01_007_FAIL_MULTI_CHAR_LITERAL | 多字符 c'ab' | ✅ FAIL (expected) |
| 008 | EXP2_17_01_01_008_FAIL_OUT_OF_RANGE_UNICODE | 超出范围 c'\u{FFFFF}' (> U+FFFF) | ✅ FAIL (expected) |
| 009 | EXP2_17_01_01_009_FAIL_INVALID_ESCAPE | 非法转义序列 c'\q' | ⚠️ SPEC 不一致 (compiles OK) |
| 010 | EXP2_17_01_01_010_FAIL_INVALID_HEX | 非法十六进制 c'\xGG' | ✅ FAIL (expected) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 011 | EXP2_17_01_01_011_RUNTIME_ASCII_VALUE_VERIFY | c'a' == 0x61, c'0' == 0x30, c'A' == 65 | 3 | ✅ PASS |
| 012 | EXP2_17_01_01_012_RUNTIME_ESCAPE_VALUE_VERIFY | c'\n' == 0x0A, c'\t' == 0x09, c'\r' == 0x0D, c'\\' == 92 | 4 | ✅ PASS |
| 013 | EXP2_17_01_01_013_RUNTIME_HEX_VALUE_VERIFY | c'\x41' == c'A', c'\x7F' == 127, c'\x00' == 0, c'\xFF' == 255 | 4 | ✅ PASS |
| 014 | EXP2_17_01_01_014_RUNTIME_UNICODE_VALUE_VERIFY | c'A' == c'A', c'' == 127, c'a' == 0x61 | 3 | ✅ PASS |
| 015 | EXP2_17_01_01_015_RUNTIME_BOUNDARY_VALUE_VERIFY | U+0000 == 0, U+FFFF == 65535, U+0000 < U+FFFF | 4 | ✅ PASS |

---

## SPEC 不一致记录

### 009: c'\q' 非法转义序列被接受

**用例 ID：** EXP2_17_01_01_009_FAIL_INVALID_ESCAPE
**Spec 规则：** char 字面量 `c'X'` 中 X 必须是单个 UTF-16 符号或有效转义序列
**实际行为：** `c'\q'` 编译通过，无任何错误或警告
**分类：** D 类（Spec 与实现不一致）
**建议：** 编译器应拒绝未定义的转义序列 `\q`

---

## 关键发现

1. **char 字面量语法正确实现**：基本 ASCII、转义序列（\n, \t, \r, \\, \'）、十六进制转义（\xHH）、Unicode 转义均能正确编译和运行。
2. **超出 BMP 范围正确拒绝**：`c'\u{FFFFF}'` 产生编译错误 `ESY0261: Unsupported character literal`，符合 spec。
3. **未定义转义序列被接受**：`c'\q'` 编译通过，与 spec 不一致（⚠️ SPEC 不一致）。
4. **运行时值验证全部通过**：所有 char 字面量对应的 Unicode 码点值与预期一致。

---

## 后续运行命令

```bash
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
```
