# ArkTS 测试用例检视报告 — 7.21.6_Unary_Minus

**项目路径**: `E:\git_all\spec_git\ARKTS_STATIC_TEST\07_Expressions\ets_cases\7.21.6_Unary_Minus`
**检视日期**: 2026-07-27
**文件总数**: 20 个 `.ets` + 2 个 `.java/.swift` + 5 个 `.md`

---

## 总体统计

| 类别 | 用例数 | 全部通过 |
|------|--------|---------|
| compile-pass | 8 | ✅ 报告 8/8 |
| compile-fail | 4 | ✅ 报告 4/4 |
| runtime | 8 | ✅ 报告 8/8 |
| **总计** | **20** | **20/20** |

---

## 一、高严重度问题

### [高] [版权声明缺失] 全部 20 个 `.ets` 文件 — 无 Apache 2.0 版权 header

所有 20 个测试文件均缺少标准版权声明 header。例如 `EXP_07_21_06_001_PASS_INT.ets` 仅有 JSDoc 注释，无任何版权信息：

```typescript
// 当前（无版权）：
/**
 * @id EXP_07_21_06_001_PASS_INT
 * ...
 */

// 应有：
/*
 * Copyright (c) 2026 ...
 * Licensed under the Apache License, Version 2.0 ...
 */
```

受影响文件清单（20 个）：

| 目录 | 文件 |
|------|------|
| compile-pass (8) | EXP_07_21_06_001~008 |
| compile-fail (4) | EXP_07_21_06_021~024 |
| runtime (8) | EXP_07_21_06_031~038 |

**建议改法**: 为每个文件添加标准 Apache 2.0 版权 header。

---

## 二、中严重度问题

### [中] [缺少负向用例] compile-fail — 未测试 `undefined` 类型

当前 compile-fail 覆盖了 4 种非数值类型（string, boolean, Object, null），但缺少 `undefined`：

```typescript
// 已覆盖：string, boolean, Object, null
// 未覆盖：undefined
```

在 ArkTS 中，`undefined` 是一个有效的类型/值，`-undefined` 应在编译时报错。

**建议改法**: 新增 `EXP_07_21_06_025_FAIL_UNDEFINED.ets`：
```typescript
function test_undefined_unary_minus(): void {
    let u: undefined = undefined;
    let x = -u;
}
```

---

### [中] [跨语言验证覆盖不足] cross_lang_verify/verification_report.md — 仅验证了 3/20 个测试点

跨语言验证报告只覆盖了 3 个测试点（031, 032, 021），缺少对 17 个其余测试点的 Java/Swift 验证：

| 已验证 | 未验证 |
|--------|--------|
| 031 -int, 032 -int.MIN, 021 -string | 001-008 compile-pass, 022-024 compile-fail, 033-038 runtime |

此外，Java 和 Swift 的源码文件存在但没有明确说明是否真正编译并通过。

**建议改法**: 补充至少关键测试点（033 short widen, 036 float special, 037 bigint, 038 -NaN）的跨语言验证结果。

---

### [中] [缺少 `char` 类型测试] compile-pass — 未覆盖 `char` 类型

如果 ArkTS 支持 `char` 类型（作为整型），`-char` 的行为应类似 `-short`/`-byte`（拓宽为 int）。当前未对 `char` 进行测试。

**建议改法**: 确认 ArkTS 是否支持 `char`。如支持，新增 `-char → int` 的 compile-pass 和 runtime 用例。

---

## 三、低严重度问题

### [低] [compile-pass 仅验证编译] compile-pass 文件无运行时验证

compile-pass 的 8 个文件仅验证编译通过，不验证计算结果：

```typescript
// EXP_07_21_06_001: 只赋值但不验证值
function test_int_unary_minus(): void {
    let x: int = 5;
    let y: int = -x;  // 期待 y = -5，但未验证
}
```

这是设计意图（compile-pass = 编译测试），但如果有编译通过但运行时结果不符合预期的情况，不会被发现（虽然后续有 runtime 用例覆盖）。

**建议改法**: 无需修改，这是合理的分层设计。但在用例注释中可更明确注明"仅验证编译通过，运行时值验证见 runtime 用例"。

---

### [低] [浮点特殊值 NaN 断言模式] runtime/038 — NaN 检测模式可读性可改进

```typescript
let r3: double = -nan;
if (r3 == r3) {
    throw new Error("assertion failed: expected -NaN=NaN");
}
```

`NaN != NaN` 原理正确，但可读性较差。

**建议改法**: 可改为 `if (!(r3 !== r3))` 或添加注释解释 `NaN ≠ NaN` 原理。

---

### [低] [文件命名缺少编号规范说明] `PASS_NEGATE_INT_MIN` 编号位置不直观

编号 008 是 compile-pass，`NEGATE_INT_MIN` 测试的是 int 边界溢出。建议在 mindmap 中补充编号与测试内容的对应关系。

---

## 四、正异常检查（无问题的维度）

| 检查项 | 结论 |
|--------|------|
| 文件结构 | ✅ compile-pass/fail/runtime 三类分离，清晰 |
| 思维导图设计 | ✅ 完整覆盖类型、拓宽、溢出、特殊值等维度 |
| 命名规范 | ✅ `EXP_07_21_06_YYY_CATEGORY_DESC.ets` 统一 |
| JSDoc 格式 | ✅ 5 个 tag（id, expect, section, design, note）统一 |
| 每个用例至少一个断言 | ✅ runtime 文件全部有 `throw Error` 断言 |
| ECMA/ArkTS 规范符合性 | ✅ 符合 section 7.21.6 规范定义 |
| 预期结果一致性 | ✅ 溢出包装、拓宽、浮点特殊值等与 ArkTS/Java 规范一致 |
| 跨语言比较文档 | ✅ comparison_report_arkts_java_swift.md 详细分析 |
| 设计差异文档 | ✅ design_issues_report.md 记录 5 个 ID |
| 测试报告 | ✅ test_report_7.21.6.md 记录 20/20 通过 |

---

## 五、总结

### 问题汇总

| # | 严重度 | 类别 | 文件 | 问题 |
|---|--------|------|------|------|
| 1 | 高 | 版权缺失 | 20 个 .ets 文件 | 全部缺少 Apache 2.0 版权声明 header |
| 2 | 中 | 缺少负向用例 | compile-fail | 未测试 `-undefined` |
| 3 | 中 | 验证不充分 | cross_lang_verify | 仅 3/20 测试点有跨语言验证 |
| 4 | 中 | 缺少类型 | compile-pass | `char` 类型未覆盖 |
| 5 | 低 | 可读性 | runtime/038 | NaN 检测模式可改进 |
| 6 | 低 | 文档 | mindmap | 未注明编号与测试内容对应关系 |

### 整体评价

**整体质量良好**。测试结构清晰（compile-pass/fail/runtime 分层）、设计文档完善（mindmap/report/design issues/comparison 四份文档）、跨语言对比详尽（Java + Swift）。

**最优先处理**：
1. 补全 20 个文件的版权 header
2. 补充 `-undefined` 的 compile-fail 测试
3. 补充跨语言验证中缺失的 17 个测试点
