# 7.32.1 Simple Assignment Operator — 测试执行报告

> 最后编译验证：2026-07-30，es2panda `--extension=ets`，WSL

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 6 | 4 | 2 (D类) | 67% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **17** | **15** | **2** | **88%** |

## 详细执行结果

### compile-pass（6 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_32_01_001_PASS_SIMPLE_VARIABLE_ASSIGN | 简洁变量赋值 | ✅ |
| 002 | EXP_07_32_01_002_PASS_SIMPLE_ARRAY | 字段访问赋值 | ✅ |
| 003 | EXP_07_32_01_003_PASS_ARRAY_INDEX_ASSIGN | 数组索引赋值 | ✅ |
| 004 | EXP_07_32_01_004_PASS_RECORD_INDEX_ASSIGN | 记录索引赋值 | ✅ |
| 005 | EXP_07_32_01_005_PASS_WIDENING_ASSIGN | 隐式扩宽赋值 | ✅ |
| 006 | EXP_07_32_01_006_PASS_SPEC_EXAMPLES | 规范示例 | ✅ |

### compile-fail（4 OK + 2 D类）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | EXP_07_32_01_003_FAIL_ASSIGN_TO_READONLY | 只读字段赋值编译错误 | ✅ |
| 004 | EXP_07_32_01_004_FAIL_ASSIGN_TO_CONST | const 赋值编译错误 | ✅ |
| 005 | EXP_07_32_01_005_FAIL_ASSIGN_TO_LITERAL | 字面量赋值编译错误 | ✅ |
| 007 | EXP_07_32_01_007_FAIL_TYPE_MISMATCH | 类型不匹配 | ✅ |
| 008 | EXP_07_32_01_008_FAIL_READONLY_ARRAY | readonly 数组赋值 D类 | ⚠️ 见 issue |
| 009 | EXP_07_32_01_009_FAIL_READONLY_TUPLE | readonly 元组赋值 D类 | ⚠️ 见 issue |

### runtime（5 用例）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|:------:|------|
| 006 | EXP_07_32_01_006_RUNTIME_ARRAY_OOB | 数组越界 RangeError | — | ✅ |
| 007 | EXP_07_32_01_007_RUNTIME_FIELD_ASSIGN | 字段赋值运行时 | | ✅ |
| 010 | EXP_07_32_01_010_RUNTIME_SEMANTICS | 赋值语义 17 断言 | 17 | ✅ |
| 011 | EXP_07_32_01_011_RUNTIME_RANGEERROR_NEGATIVE | 负索引 RangeError | — | ✅ |
| 012 | EXP_07_32_01_012_RUNTIME_RANGEERROR_TOO_LARGE | 超长索引 RangeError | — | ✅ |

## D 类异常

| ID | 用例 | 预期 | 实际 | 说明 |
|:--:|------|:----:|:----:|------|
| D-001 | EXP_07_32_01_008_FAIL_READONLY_ARRAY | compile-fail | compile-pass | readonly int[] 可被赋值为 int[]，编译器允许 |
| D-002 | EXP_07_32_01_009_FAIL_READONLY_TUPLE | compile-fail | compile-pass | readonly tuple 可被赋值为 tuple，编译器允许 |

## 跨语言验证

| 语言 | 编译 | 运行 | 结果 |
|------|:----:|:----:|:----:|
| ArkTS | ✅ es2panda | ✅ ark VM | 15/17 通过 |
| Java | ✅ javac | ✅ JVM | 5/5 断言 |
| Swift | ✅ swiftc 6.3.2 | ✅ Swift runtime | 4/4 断言 |

## 后续运行命令

```bash
SECTIONS="7.32.1_Simple_Assignment_Operator" bash run_expressions_cases_wsl.sh
```
