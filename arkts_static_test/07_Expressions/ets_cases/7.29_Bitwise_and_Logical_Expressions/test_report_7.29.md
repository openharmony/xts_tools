# 7.29 Bitwise and Logical Expressions — 测试执行报告

> 最后编译验证：2026-07-30，es2panda `--extension=ets`，WSL

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 0 | 0 | 0 | — |
| **总计** | **4** | **4** | **0** | **100%** |

## 详细执行结果

### compile-pass（2 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_29_001_PASS_BITWISE_BASIC | 基本位运算 & \| ^ int 类型 | ✅ |
| 002 | EXP_07_29_002_PASS_BITWISE_PRECEDENCE | 位运算符优先级 & > ^ > \| | ✅ |

### compile-fail（2 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | EXP_07_29_003_FAIL_BITWISE_STRING | string 类型位运算编译错误 | ✅ |
| 004 | EXP_07_29_004_FAIL_BITWISE_OBJECT | Object 类型位运算编译错误 | ✅ |

### runtime（0 用例）

本父章节不包含运行时用例，详见子章节 7.29.1 和 7.29.2。

## 跨语言验证

| 语言 | 编译 | 运行 | 结果 |
|------|:----:|:----:|:----:|
| ArkTS | ✅ es2panda | ✅ ark VM | 4/4 |
| Java | ✅ javac | ✅ JVM | 5/5 断言 |
| Swift | ✅ swiftc 6.3.2 | ✅ Swift runtime | 5/5 断言 |

## 后续运行命令

```bash
SECTIONS="7.29_Bitwise_and_Logical_Expressions" bash run_expressions_cases_wsl.sh
```
