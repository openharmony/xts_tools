# 17 Experimental Features 审查报告

## 审查范围
- 章节：17 Experimental Features
- 用例目录：`17_Experimental_Features/ets_cases/`
- 用例总数：**570**（254 compile-pass + 173 compile-fail + 143 runtime），40 个子节目录
- 审查日期：2026-06-26
- 工具链：es2panda `--extension=ets` + ark `--load-runtimes=ets`（`/home/nnd/projects/arkts/arkcompiler/` 本地编译产物，Linux native）

## 执行结果

### 跑测（本地全量实测）

```
Total: 570, Pass: 552, Fail: 18  →  Pass rate: 96.8%
```

| 类别 | 预期 | OK | Unexpected | 通过率 |
|------|:----:|:--:|:----------:|:------:|
| compile-pass | 254 | 253 | **1** | 99.6% |
| compile-fail | 173 | 162 | **11** | 93.6% |
| runtime | 143 | 137 | **6** | 95.8% |
| **合计** | **570** | **552** | **18** | **96.8%** |

### 失败明细

**⚠️ FAIL_PASSED（11 例 — 编译器未实现 spec 检查）：**

| # | 用例 | Issue |
|---|------|-------|
| 1 | `EXP2_17_01_01_009_FAIL_INVALID_ESCAPE` | D-17.1.1-01 |
| 2 | `EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT` | D-17.2.1-01 |
| 3 | `EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE` | D-17.4-03 |
| 4 | `EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY` | C-17.9.1-01 |
| 5 | `EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST` | C-17.9.5-01 |
| 6 | `EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER` | D-17.13.2-01 |
| 7 | `EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER` | D-17.13.2-01 |
| 8 | `EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT` | D-17.13.3-01 |
| 9 | `EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER` | D-17.13.4-02 |
| 10 | `EXP2_17_13_011_COMPILE_FAIL_RECEIVER_PRIMITIVE` | NEW-17.13-01 |
| 11 | `EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH` | D-17.16-01 |

**❌ FAIL（7 例 — spec/实现行为不一致）：**

| # | 用例 | 类别 | Issue |
|---|------|------|-------|
| 1 | `EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY` | compile-pass | C-17.4-02 |
| 2 | `EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY` | runtime | C-17.4-02 |
| 3 | `EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS` | runtime | D-17.2-01 |
| 4 | `EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS` | runtime | D-17.2-01 |
| 5 | `EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS` | runtime | D-17.2-01 |
| 6 | `EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE` | runtime | D-17.2-02 |
| 7 | `EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` | runtime | NEW-17.10.1-01 |

### 静态审计

| 检查项 | 结果 |
|--------|------|
| `.ets` 文件总数 | 570 |
| Manifest `total_cases` | 570 ✅ |
| Manifest `stats` 节计数 vs 实际 | 40/40 一致 ✅ |
| `@id` vs 文件名 | 0 不一致 |
| `@expect` vs 目录 | 0 不一致 |
| `@section` vs 父目录 | 0 不一致 |
| 5-tag 头完整率 | 570/570 |

## 总体结论

**可验收，无阻塞问题。** 570 用例覆盖 40 小节，元数据完美（0 不一致），实测通过率 96.8%。全部交付件（manifest/mindmap/issue_report/catalog）均已同步至 570。18 项异常均为编译器实现差异——编译器未实现 spec 检查（11 FAIL_PASSED）或 spec/实现行为不一致（7 FAIL），issue_report 中 14 条 issue 分类清晰（C/D/待确认 + 严重程度）。

## 问题清单

### 1. 11 项 compile-fail 编译器未实现检查

| 分类 | 数量 | 示例 |
|------|:----:|------|
| D 类（spec/实现不一致） | 9 | 非法转义、receiver type、instanceof、参数数量等 |
| C 类（编译器未实现） | 2 | 空 overload `{}`、空 constructor overload |

全为已知持续问题，不影响用例设计质量。

### 2. 7 项 compile-pass/runtime 异常

- **C-17.4-02**（×2）：函数类型数组 ESE0127
- **D-17.2-01**（×3）+ **D-17.2-02**（×1）：编译期提前拒绝（spec 期望运行时错误/行为）
- **NEW-17.10.1-01**（×1）：native 函数预期异常未抛出

### 3. spec 覆盖 17.14–17.16 较简略

`spec_original.md` 中 17.14 Trailing Lambdas、17.15 Accessor Declarations、17.16 Pattern Matching 的描述相对简略（各 2-3 行）。不影响验收，建议后续补充完整规约摘录。

## 覆盖评价

40 个小节全覆盖，每节含 P/F/R 三类用例。命名统一 `EXP2_` 前缀。元数据完美。

28 个小节全部通过（100%），12 个小节有 1-3 项异常（集中在 receiver、overload、array 实验特性）。

## 整改建议

1. **无需立即行动**：全部交付件已同步，issue_report 维护良好
2. **持续跟踪**：18 项异常随编译器版本更新复测
3. **排查**：NEW-17.10.1-01 native 函数链接行为
4. **建议评估**：D-17.2-01/02 编译期提前拒绝是否合理 → 更新 spec 或调整编译器
