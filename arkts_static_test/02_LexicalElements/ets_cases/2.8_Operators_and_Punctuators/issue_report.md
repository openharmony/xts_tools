# 2.8 Operators and Punctuators Issue Report

**最后更新：** 2026-06-22

## 未解决异常列表

| ID | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|
| ISSUE-001 | LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets | Syntax error ESY0227: Unexpected token '??=' | runtime | compile-fail | 🔴 未解决 |

---

## 待确认问题

| ID | 问题描述 | 规范依据 | 状态 |
|---|---------|---------|------|
| CONFIRM-001 | 整数除法语义未明确 | spec/expressions.md | ⚠️ 待确认 |
| CONFIRM-002 | >>> 无符号右移跨语言差异 | spec/operators.md | ⚠️ 待确认 |

---

## 异常详情

### ISSUE-001: 空值合并赋值运算符编译失败

**用例文件：** `LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets`

**错误信息：**
```
[LEX_02_08_031_RUNTIME_NULLISH_UNION_FIELD_FACTOR.ets:16:11] Syntax error ESY0227: Unexpected token '??='.
```

**预期行为：** `??=` 空值合并赋值运算符应能正常使用
**实际行为：** 编译器不支持 `??=` 运算符

**可能原因：**
- 编译器尚未实现 `??=` 运算符
- 该语法特性可能在后续版本中支持

**状态：** 🔴 待编译器更新

---

### CONFIRM-001: 整数除法语义未明确

**问题描述：** spec/expressions.md 未明确定义整数除法语义。

**规范依据：**
- spec/expressions.md: 未明确定义整数除法语义

**实际行为：**
```typescript
let result: int = 10 / 3  // 结果为 3（整数除法）
```

**与业界静态语言对比：**
| 语言 | 10 / 3 结果 | 规范依据 |
|------|-----------|---------|
| **ArkTS** | 3（整数除法） | spec 未明确 |
| **Java** | 3（整数除法） | JLS §15.17 |
| **Swift** | 3（整数除法） | Swift Lang |
| **TypeScript** | 3.333...（浮点除法） | ECMAScript |

**待确认事项：**
1. spec 是否需要明确整数除法语义？
2. 是否需要与 TypeScript 保持一致（浮点除法）？

**状态：** ⚠️ 待确认（spec 未明确定义整数除法语义）

---

### CONFIRM-002: >>> 无符号右移跨语言差异

**问题描述：** >>> 无符号右移在 Swift 中不支持。

**规范依据：**
- spec/operators.md: 列出 >>> 为合法运算符

**与业界静态语言对比：**
| 语言 | >>> 运算符 | 规范依据 |
|------|----------|---------|
| **ArkTS** | ✅ 支持 | spec/operators.md |
| **Java** | ✅ 支持 | JLS §3.12 |
| **Swift** | ❌ 不支持 | Swift Lang |
| **TypeScript** | ✅ 支持 | ECMAScript |

**待确认事项：**
1. 是否需要在 spec 中说明 >>> 的跨语言差异？
2. Swift 测试时需要使用其他位运算替代。

**状态：** ⚠️ 待确认（spec 未说明跨语言差异）

---

## 异常统计

| 状态 | 数量 |
|------|------|
| 🔴 未解决 | 1 |
| ⚠️ 待确认 | 2 |
| **总计** | **3** |

---

**报告生成人：** GLM-5.1
**最后更新：** 2026-06-22
