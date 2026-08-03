# ArkTS 测试用例检视报告 — 7.27.3_String_Relational_Operators

**项目路径**: `E:\git_all\spec_git\ARKTS_STATIC_TEST\07_Expressions\ets_cases\7.27.3_String_Relational_Operators`
**检视日期**: 2026-07-28
**文件总数**: 50 个 `.ets` 文件（compile-pass 16 + compile-fail 16 + runtime 18）

---

## 总体统计

| 类别 | 文件数 | 其中重复 | 有效用例 |
|------|--------|---------|---------|
| compile-pass | 16 | 8 | 8 |
| compile-fail | 16 | 8 | 8 |
| runtime | 18 | 8 | 10 |
| **总计** | **50** | **24 (48%)** | **26** |

---

## 一、高严重度问题

### [高] [版权声明缺失] 全部 50 个 `.ets` 文件 — 无 Apache 2.0 版权 header

与 `7.21.6` 相同的问题。每个文件第一行就是 JSDoc 注释，无任何版权声明：

```typescript
// 当前：
/**
 * @id EXP_07_27_03_001_PASS_STRING_BASIC
 * ...

// 应有：
/*
 * Copyright (c) 2026 ...
 * Licensed under the Apache License, Version 2.0 ...
 */
```

**建议改法**: 为全部 50 个文件添加标准 Apache 2.0 版权 header。

---

### [高] [严重重复 — 48% 文件是副本] 24 个文件为完全相同的副本

**三个完全相同的文件组，每组 8 个副本：**

#### 组1: compile-pass — 8 个 `INT_REL_BASIC` 文件完全一样
| 文件 | 内容 |
|------|------|
| `029_PASS_INT_REL_BASIC.ets` | `let a: int = 10; let b: int = 20; let r1: boolean = a < b; let r2: boolean = a <= b; console.log(...)` |
| `030_PASS_INT_REL_BASIC.ets` | **完全相同** |
| `032_PASS_INT_REL_BASIC.ets` | **完全相同** |
| `033_PASS_INT_REL_BASIC.ets` | **完全相同** |
| `035_PASS_INT_REL_BASIC.ets` | **完全相同** |
| `037_PASS_INT_REL_BASIC.ets` | **完全相同** |
| `040_PASS_INT_REL_BASIC.ets` | **完全相同** |
| `042_PASS_INT_REL_BASIC.ets` | **完全相同** |

#### 组2: compile-fail — 8 个 `INT_BOOL_REL_ERR` 文件完全一样
| 文件 | 内容 |
|------|------|
| `009_FAIL_INT_BOOL_REL_ERR.ets` | `let a: int = 10; let b: boolean = true; let r: boolean = a < b;` |
| `031_FAIL_INT_BOOL_REL_ERR.ets` | **完全相同** |
| `034_FAIL_INT_BOOL_REL_ERR.ets` | **完全相同** |
| `036_FAIL_INT_BOOL_REL_ERR.ets` | **完全相同** |
| `038_FAIL_INT_BOOL_REL_ERR.ets` | **完全相同** |
| `041_FAIL_INT_BOOL_REL_ERR.ets` | **完全相同** |
| `044_FAIL_INT_BOOL_REL_ERR.ets` | **完全相同** |
| `046_FAIL_INT_BOOL_REL_ERR.ets` | **完全相同** |

#### 组3: runtime — 8 个 `INT_REL_ASSERT` 文件完全一样
| 文件 | 内容 |
|------|------|
| `007_RUNTIME_INT_REL_ASSERT.ets` | `let a: int = 10; let b: int = 20; if ((a < b) != true) throw...` |
| `008_RUNTIME_INT_REL_ASSERT.ets` | **完全相同** |
| `010_RUNTIME_INT_REL_ASSERT.ets` | **完全相同** |
| `039_RUNTIME_INT_REL_ASSERT.ets` | **完全相同** |
| `043_RUNTIME_INT_REL_ASSERT.ets` | **完全相同** |
| `045_RUNTIME_INT_REL_ASSERT.ets` | **完全相同** |
| `047_RUNTIME_INT_REL_ASSERT.ets` | **完全相同** |
| `048_RUNTIME_INT_REL_ASSERT.ets` | **完全相同** |

**建议改法**: 每组保留 1 个文件，删除其余 7 个。50 个文件精简为 26 个。

---

### [高] [测试点错放] 24 个文件测试的是 int 关系运算，非本章节的 string 关系运算符

`7.27.3` 章节规范为 **String Relational Operators**（字符串关系运算符），但 24 个重复文件测试的完全是 `int` 类型的 `<`、`<=`、`>`、`>=`：

```
EXP_07_27_03_029_PASS_INT_REL_BASIC   → 测试 int < int，非 string
EXP_07_27_03_009_FAIL_INT_BOOL_REL_ERR → 测试 int < boolean，非 string
EXP_07_27_03_007_RUNTIME_INT_REL_ASSERT → 测试 int 运行时比较，非 string
```

这些文件属于 `7.27.2_Numeric_Relational_Operators` 章节的测试范畴，放在 `7.27.3` 属于**章节归属错误**。

**建议改法**: 将 24 个 int 关系运算符文件移至 `7.27.2_Numeric_Relational_Operators` 目录，或从本目录删除（仅保留 26 个真正的 string 关系运算符测试）。

---

### [高] [编号冲突] compile-pass 中 001 和 002 编号被两个文件共享

| 编号 | 文件1 | 文件2 |
|------|-------|-------|
| 001 | `001_PASS_STRING_BASIC.ets` | `001_PASS_STRING_BASIC_CMP.ets` |
| 002 | `002_PASS_STRING_EMPTY.ets` | `002_PASS_STRING_LEXICOGRAPHIC.ets` |

虽然文件名完整名称不同，但编号前缀 `001` 和 `002` 被两个文件共享，产生歧义。

**建议改法**: 使用唯一编号，如 `001`、`002`、`003`。

---

## 二、中严重度问题

### [中] [缺少负向用例] compile-fail — 未覆盖 undefined / null / symbol

当前 compile-fail 覆盖了 string 与以下类型的比较：
- number (003, 011)
- boolean (004, 012)
- bigint (013)
- double (014)
- float (016)
- Object (015)

**缺失**: `undefined`、`null`、`symbol`、`enum`

**建议改法**: 新增 `string < undefined`、`string < null`、`string < symbol` 的 compile-fail 测试。

---

### [中] [编号不连续 — 大段跳号] 三类用例编号存在巨大间隙

| 段 | 编号范围 | 说明 |
|----|---------|------|
| compile-pass | 001-006 → 029 | 缺少 007-028 |
| compile-fail | 003,004,009,011-016 → 031 | 缺少大量编号 |
| runtime | 005-008,010,021-028 → 039 | 缺少 009,011-020,029-038 |

**建议改法**: 精简至 26 个文件后重新连续编号。

---

### [中] [001_PASS_STRING_BASIC.ets 与 001_BASIC_CMP 功能重叠]

两个 001 文件都测试基本 string 关系运算，`BASIC_CMP` 是 `BASIC` 的完整版（有函数包装），`BASIC` 仅有声明语句。功能完全重叠。

**建议改法**: 合并为一个文件。

---

### [中] [002_PASS_STRING_LEXICOGRAPHIC 应属于 runtime]

`002_PASS_STRING_LEXICOGRAPHIC.ets` 包含 `console.log` 输出和 `let r1: boolean = 'a' < 'b'` 赋值，具有运行时语义，放在 compile-pass 不准确，应移至 runtime 目录。

**建议改法**: 移至 runtime 目录。

---

## 三、低严重度问题

### [低] [1.5f 字面量风险] compile-fail/016_FAIL_STRING_FLOAT.ets:10 — `1.5f` 后缀可能无效

```typescript
let f: float = 1.5f;  // 'f' 后缀在标准 ArkTS 中可能不是合法语法
```

虽然这是 compile-fail 测试（预期编译失败），但如果失败原因是语法错误而非类型错误，则与测试设计意图（string vs float 类型不兼容）不一致。

### [低] [int 类型兼容性] 24 个重复文件使用 `int` 类型

ArkTS 中 `int` 是否为内置类型取决于编译器版本。如果 `int` 不被支持，则 compile-pass 的 INT_REL_BASIC 文件也会 FAIL。

---

## 四、正异常检查

| 检查项 | 结论 |
|--------|------|
| @expect 标签 | ✅ 全部 50 个文件正确匹配目录类型 |
| @section 标签 | ✅ 全部正确标记为 7.27.3 |
| @id 标签 | ✅ 每个文件唯一 |
| 每个用例至少一个断言 | ✅ runtime 文件全部有 `throw Error` 断言 |
| @design 注释 | ✅ 全部存在（虽然重复文件是模板化的） |
| String 正异常覆盖 | ✅ `<`、`<=`、`>`、`>=` 均已覆盖 |
| String 编译失败覆盖 | ✅ string vs number/boolean/bigint/double/float/object 已覆盖 |

---

## 五、总结

### 问题汇总

| # | 严重度 | 类别 | 范围 | 问题 |
|---|--------|------|------|------|
| 1 | **高** | 版权缺失 | 全部 50 文件 | 无 Apache 2.0 版权 header |
| 2 | **高** | 严重重复 | 24 个文件 (48%) | 3组 × 8 个副本完全相同 |
| 3 | **高** | 章节错放 | 24 个重复文件 | 测试 int 而非 string，应属 7.27.2 |
| 4 | **高** | 编号冲突 | compile-pass | 001 和 002 编号被两个文件共享 |
| 5 | **中** | 缺负向用例 | compile-fail | string vs undefined/null/symbol 未覆盖 |
| 6 | **中** | 编号不连续 | 全部 | 大段跳号，无模式 |
| 7 | **中** | 功能重叠 | 001_PASS | 两个 001 文件测试相同功能 |
| 8 | **中** | 分类错误 | 002_LEXICOGRAPHIC | 应属 runtime 而非 compile-pass |
| 9 | **低** | 语法风险 | 016_FAIL | `1.5f` 后缀可能无效 |
| 10 | **低** | 类型兼容 | 24 重复文件 | `int` 类型支持度取决于编译器 |

### 核心结论

**50 个文件中 24 个是纯粹的冗余副本（48%），且属于错误的章节**。真正有效的 string 关系运算符测试仅约 26 个。

建议:
1. 删除 24 个重复文件，保留 26 个有效文件
2. 为全部文件补充版权 header
3. 重新连续编号
4. 补充 undefined / null / symbol 的负向测试
