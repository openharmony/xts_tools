# 3.11 Type void or undefined - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (10 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_11_001_PASS_VOID_RETURN_UNDEFINED | void 函数返回 undefined | ✅ PASS |
| 2 | TYP_03_11_002_PASS_UNDEFINED_RETURN_EMPTY | undefined 函数空返回 | ✅ PASS |
| 3 | TYP_03_11_003_PASS_INFER_RETURN_UNDEFINED | 推断返回 undefined | ✅ PASS |
| 4 | TYP_03_11_004_PASS_VOID_UNDEFINED_VARIABLES | void/undefined 变量互赋 | ✅ PASS |
| 5 | TYP_03_11_005_PASS_VOID_METHOD_LAMBDA | void 方法和 lambda | ✅ PASS |
| 6 | TYP_03_11_006_PASS_VOID_GENERIC_CLASS | void 泛型类 | ✅ PASS |
| 7 | TYP_03_11_007_PASS_VOID_GENERIC_FUNCTION | void 泛型函数 | ✅ PASS |
| 8 | TYP_03_11_008_PASS_VOID_FUNCTION_TYPE_ARG | void 函数类型参数 | ✅ PASS |
| 9 | TYP_03_11_009_PASS_VOID_ARRAYS | void 数组 | ✅ PASS |
| 10 | TYP_03_11_010_PASS_UNDEFINED_TYPE_ARGUMENT | undefined 类型参数 | ✅ PASS |

### compile-fail (5 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_11_011_FAIL_VOID_RETURN_VALUE | void 函数返回值 | ✅ PASS |
| 2 | TYP_03_11_012_FAIL_UNDEFINED_RETURN_VALUE | undefined 函数返回值 | ✅ PASS |
| 3 | TYP_03_11_013_FAIL_UNDEFINED_TO_NONNULLISH | undefined 赋给非空类型 | ✅ PASS |
| 4 | TYP_03_11_014_FAIL_VOID_ARRAY_NON_UNDEFINED | void 数组非 undefined 元素 | ✅ PASS |
| 5 | TYP_03_11_015_FAIL_VOID_PARAM_NON_UNDEFINED | void 参数非 undefined | ✅ PASS |

### runtime (5 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_11_016_RUNTIME_VOID_RETURN_UNDEFINED | void 返回 undefined 运行时 | ✅ PASS |
| 2 | TYP_03_11_017_RUNTIME_UNDEFINED_RETURN | undefined 返回运行时 | ✅ PASS |
| 3 | TYP_03_11_018_RUNTIME_GENERIC_VOID_HOLD | void 泛型运行时 | ✅ PASS |
| 4 | TYP_03_11_019_RUNTIME_VOID_ARRAY | void 数组运行时 | ✅ PASS |
| 5 | TYP_03_11_020_RUNTIME_FUNCTION_VOID | void 函数运行时 | ✅ PASS |

---

## 测试覆盖分析

### 覆盖的 Spec 要点

| Spec 要点 | 覆盖用例 | 状态 |
|-----------|----------|------|
| void ≡ undefined | 001-004 | ✅ |
| void/undefined 函数返回 | 001, 002, 003, 016, 017 | ✅ |
| void/undefined 变量互赋值 | 004 | ✅ |
| void/undefined 泛型参数 | 006, 007, 010, 018 | ✅ |
| void[] / Array<void> | 009, 019 | ✅ |
| 非 undefined 值拒绝 | 011-015 | ✅ |

---

## 执行过程异常修复记录

（无异常，一次通过）

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.11_Type_void_or_undefined" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过
