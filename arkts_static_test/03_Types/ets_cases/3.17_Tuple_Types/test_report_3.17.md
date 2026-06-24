# 3.17 Tuple Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (6 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_17_001_PASS_BASIC_TUPLE | 基本元组 | ✅ PASS |
| 2 | TYP_03_17_002_PASS_TUPLE_INDEX_WRITE | 索引修改 | ✅ PASS |
| 3 | TYP_03_17_003_PASS_TUPLE_LENGTH | 长度属性 | ✅ PASS |
| 4 | TYP_03_17_004_PASS_TUPLE_AS_TUPLE | 赋值给 Tuple | ✅ PASS |
| 5 | TYP_03_17_005_PASS_TUPLE_DIFFERENT_TYPES | 不同类型元素 | ✅ PASS |
| 6 | TYP_03_17_006_PASS_TUPLE_AS_OBJECT | 赋值给 Object | ✅ PASS |

### compile-fail (3 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_17_007_FAIL_TYPE_MISMATCH | 类型不匹配 | ✅ PASS |
| 2 | TYP_03_17_008_FAIL_LENGTH_MISMATCH | 长度不匹配 | ✅ PASS |
| 3 | TYP_03_17_009_FAIL_INDEX_OUT_OF_BOUNDS | 索引越界 | ✅ PASS |

### runtime (5 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_17_010_RUNTIME_BASIC_TUPLE | 基本元组 | ✅ PASS |
| 2 | TYP_03_17_011_RUNTIME_TUPLE_INDEX_WRITE | 索引修改 | ✅ PASS |
| 3 | TYP_03_17_012_RUNTIME_TUPLE_LENGTH | 长度属性 | ✅ PASS |
| 4 | TYP_03_17_013_RUNTIME_TUPLE_AS_TUPLE | Tuple 类型 | ✅ PASS |
| 5 | TYP_03_17_014_RUNTIME_TUPLE_DIFFERENT_TYPES | 不同类型 | ✅ PASS |

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.17_Tuple_Types" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过
