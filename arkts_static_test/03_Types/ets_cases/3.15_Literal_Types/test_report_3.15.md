# 3.15 Literal Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (6 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_15_001_PASS_STRING_LITERAL_TYPE | string literal 类型声明 | ✅ PASS |
| 2 | TYP_03_15_002_PASS_NULL_LITERAL_TYPE | null 字面量类型声明 | ✅ PASS |
| 3 | TYP_03_15_003_PASS_UNDEFINED_LITERAL_TYPE | undefined 字面量类型声明 | ✅ PASS |
| 4 | TYP_03_15_004_PASS_LITERAL_AS_PARAM | 字面量类型作为函数参数 | ✅ PASS |
| 5 | TYP_03_15_005_PASS_STRING_LITERAL_TO_STRING | string literal 赋值给 string | ✅ PASS |
| 6 | TYP_03_15_006_PASS_STRING_LITERAL_OPERATION | string literal 操作 | ✅ PASS |

### compile-fail (4 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_15_007_FAIL_STRING_TO_STRING_LITERAL | string 不能赋值给 string literal | ✅ PASS |
| 2 | TYP_03_15_008_FAIL_NULL_TO_NONNULLISH | null 不能赋值给非空类型 | ✅ PASS |
| 3 | TYP_03_15_009_FAIL_UNDEFINED_TO_NONNULLISH | undefined 不能赋值给非空类型 | ✅ PASS |
| 4 | TYP_03_15_010_FAIL_WRONG_STRING_LITERAL | 不同 string literal 不能互赋 | ✅ PASS |

### runtime (4 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_15_011_RUNTIME_STRING_LITERAL_TYPE | string literal 运行时 | ✅ PASS |
| 2 | TYP_03_15_012_RUNTIME_NULL_LITERAL_TYPE | null literal 运行时 | ✅ PASS |
| 3 | TYP_03_15_013_RUNTIME_UNDEFINED_LITERAL_TYPE | undefined literal 运行时 | ✅ PASS |
| 4 | TYP_03_15_014_RUNTIME_LITERAL_AS_PARAM | 字面量类型参数运行时 | ✅ PASS |

---

## 测试覆盖分析

### 覆盖的 Spec 要点

| Spec 要点 | 覆盖用例 | 状态 |
|-----------|----------|------|
| String Literal Types | 001, 005, 006, 011 | ✅ |
| null 字面量类型 | 002, 008, 012 | ✅ |
| undefined 字面量类型 | 003, 009, 013 | ✅ |
| 字面量类型作为参数 | 004, 014 | ✅ |
| string literal 赋值给 string | 005 | ✅ |
| string literal 操作结果为 string | 006, 011 | ✅ |
| string 不能赋值给 string literal | 007 | ✅ |

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.15_Literal_Types" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过
