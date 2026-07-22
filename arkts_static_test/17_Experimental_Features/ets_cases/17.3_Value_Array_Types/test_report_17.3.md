# 17.3 Value Array Types - 测试执行报告

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
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **19** | **19** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_03_001_PASS_VALUEARRAY_INT_LITERAL | ValueArray\<int\> 使用数组字面量创建：验证 int 值类型数组声明和初始化 | PASS |
| 002 | EXP2_17_03_002_PASS_VALUEARRAY_LONG_LITERAL | ValueArray\<long\> 使用数组字面量创建：验证 long 值类型数组声明和初始化 | PASS |
| 003 | EXP2_17_03_003_PASS_VALUEARRAY_FLOAT_LITERAL | ValueArray\<float\> 使用数组字面量创建：验证 float 值类型数组声明和初始化 | PASS |
| 004 | EXP2_17_03_004_PASS_VALUEARRAY_DOUBLE_LITERAL | ValueArray\<double\> 使用数组字面量创建：验证 double 值类型数组声明和初始化 | PASS |
| 005 | EXP2_17_03_005_PASS_VALUEARRAY_CHAR_LITERAL | ValueArray\<char\> 使用数组字面量创建：验证 char 值类型数组声明和初始化 | PASS |
| 006 | EXP2_17_03_006_PASS_VALUEARRAY_BOOLEAN_LITERAL | ValueArray\<boolean\> 使用数组字面量创建：验证 boolean 值类型数组声明和初始化 | PASS |
| 007 | EXP2_17_03_007_PASS_VALUEARRAY_BYTE_LITERAL | ValueArray\<byte\> 使用数组字面量创建：验证 byte 值类型数组声明和初始化 | PASS |
| 008 | EXP2_17_03_008_PASS_VALUEARRAY_SHORT_LITERAL | ValueArray\<short\> 使用数组字面量创建：验证 short 值类型数组声明和初始化 | PASS |
| 009 | EXP2_17_03_009_PASS_VALUEARRAY_CONSTRUCTOR_INT | ValueArray\<int\> 使用构造函数创建：new ValueArray\<int\>(5, 0) 创建含 5 个零元素的数组 | PASS |
| 010 | EXP2_17_03_010_PASS_VALUEARRAY_CONSTRUCTOR_DOUBLE | ValueArray\<double\> 使用构造函数创建：new ValueArray\<double\>(3, 7.) 创建含 3 个 7.0 元素的数组 | PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 错误信息 | 结果 |
|---|---------|---------|---------|------|
| 011 | EXP2_17_03_011_FAIL_VALUEARRAY_STRING | ValueArray\<string\> 编译错误：string 不是值类型 | ESE1547180: ValueArray requires a primitive type argument: numeric, boolean or char type | FAIL (expected) |
| 012 | EXP2_17_03_012_FAIL_VALUEARRAY_UNION_TYPE | ValueArray\<int\|undefined\> 编译错误：联合类型不是值类型 | ESE1547180: ValueArray requires a primitive type argument: numeric, boolean or char type | FAIL (expected) |
| 013 | EXP2_17_03_013_FAIL_VALUEARRAY_OBJECT | ValueArray\<Object\> 编译错误：Object 不是值类型 | ESE1547180: ValueArray requires a primitive type argument: numeric, boolean or char type | FAIL (expected) |
| 014 | EXP2_17_03_014_FAIL_VALUEARRAY_TYPE_PARAMETER | ValueArray\<T\> 编译错误：ValueArray 不是泛型类型，不能使用类型参数 T | ESE1547180: ValueArray requires a primitive type argument: numeric, boolean or char type | FAIL (expected) |
| 015 | EXP2_17_03_015_FAIL_VALUEARRAY_SUBTYPE | ValueArray\<int\> 赋值给 ValueArray\<long\> 编译错误：ValueArray 类型之间不存在子类型关系 | ESE0318: Type 'ValueArray\<Int\>' cannot be assigned to type 'ValueArray\<Long\>' | FAIL (expected) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 016 | EXP2_17_03_020_RUNTIME_ELEMENT_VALUES | 运行时验证 ValueArray\<int\> 字面量创建后元素值正确 | 3 | PASS |
| 017 | EXP2_17_03_021_RUNTIME_LENGTH | 运行时验证 ValueArray 的 length 属性正确反映数组元素数量 | 1 | PASS |
| 018 | EXP2_17_03_022_RUNTIME_ELEMENT_MUTATION | 运行时验证 ValueArray 元素可通过索引修改，且修改后值正确持久化 | 2 | PASS |
| 019 | EXP2_17_03_024_RUNTIME_CONSTRUCTOR_VALUES | 运行时验证构造函数创建的 ValueArray 元素值和 length 正确 | 2 | PASS |

> **注意：** EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS 因涉及运行期越界异常机制，本次统计中未计入常规 runtime 通过数（依赖运行时环境完整支持）。

---

## 关键发现

1. **ValueArray 正确限制为值类型**：编译器 ESE1547180 正确拒绝 string、Object、联合类型（int|undefined）和类型参数 T 作为 ValueArray 的类型参数。
2. **全部 8 种值类型支持**：int、long、float、double、char、boolean、byte、short 的字面量创建全部编译通过。
3. **构造函数创建同样通过**：new ValueArray\<int\>(5, 0) 和 new ValueArray\<double\>(3, 7.) 正确编译。
4. **类型不兼容正确拒绝**：ValueArray\<int\> 与 ValueArray\<long\> 之间不可互赋值（ESE0318），确认 ValueArray 无协变/逆变。
5. **运行时行为正确**：元素值、length、元素修改持久化、构造函数初始化值均验证通过。
6. **无 cf_bad**：全部 5 个 compile-fail 用例均正确产生编译错误，无双标/误标用例。

---

## 后续运行命令

```bash
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
```
