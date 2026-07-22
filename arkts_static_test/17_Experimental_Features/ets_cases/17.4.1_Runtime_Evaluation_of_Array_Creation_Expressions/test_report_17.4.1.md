# 17.4.1 Runtime Evaluation of Array Creation Expressions - 测试执行报告

**测试日期：** 2026-06-25
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux
**最后编译验证：** 2026-06-25（es2panda --extension=ets，Linux native）

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 7 | 7 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_04_01_001_PASS_BASIC_INT_ARRAY_CREATION | 基本 int 数组创建表达式：验证 new int[5](42) 语法编译通过 | PASS |
| 002 | EXP2_17_04_01_002_PASS_VARIABLE_DIMENSION | 变量维度数组创建表达式：验证使用变量作为维度参数的数组创建编译通过 | PASS |
| 003 | EXP2_17_04_01_003_PASS_TYPE_ALIAS_ARRAY_CREATION | type alias 数组创建表达式：验证使用 type alias 作为元素类型的数组创建编译通过 | PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 错误信息 | 结果 |
|---|---------|---------|---------|------|
| 004 | EXP2_17_04_01_010_FAIL_CONST_NEGATIVE_DIM | 常量负维度表达式：验证编译期常量负维度产生 compile-time error | ESE0247: Index value cannot be less than zero + ESE708183: Array size cannot be negative | FAIL (expected) |
| 005 | EXP2_17_04_01_011_FAIL_FLOAT_DIMENSION | float 维度表达式：验证 float 类型维度表达式产生 compile-time error | ESE0046: Type 'Double' is not compatible with type 'Int' at index 1 | FAIL (expected) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 006 | EXP2_17_04_01_020_RUNTIME_POSITIVE_DIM_CORRECT_LENGTH_AND_ELEMENTS | 正维度数组创建：验证 new int[5](42) 创建的数组长度为 5，且所有元素值为 42 | 2 | PASS |
| 007 | EXP2_17_04_01_021_RUNTIME_ZERO_DIM_EMPTY_ARRAY | 零维度数组创建：验证 new int[0](0) 创建空数组，长度为 0 | 1 | PASS |
| 008 | EXP2_17_04_01_022_RUNTIME_NEGATIVE_DIM_NEGATIVE_ARRAY_SIZE_ERROR | 运行时负维度：验证当维度变量为负数时抛出 NegativeArraySizeError | 1 | PASS |
| 009 | EXP2_17_04_01_023_RUNTIME_DIM_EVALUATED_ONCE_SIDE_EFFECT | 维度表达式仅求值一次：验证维度表达式（含副作用）在数组创建中被求值恰好一次 | 1 | PASS |
| 010 | EXP2_17_04_01_024_RUNTIME_LARGE_DIMENSION | 大维度数组创建：验证 new int[1000](0) 创建长度为 1000 的数组 | 1 | PASS |
| 011 | EXP2_17_04_01_025_RUNTIME_DIM_COMPUTATION | 维度表达式带计算：验证 new int[2+3](1) 维度计算结果为 5，数组长度正确 | 1 | PASS |
| 012 | EXP2_17_04_01_026_RUNTIME_DIM_EVALUATED_BEFORE_ELEMENT | 求值顺序：验证维度表达式在元素表达式之前被求值 | 1 | PASS |

---

## 关键发现

1. **Array creation expression 编译阶段全部通过**：基本语法、变量维度、type alias 元素类型均正确编译。
2. **编译期负维度常量正确拒绝**：ESE0247 + ESE708183 双重保护，维度为编译期可确定的负值时产生编译错误。
3. **编译期浮点维度正确拒绝**：double/float 类型维度不可赋值给 int（ESE0046）。
4. **运行时正维度数组创建正确**：new int[5](42) 创建长度为 5、元素值均为 42 的数组。
5. **零维度数组创建正确**：new int[0](0) 创建空数组，length 为 0。
6. **运行时负维度正确抛出 NegativeArraySizeError**：维度变量为负数时正确抛出运行时错误。
7. **维度表达式求值一次**：含副作用的维度表达式在数组创建中被求值恰好一次。
8. **求值顺序正确**：维度表达式在元素表达式之前被求值。
9. **无 cf_bad**：全部 2 个 compile-fail 用例均正确产生编译错误，无双标/误标用例。
10. **全部 12 个用例 100% 通过**，编译层面和运行层面均无异常。

---

## 后续运行命令

```bash
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
```
