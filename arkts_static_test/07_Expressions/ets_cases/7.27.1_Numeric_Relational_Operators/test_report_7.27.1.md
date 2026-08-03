# 7.27.1 Numeric Relational Operators — 测试执行报告

> 最后编译验证：2026-07-30，es2panda `--extension=ets`，WSL

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **19** | **19** | **0** | **100%** |

## 详细执行结果

### compile-pass（6 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_27_01_001_PASS_NUMERIC_INT_CMP | int < <= > >= 基本比较 | ✅ |
| 002 | EXP_07_27_01_002_PASS_NUMERIC_FLOAT_CMP | float 比较 | ✅ |
| 003 | EXP_07_27_01_003_PASS_NUMERIC_MIXED_INT_LONG | int + long 混合比较 | ✅ |
| 004 | EXP_07_27_01_004_PASS_DOUBLE_RELATIONAL | double 比较 | ✅ |
| 005 | EXP_07_27_01_005_PASS_BYTE_SHORT_PROMOTION | byte/short 提升为 int | ✅ |
| 006 | EXP_07_27_01_006_PASS_MIXED_NUMERIC | 混合数值类型比较 | ✅ |

### compile-fail（5 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_27_01_007_FAIL_STRING_OPERAND | string < int 编译错误 | ✅ |
| 008 | EXP_07_27_01_008_FAIL_BOOLEAN_OPERAND | boolean < int 编译错误 | ✅ |
| 009 | EXP_07_27_01_009_FAIL_OBJECT_OPERAND | Object < int 编译错误 | ✅ |
| 010 | EXP_07_27_01_010_FAIL_NULLISH_OPERAND | null/undefined < int 编译错误 | ✅ |
| 011 | EXP_07_27_01_011_FAIL_NON_NUMERIC_BOTH | 双方非数值类型编译错误 | ✅ |

### runtime（8 用例）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 012 | EXP_07_27_01_012_RUNTIME_INT_COMPARISON | int 基本比较值 | ✅ |
| 013 | EXP_07_27_01_013_RUNTIME_INT_EDGE | int 边界值 (INT_MAX/MIN) | ✅ |
| 014 | EXP_07_27_01_014_RUNTIME_LONG_COMPARISON | long 比较值 | ✅ |
| 015 | EXP_07_27_01_015_RUNTIME_FLOAT_COMPARISON | float 比较值 | ✅ |
| 016 | EXP_07_27_01_016_RUNTIME_DOUBLE_COMPARISON | double 比较值 | ✅ |
| 017 | EXP_07_27_01_017_RUNTIME_IEEE754_SPECIAL | NaN, ±Inf, ±0 特殊值 | ✅ |
| 018 | EXP_07_27_01_018_RUNTIME_MIXED_TYPES | 混合类型比较 | ✅ |
| 019 | EXP_07_27_01_019_RUNTIME_BYTE_SHORT | byte/short 运行时 | ✅ |

## 执行过程修复记录

### 文件清理（2026-07-30）
- 移动 7 个文件从 7.26 移入，更新 @section/@id
- 删除 25 个重复 INT_REL 文件
- 删除 3 个重复 FAIL 文件（004~006 NUMERIC_* 与 007~009 *_OPERAND 重复）
- 删除 2 个冗余 RUNTIME 文件（007/008 INFINITY/ZERO 被 017 IEEE754 覆盖）
- 重编号：FAIL 021~025→007~011，RUNTIME 031~038→012~019
- 19 个核心文件与 mindmap 完全匹配

## 跨语言验证结果

| 语言 | 编译 | 运行 | 结果 |
|------|:----:|:----:|:----:|
| ArkTS | ✅ es2panda | ✅ ark VM | 19/19 通过 |
| Java | ✅ javac 1.8 | ✅ JVM | 12/12 断言通过 |
| Swift | ✅ swiftc 6.3.2 | ✅ Swift runtime | 11/11 断言通过 |

## 后续运行命令

```bash
SECTIONS="7.27.1_Numeric_Relational_Operators" bash run_expressions_cases_wsl.sh
```
