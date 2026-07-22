# 17.2 Fixed-Size Array Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime | 5 | 2 | 3 | 40% |
| **总计** | **17** | **14** | **3** | **82.4%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP2_17_02_001_PASS_FIXED_ARRAY_INT | FixedArray<int> 字面量声明 | ✅ 编译通过 |
| 2 | EXP2_17_02_002_PASS_FIXED_ARRAY_DOUBLE | FixedArray<double> 字面量声明 | ✅ 编译通过 |
| 3 | EXP2_17_02_003_PASS_FIXED_ARRAY_STRING | FixedArray<string> 字面量声明 | ✅ 编译通过 |
| 4 | EXP2_17_02_004_PASS_FIXED_ARRAY_ELEMENT_ACCESS | 索引读写 | ✅ 编译通过 |
| 5 | EXP2_17_02_005_PASS_FIXED_ARRAY_LENGTH | length 属性读取 | ✅ 编译通过 |
| 6 | EXP2_17_02_006_PASS_FIXED_ARRAY_TYPE_ERASURE | 泛型函数与类型擦除保留 | ✅ 编译通过 |
| 7 | EXP2_17_02_007_PASS_FIXED_ARRAY_BOOLEAN | FixedArray<boolean> | ✅ 编译通过 |

### compile-fail

| # | 用例 ID | 测试内容 | 错误信息 | 结果 |
|---|---------|---------|---------|------|
| 10 | EXP2_17_02_010_FAIL_FIXED_TO_RESIZABLE | FixedArray→Array 赋值 | ESE0318: FixedArray<Double> cannot be assigned to Array<Double> | ✅ |
| 11 | EXP2_17_02_011_FAIL_RESIZABLE_TO_FIXED | Array→FixedArray 赋值 | ESE0318: Array<Double> cannot be assigned to FixedArray<Double> | ✅ |
| 12 | EXP2_17_02_012_FAIL_FIXED_ARRAY_NO_METHODS | .push() 调用 | ESE0087: Property 'push' does not exist | ✅ |
| 13 | EXP2_17_02_013_FAIL_PARAM_MISMATCH | FixedArray 传参给 Array 形参 | ESE0046: Type incompatible | ✅ |
| 14 | EXP2_17_02_014_FAIL_RESIZABLE_PARAM_MISMATCH | Array 传参给 FixedArray 形参 | ESE0046: Type incompatible | ✅ |

### runtime — 异常记录

| # | 用例 ID | 验证内容 | 编译结果 | 问题 |
|---|---------|---------|---------|------|
| 23 | EXP2_17_02_023_RUNTIME_OUT_OF_BOUNDS | 越界/负索引访问 | ❌ 编译失败 | ⚠️ 编译器在**编译期**即拒绝负索引 (ESE0247: Index value cannot be less than zero)，而 spec 说运行期抛异常 |
| 24 | EXP2_17_02_024_RUNTIME_LENGTH_IMMUTABLE | length 赋值 | ❌ 编译失败 | ⚠️ 编译器在**编译期**即拒绝 length 赋值 (ESE0024: Setting the length of an array is not permitted) |

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 20 | EXP2_17_02_020_RUNTIME_LENGTH | length 与数组大小一致 | ✅ 通过 |
| 21 | EXP2_17_02_021_RUNTIME_READ | 索引读取正确值 | ✅ 通过 |
| 22 | EXP2_17_02_022_RUNTIME_WRITE | 写后读一致 | ✅ 通过 |

## ⚠️ SPEC 不一致发现

1. **D-17.2-01**: 编译器 ESE0247 在编译期拒绝负索引常量，但 spec 描述为运行时错误
2. **D-17.2-02**: 编译器 ESE0024 在编译期拒绝 length 赋值，比 spec 描述更严格
