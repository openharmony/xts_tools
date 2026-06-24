# 3.17.2 Type Tuple - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 8 | 8 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **26** | **26** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (10 个)

| # | 用例 ID | 测试点 | 结果 |
|---|---------|--------|------|
| 1 | TYP_03_17_02_001_PASS_TUPLE_AS_TUPLE_TYPE | 元组赋值给 Tuple | ✅ PASS |
| 2 | TYP_03_17_02_002_PASS_EMPTY_TUPLE | 空元组声明 | ✅ PASS |
| 3 | TYP_03_17_02_003_PASS_INSTANCEOF_TUPLE | instanceof Tuple | ✅ PASS |
| 4 | TYP_03_17_02_004_PASS_UNSAFE_GET | unsafeGet 方法编译通过 | ✅ PASS |
| 5 | TYP_03_17_02_005_PASS_TUPLE_LENGTH | tuple.length 属性 | ✅ PASS |
| 6 | TYP_03_17_02_006_PASS_READONLY_TUPLE_READ | readonly tuple 读取 | ✅ PASS |
| 7 | TYP_03_17_02_008_PASS_TUPLE_CAST | Tuple 用于 cast expression | ✅ PASS |
| 8 | TYP_03_17_02_009_PASS_TUPLE_ELEMENT_ACCESS | 常量索引访问元素 | ✅ PASS |
| 9 | TYP_03_17_02_010_PASS_TUPLE_ELEMENT_WRITE | 元组元素赋值修改 | ✅ PASS |
| 10 | TYP_03_17_02_026_PASS_TUPLE_PREFIX_SUBTYPE | 前缀子类型关系 | ✅ PASS |

### compile-fail (8 个)

| # | 用例 ID | 测试点 | 结果 |
|---|---------|--------|------|
| 1 | TYP_03_17_02_007_FAIL_TUPLE_ELEMENT_SUBTYPE | 元素子类型关系不满足协变 | ✅ PASS |
| 2 | TYP_03_17_02_011_FAIL_DIRECT_ACCESS | Tuple 直接索引访问 | ✅ PASS |
| 3 | TYP_03_17_02_012_FAIL_READONLY_TUPLE_WRITE | readonly tuple 修改元素 | ✅ PASS |
| 4 | TYP_03_17_02_013_FAIL_TYPE_MISMATCH | 元素类型不匹配 | ✅ PASS |
| 5 | TYP_03_17_02_014_FAIL_LENGTH_MISMATCH | 元素数量不匹配 | ✅ PASS |
| 6 | TYP_03_17_02_015_FAIL_TUPLE_MUTATE | 修改 Tuple 值的元素 | ✅ PASS |
| 7 | TYP_03_17_02_016_FAIL_DIFF_LENGTH_ASSIGN | 不同长度 tuple 互赋 | ✅ PASS |
| 8 | TYP_03_17_02_017_FAIL_READONLY_VIA_FUNCTION | readonly tuple 通过函数修改 | ✅ PASS |

### runtime (8 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_17_02_018_RUNTIME_TUPLE_AS_TUPLE_TYPE | 元组赋值给 Tuple 运行时 | ✅ PASS |
| 2 | TYP_03_17_02_019_RUNTIME_EMPTY_TUPLE | 空元组 instanceof Tuple | ✅ PASS |
| 3 | TYP_03_17_02_020_RUNTIME_INSTANCEOF_TUPLE | instanceof Tuple 运行时 | ✅ PASS |
| 4 | TYP_03_17_02_021_RUNTIME_UNSAFE_GET | unsafeGet 正常访问 | ✅ PASS |
| 5 | TYP_03_17_02_022_RUNTIME_UNSAFE_GET_NEGATIVE_INDEX | unsafeGet 负索引 (@runtime-throws=IndexOutOfBoundsError) | ✅ PASS |
| 6 | TYP_03_17_02_023_RUNTIME_UNSAFE_GET_OUT_OF_BOUNDS | unsafeGet 索引越界 (@runtime-throws=IndexOutOfBoundsError) | ✅ PASS |
| 7 | TYP_03_17_02_024_RUNTIME_TUPLE_LENGTH | tuple.length 运行时 | ✅ PASS |
| 8 | TYP_03_17_02_025_RUNTIME_TUPLE_ELEMENT_ACCESS_WRITE | 元组元素访问与修改 | ✅ PASS |

---

## 执行过程异常修复记录

### 异常 1: Tuple 元素子类型（协变 vs 不变）

**用例**：TYP_03_17_02_007（原 PASS）
**错误信息**：`ESE0318: Type '[Derived, String]' cannot be assigned to type '[Base, String]'`
**分析**：spec/semantics.md:450-453 明确规定 tuple 子类型要求元素类型 **identical**（完全相同），而非 subtype 关系。即 `[Derived, string]` 不是 `[Base, string]` 的子类型。
**修复方案**：将 007 从 compile-pass 改为 compile-fail，并新增 026 验证前缀子类型关系（n>=m 且元素 identical）
**异常类型**：用例设计错误（对 spec 理解有误）

### v1 异常修复记录（已关闭）

- ~~异常 1: Tuple length 属性~~ → 删除用例，Tuple 有 length 属性
- ~~异常 2: unsafeGet 异常类型~~ → 修改 @runtime-throws 为 IndexOutOfBoundsError

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.17.2_Type_Tuple" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过 (26/26)