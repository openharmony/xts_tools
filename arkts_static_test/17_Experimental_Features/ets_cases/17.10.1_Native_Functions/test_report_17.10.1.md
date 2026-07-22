# 17.10.1 Native Functions - 测试报告

## 测试概述
- **子章节**: 17.10.1 Native Functions
- **测试日期**: 2026-06-23
- **编译器**: es2panda (ArkTS static compiler)
- **运行时**: ark (ArkTS VM)
- **测试环境**: Linux 6.11.11-rt7

## 测试结果汇总

| 分类 | 数量 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime | 3 | 3 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

## Compile-Pass 测试详情

| 编号 | 文件名 | 测试点 | 结果 |
|------|--------|--------|------|
| 001 | EXP2_17_10_01_001_PASS_BASIC_NATIVE_FUNC.ets | 基本原生函数声明 | 编译通过 |
| 002 | EXP2_17_10_01_002_PASS_NATIVE_FUNC_WITH_PARAMS.ets | 带参数和返回类型的原生函数 | 编译通过 |
| 003 | EXP2_17_10_01_003_PASS_MULTIPLE_NATIVE_FUNCS.ets | 多个原生函数不同签名 | 编译通过 |
| 004 | EXP2_17_10_01_004_PASS_NATIVE_FUNC_GENERIC.ets | 原生函数泛型参数 | 编译通过 |
| 005 | EXP2_17_10_01_005_PASS_EXPORT_NATIVE_FUNC.ets | export native function | 编译通过 |

## Compile-Fail 测试详情

| 编号 | 文件名 | 测试点 | 错误码 | 错误信息 | 结果 |
|------|--------|--------|--------|----------|------|
| 006 | EXP2_17_10_01_006_FAIL_NATIVE_WITH_BLOCK_BODY.ets | native function 带 block body | ESE0083 | Native, Abstract and Declare methods cannot have body. | 通过 |
| 007 | EXP2_17_10_01_007_FAIL_NATIVE_WITH_EXPR_BODY.ets | native function 带 expression body | ESY0227 | Unexpected token '=' | 通过 |
| 008 | EXP2_17_10_01_008_FAIL_NATIVE_ASYNC_COMBINATION.ets | native + async 组合 | ESY0203 | 'native' flags must be used for functions only at top-level | 通过 |
| 009 | EXP2_17_10_01_009_FAIL_NATIVE_WITHOUT_RETURN_TYPE.ets | native function 无显式返回类型 | ESE0018 | Native and Declare methods should have explicit return type | 通过 |
| 010 | EXP2_17_10_01_010_FAIL_NATIVE_RETURN_TYPE_MISMATCH.ets | native function 返回类型不匹配 | ESE0318 | Type 'Int' cannot be assigned to type 'String' | 通过 |

## Runtime 测试详情

| 编号 | 文件名 | 测试点 | 输出 | 退出码 | 结果 |
|------|--------|--------|------|--------|------|
| 011 | EXP2_17_10_01_011_RUNTIME_NATIVE_FUNC_PRESENT.ets | 声明 native function 正常运行 | `native function declared successfully` | 0 | 通过 |
| 012 | EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR.ets | 调用 native function 触发 LinkerUnresolvedMethodError | `verified: LinkerUnresolvedMethodError caught as expected` | 0 | 通过 |
| 013 | EXP2_17_10_01_013_RUNTIME_NATIVE_AND_NORMAL_FUNC.ets | native function 与普通 function 共存 | `data from normal function` | 0 | 通过 |

## 关键编译器发现

### ESE0083: Native, Abstract and Declare methods cannot have body
此错误适用于 top-level native function 和 class-level native method。尽管错误消息中使用 "methods"，但对顶层函数同样生效。

### ESY0203: 'native' flags must be used for functions only at top-level
当 `native` 与 `async` 组合使用时，编译器将其解析为 `async` 方法的修饰符而非顶层声明的修饰符，导致此错误及后续一连串解析错误。

### ESE0018: Native and Declare methods should have explicit return type
与普通函数不同，native function 必须显式声明返回类型，即使是 `void` 也必须显式写出。这与 spec 描述一致——原生函数的签名必须完整。

### LinkerUnresolvedMethodError
在编译期，native function 的声明是合法的（无函数体）。但在运行时，如果尝试调用一个没有平台本地实现的 native function，VM 会抛出 `LinkerUnresolvedMethodError`。此错误可以通过 try/catch 捕获。

## 异常发现
无。所有测试按预期运行。

## 测试文件清单
```
17.10.1_Native_Functions/
  compile-pass/
    EXP2_17_10_01_001_PASS_BASIC_NATIVE_FUNC.ets
    EXP2_17_10_01_002_PASS_NATIVE_FUNC_WITH_PARAMS.ets
    EXP2_17_10_01_003_PASS_MULTIPLE_NATIVE_FUNCS.ets
    EXP2_17_10_01_004_PASS_NATIVE_FUNC_GENERIC.ets
    EXP2_17_10_01_005_PASS_EXPORT_NATIVE_FUNC.ets
  compile-fail/
    EXP2_17_10_01_006_FAIL_NATIVE_WITH_BLOCK_BODY.ets
    EXP2_17_10_01_007_FAIL_NATIVE_WITH_EXPR_BODY.ets
    EXP2_17_10_01_008_FAIL_NATIVE_ASYNC_COMBINATION.ets
    EXP2_17_10_01_009_FAIL_NATIVE_WITHOUT_RETURN_TYPE.ets
    EXP2_17_10_01_010_FAIL_NATIVE_RETURN_TYPE_MISMATCH.ets
  runtime/
    EXP2_17_10_01_011_RUNTIME_NATIVE_FUNC_PRESENT.ets
    EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR.ets
    EXP2_17_10_01_013_RUNTIME_NATIVE_AND_NORMAL_FUNC.ets
```
