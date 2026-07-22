# 17.10.2 Native Methods - 测试报告

## 测试概述
- **子章节**: 17.10.2 Native Methods
- **测试日期**: 2026-06-23
- **编译器**: es2panda (ArkTS static compiler)
- **运行时**: ark (ArkTS VM)
- **测试环境**: Linux 6.11.11-rt7

## 测试结果汇总

| 分类 | 数量 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime | 3 | 3 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

## Compile-Pass 测试详情

| 编号 | 文件名 | 测试点 | 结果 |
|------|--------|--------|------|
| 001 | EXP2_17_10_02_001_PASS_BASIC_NATIVE_METHOD.ets | class 中基本 native method 声明 | 编译通过 |
| 002 | EXP2_17_10_02_002_PASS_NATIVE_METHOD_WITH_PARAMS.ets | native method 带多种参数类型 | 编译通过 |
| 003 | EXP2_17_10_02_003_PASS_STATIC_NATIVE_METHOD.ets | static native method | 编译通过 |
| 004 | EXP2_17_10_02_004_PASS_PRIVATE_NATIVE_METHOD.ets | private native method | 编译通过 |
| 005 | EXP2_17_10_02_005_PASS_MULTIPLE_NATIVE_METHODS.ets | 多个 native methods 共存 | 编译通过 |
| 006 | EXP2_17_10_02_006_PASS_NATIVE_METHOD_GENERIC.ets | native method 泛型参数 | 编译通过 |
| 007 | EXP2_17_10_02_007_PASS_NATIVE_METHOD_SEMICOLON.ets | native method 分号体 | 编译通过 |
| 008 | EXP2_17_10_02_008_PASS_OVERRIDE_NATIVE_METHOD.ets | override native method | 编译通过 |

## Compile-Fail 测试详情

| 编号 | 文件名 | 测试点 | 错误码 | 错误信息 | 结果 |
|------|--------|--------|--------|----------|------|
| 009 | EXP2_17_10_02_009_FAIL_NATIVE_METHOD_BLOCK_BODY.ets | native method 带 block body | ESE0083 | Native, Abstract and Declare methods cannot have body. | 通过 |
| 010 | EXP2_17_10_02_010_FAIL_NATIVE_ABSTRACT_COMBINATION.ets | native + abstract 组合 | ESE0047 | Invalid method modifier(s): an abstract method can't have ... native modifier | 通过 |
| 011 | EXP2_17_10_02_011_FAIL_NATIVE_IN_INTERFACE.ets | interface 中 native method | ESY0224 | Identifier expected, got 'native' | 通过 |
| 012 | EXP2_17_10_02_012_FAIL_NATIVE_METHOD_NO_RETURN_TYPE.ets | native method 无显式返回类型 | ESE0018 | Native and Declare methods should have explicit return type | 通过 |
| 013 | EXP2_17_10_02_013_FAIL_NATIVE_METHOD_TYPE_MISMATCH.ets | native method 返回类型不匹配 | ESE0318 | Type 'Int' cannot be assigned to type 'String' | 通过 |

## Runtime 测试详情

| 编号 | 文件名 | 测试点 | 输出 | 退出码 | 结果 |
|------|--------|--------|------|--------|------|
| 014 | EXP2_17_10_02_014_RUNTIME_NATIVE_METHOD_CLASS_INSTANTIATE.ets | 包含 native method 的类实例化并调用普通方法 | `native method class works: regular result 200` | 0 | 通过 |
| 015 | EXP2_17_10_02_015_RUNTIME_NATIVE_METHOD_CALL_ERROR.ets | 调用未实现的 native method 触发错误 | `verified: LinkerUnresolvedMethodError caught as expected` | 0 | 通过 |
| 016 | EXP2_17_10_02_016_RUNTIME_OVERRIDE_NATIVE_METHOD.ets | override native method 后正常调用 | `override works: child implementation` | 0 | 通过 |

## 关键编译器发现

### ESE0047: Invalid method modifier(s): an abstract method can't have ... native modifier
`native` 和 `abstract` 是互斥的修饰符。native 方法由平台本地代码实现，而 abstract 方法需要子类实现。两者语义冲突，编译器正确拒绝此组合。同时 ESE0190 也会触发，因为类不是 abstract 且没有 override abstract 方法。

### ESY0224: Identifier expected, got 'native' (in interface)
Interface 中不允许使用 `native` 关键字。这与 interface 的语义一致——interface 只定义契约，native 方法需要平台实现。在 interface 上下文中，解析器期望方法名标识符，但遇到了 `native` 关键字，因此产生语法错误。

### native method 与 semicolon body
两种形式都是合法的：`native foo(): void` 和 `native foo(): void;`。分号是可选的，因为编译器要求 native 方法不能有 body，无论是否使用分号。

### native method 修饰符组合规则
- `static native`: 允许（静态原生方法）
- `private native`: 允许（私有原生方法）
- `native abstract`: 禁止（语义冲突）
- interface 中的 native: 禁止（语法层面阻止）

### Override 与 native 关系
子类可以使用 `override` 关键字将父类的 native method 重写为普通方法。这允许 Java/Swift 中类似于"native 方法可以在子类中被覆盖"的模式。

## 异常发现
无。所有测试按预期运行。

## 测试文件清单
```
17.10.2_Native_Methods/
  compile-pass/
    EXP2_17_10_02_001_PASS_BASIC_NATIVE_METHOD.ets
    EXP2_17_10_02_002_PASS_NATIVE_METHOD_WITH_PARAMS.ets
    EXP2_17_10_02_003_PASS_STATIC_NATIVE_METHOD.ets
    EXP2_17_10_02_004_PASS_PRIVATE_NATIVE_METHOD.ets
    EXP2_17_10_02_005_PASS_MULTIPLE_NATIVE_METHODS.ets
    EXP2_17_10_02_006_PASS_NATIVE_METHOD_GENERIC.ets
    EXP2_17_10_02_007_PASS_NATIVE_METHOD_SEMICOLON.ets
    EXP2_17_10_02_008_PASS_OVERRIDE_NATIVE_METHOD.ets
  compile-fail/
    EXP2_17_10_02_009_FAIL_NATIVE_METHOD_BLOCK_BODY.ets
    EXP2_17_10_02_010_FAIL_NATIVE_ABSTRACT_COMBINATION.ets
    EXP2_17_10_02_011_FAIL_NATIVE_IN_INTERFACE.ets
    EXP2_17_10_02_012_FAIL_NATIVE_METHOD_NO_RETURN_TYPE.ets
    EXP2_17_10_02_013_FAIL_NATIVE_METHOD_TYPE_MISMATCH.ets
  runtime/
    EXP2_17_10_02_014_RUNTIME_NATIVE_METHOD_CLASS_INSTANTIATE.ets
    EXP2_17_10_02_015_RUNTIME_NATIVE_METHOD_CALL_ERROR.ets
    EXP2_17_10_02_016_RUNTIME_OVERRIDE_NATIVE_METHOD.ets
```
