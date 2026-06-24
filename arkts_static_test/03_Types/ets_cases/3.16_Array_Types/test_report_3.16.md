# 3.16 Array Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (7 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_001_PASS_RESIZABLE_ARRAY | Resizable Array 声明 | ✅ PASS |
| 2 | TYP_03_16_002_PASS_EMPTY_ARRAY | 空数组声明 | ✅ PASS |
| 3 | TYP_03_16_003_PASS_ARRAY_IS_OBJECT | 数组是 Object 子类型 | ✅ PASS |
| 4 | TYP_03_16_004_PASS_ARRAY_ITERABLE | 数组可迭代 | ✅ PASS |
| 5 | TYP_03_16_005_PASS_ARRAY_INDEX | 数组索引访问 | ✅ PASS |
| 6 | TYP_03_16_006_PASS_ARRAY_PUSH_POP | 数组 push/pop 方法 | ✅ PASS |
| 7 | TYP_03_16_007_PASS_OBJECT_ARRAY | 对象类型数组 | ✅ PASS |

### compile-fail (4 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_008_FAIL_RESIZABLE_TO_FIXED | Resizable 不能赋给 Fixed | ✅ PASS |
| 2 | TYP_03_16_009_FAIL_FIXED_TO_RESIZABLE | Fixed 不能赋给 Resizable | ✅ PASS |
| 3 | TYP_03_16_010_FAIL_TYPE_MISMATCH | 元素类型不匹配 | ✅ PASS |
| 4 | TYP_03_16_011_FAIL_STRING_ARRAY_TO_NUMBER | string[] 不能赋给 number[] | ✅ PASS |

### runtime (5 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_012_RUNTIME_ARRAY_CREATE | 数组创建和访问 | ✅ PASS |
| 2 | TYP_03_16_013_RUNTIME_ARRAY_ITERABLE | 数组可迭代 | ✅ PASS |
| 3 | TYP_03_16_014_RUNTIME_ARRAY_PUSH_POP | 数组 push/pop | ✅ PASS |
| 4 | TYP_03_16_015_RUNTIME_ARRAY_AS_OBJECT | 数组 instanceof | ✅ PASS |
| 5 | TYP_03_16_016_RUNTIME_EMPTY_ARRAY | 空数组操作 | ✅ PASS |

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.16_Array_Types" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过
