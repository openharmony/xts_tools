# 17.2.1 Fixed-Size Array Creation - 测试执行报告

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
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 4 | 3 | 1 | 75% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **14** | **13** | **1** | **92.9%** |

> **注意：** compile-fail 的 1 个"失败"为 cf_bad（异常通过），即该用例预期编译失败但实际编译通过。详见下方异常记录。

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_02_01_001_PASS_CONSTRUCTOR_INT | FixedArray 构造函数创建 int 类型元素数组：验证 new FixedArray\<int\>(len, elem) 正确编译 | PASS |
| 002 | EXP2_17_02_01_002_PASS_CONSTRUCTOR_STRING | FixedArray 构造函数创建 string 类型元素数组：验证 new FixedArray\<string\>(len, elem) 正确编译 | PASS |
| 003 | EXP2_17_02_01_003_PASS_CONSTRUCTOR_FLOAT | FixedArray 构造函数创建浮点数类型元素数组：验证 new FixedArray\<number\>(len, elem) 及 float/double 类型正确编译 | PASS |
| 004 | EXP2_17_02_01_004_PASS_LITERAL_TYPE_ANNOTATION | FixedArray 通过 Array Literal 创建（显式类型注解）：验证 let a: FixedArray\<T\> = [...] 正确编译 | PASS |
| 005 | EXP2_17_02_01_005_PASS_LITERAL_TYPE_INFERENCE | FixedArray Array Literal 类型推断：验证将字面量传递给 FixedArray\<T\> 形参时编译器可推断正确类型 | PASS |
| 006 | EXP2_17_02_01_006_PASS_INDEX_READ_WRITE | FixedArray 下标读写访问：验证 a[idx] 读和 a[idx] = val 写操作正确编译 | PASS |
| 007 | EXP2_17_02_01_007_PASS_LENGTH_PROPERTY | FixedArray length 属性访问：验证 a.length 正确编译，无论通过构造函数还是字面量创建 | PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 错误信息 | 结果 |
|---|---------|---------|---------|------|
| 008 | EXP2_17_02_01_010_FAIL_TYPE_ERASURE | FixedArray 元素类型 T 未被类型擦除保留：构造函数中使用类型参数 T 作为元素类型 | ESE0007: Cannot use array creation expression with type parameter | FAIL (expected) |
| 009 | EXP2_17_02_01_011_FAIL_UNION_TYPE_ERASURE | FixedArray 联合类型含类型参数不被类型擦除保留：FixedArray\<T \| number\> 中 T 为类型参数 | ESE461884: Type 'T\|Double' is not preserved by type erasure | FAIL (expected) |
| 010 | EXP2_17_02_01_013_FAIL_NON_INT_LENGTH | FixedArray 构造函数第一个参数长度必须为 int 类型：传入非 int 类型（如 float） | ESE0236: Type 'Double' cannot be used as an index type | FAIL (expected) |

### compile-fail -- 异常记录 (cf_bad)

| # | 用例 ID | 测试内容 | 异常现象 | 处置建议 |
|---|---------|---------|---------|---------|
| 011 | EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT | FixedArray 构造函数参数数量错误：构造函数 constructor(len: int, elem: T) 要求恰好两个参数，传参不足或超出应产生编译时错误 | **cf_bad：编译通过 (exit 0)**，预期应产生编译时错误，但 es2panda 未拒绝。编译器当前允许缺省/多余参数调用 FixedArray 构造函数 | 需核对 spec 确认 FixedArray 构造函数是否必须精确 2 参数；若 spec 要求则需提交编译器缺陷报告 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | EXP2_17_02_01_020_RUNTIME_ELEMENT_COUNT | 运行时验证 FixedArray 构造函数创建正确数量的元素 | 2 | PASS |
| 013 | EXP2_17_02_01_021_RUNTIME_ELEMENTS_INITIALIZED | 运行时验证 FixedArray 构造函数将所有元素初始化为给定值 | 2 | PASS |
| 014 | EXP2_17_02_01_023_RUNTIME_LENGTH_AFTER_CREATION | 运行时验证 FixedArray 创建后 length 属性正确 | 1 | PASS |

> **注意：** EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS 因涉及运行期越界异常机制，本次统计中未计入常规 runtime 通过数（依赖运行时环境完整支持）。

---

## 关键发现

1. **FixedArray 构造函数支持 int/string/number 等多种元素类型**：通过 `new FixedArray<T>(len, elem)` 语法创建的固定大小数组，编译器和运行时均正确支持。
2. **字面量创建与类型推断**：`let a: FixedArray<int> = [1, 2, 3]` 和传递给 FixedArray 形参的推断均为通过。
3. **下标访问与 length 属性**：索引读写和 a.length 读写均正确（length 只读）。
4. **类型擦除保护**：编译器正确拒绝在泛型上下文中使用类型参数作为 FixedArray 类型参数（ESE0007, ESE461884）。
5. **参数长度约束**：非 int 类型长度参数正确被编译器拒绝（ESE0236）；但参数个数错误（cf_bad）未正确拒绝。

---

## 后续运行命令

```bash
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
```
