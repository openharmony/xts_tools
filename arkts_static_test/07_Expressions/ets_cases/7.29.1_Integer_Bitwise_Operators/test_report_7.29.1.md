# 7.29.1 Integer Bitwise Operators — 测试执行报告

> 最后编译验证：2026-07-30，es2panda `--extension=ets`，WSL

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

## 详细执行结果

### compile-pass（7 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_29_01_001_PASS_INT_BITWISE | int & ^ \| 基本位运算 | ✅ |
| 002 | EXP_07_29_01_002_PASS_LONG_BITWISE | long & ^ \| 64 位位运算 | ✅ |
| 003 | EXP_07_29_01_003_PASS_BYTE_SHORT_PROMOTION | byte/short 提升为 int | ✅ |
| 004 | EXP_07_29_01_004_PASS_MIXED_INT_TYPES | 混合整数类型位运算 | ✅ |
| 005 | EXP_07_29_01_005_PASS_FLOAT_DOUBLE_TRUNCATION | float/double 截断后位运算 | ✅ |
| 006 | EXP_07_29_01_006_PASS_BIGINT_BITWISE | bigint 任意精度位运算 | ✅ |
| 007 | EXP_07_29_01_007_PASS_BITWISE_CHAINED_PRECEDENCE | 链式位运算及优先级 | ✅ |

### compile-fail（2 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 008 | EXP_07_29_01_008_FAIL_BIGINT_NUMERIC_MIXED | bigint + 数值混合位运算编译错误 | ✅ |
| 009 | EXP_07_29_01_009_FAIL_BIGINT_FLOAT_MIXED | bigint + float 混合位运算编译错误 | ✅ |

### runtime（4 用例）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 010 | EXP_07_29_01_010_RUNTIME_INT_BITWISE | int 位运算运行时值 | ✅ |
| 011 | EXP_07_29_01_011_RUNTIME_LONG_BITWISE | long 位运算运行时值 | ✅ |
| 012 | EXP_07_29_01_012_RUNTIME_BIGINT_BITWISE | bigint 位运算运行时值 | ✅ |
| 013 | EXP_07_29_01_013_RUNTIME_FLOAT_DOUBLE_TRUNCATION | float/double 截断后位运算运行时值 | ✅ |

## 执行过程修复记录

### 文件清理（2026-07-30）
- 删除 22 个重复/污染文件（INT_REL_BASIC/INT_BOOL_REL_ERR/INT_REL_ASSERT + 重复 PASS/FAIL）
- 保留 13 个核心文件，编号与 mindmap 完全一致

## 跨语言验证结果

| 语言 | 编译 | 运行 | 结果 |
|------|:----:|:----:|:----:|
| ArkTS | ✅ es2panda | ✅ ark VM | 13/13 通过 |
| Java | ✅ javac 1.8 | ✅ JVM | 8/8 断言通过 |
| Swift | ✅ swiftc 6.3.2 | ✅ Swift runtime | 8/8 断言通过 |

## 后续运行命令

```bash
SECTIONS="7.29.1_Integer_Bitwise_Operators" bash run_expressions_cases_wsl.sh
```
