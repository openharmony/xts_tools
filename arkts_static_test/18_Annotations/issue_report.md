# 18 Annotations Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

## 未解决异常

| ID | 子章节 | Case | Symptom | Expected | Actual | Status |
|----|--------|------|---------|----------|--------|--------|
| 001 | 18.6 | ANN_18_06_005 | 注解不能用作变量类型（ESE0159） | 根据 spec，RUNTIME/BYTECODE 注解应隐式声明抽象类，可用作类型 | 编译器报 ESE0159 "Annotations cannot be used as a type" | D 类：Spec 与实现不一致 |

### 异常详情

**001** ⭐⭐ MEDIUM — RUNTIME/BYTECODE 注解隐式抽象类不可用作类型

- **问题描述：** ArkTS spec 第 18.6 节规定，@Retention("RUNTIME") 或 @Retention("BYTECODE") 注解会隐式声明一个同名的抽象类，包含 readonly 字段，可通过反射库访问。但当前编译器禁止将注解名称用作类型（ESE0159），且缺少标准的 getAnnotation 反射 API。

- **复现用例 ID：** ANN_18_06_005_FAIL_ANNOTATION_AS_TYPE

- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS Spec | `let x: MyAnno = getAnnotation(A, MyAnno)` | ✅ 应通过 |
| ArkTS 实现 | `let x: MyAnno = getAnnotation(A, MyAnno)` | ❌ ESE0159 |
| Java | `MyAnno a = A.class.getAnnotation(MyAnno.class)` | ✅ 编译+运行通过 |
| Swift | N/A | N/A |

- **建议：** 编译器应支持 RUNTIME/BYTECODE 注解名称作为类型使用，并提供标准的反射 API。

---

## 设计问题汇总（永久档案）

以下内容汇总自各子章节 `design_issues_report_*.md`，记录 ArkTS 与 Java/Swift 的行为差异及规范一致性发现。

### 章节 18.1 — Declaring Annotations

**结论：** 与 spec 一致，无设计问题。所有 14 用例通过。

**行为差异（语言设计选择）：**

| 场景 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 注解作为字段类型 | ❌ ESE0159 | ✅ 允许 | N/A |
| 注解名冲突诊断 | ESE0370 + ESE0351 | duplicate class/interface | N/A |

---

### 章节 18.1.1 — Types of Annotation Fields

**结论：** 与 spec 一致，无设计问题。所有 26 用例通过。

**行为差异：**

| 场景 | ArkTS | Java |
|------|-------|------|
| 允许的字段类型 | Numeric, boolean, string, enum, arrays | 基本类型、String、Class、enum、Annotation、数组 |
| 注解作为字段类型 | ❌ ESE0159 | ✅ 允许 |
| 类作为字段类型 | ❌ ESE0042 | ✅ Class<?> 允许 |

---

### 章节 18.2 — Using Annotations

**结论：** 与 spec 一致，无设计问题。所有 23 用例通过。

**行为差异：**

| 场景 | ArkTS | Java |
|------|-------|------|
| lambda 上注解 | ✅ 需 SOURCE 策略 | ❌ 不支持 |
| 变量上注解 | ✅ 需 SOURCE 策略 | ❌ 不支持 |
| 重复注解 | ❌ ESE0041 | ❌ 默认禁止 |

---

### 章节 18.2.1 — Using Single Field Annotations

**结论：** 与 spec 一致，无设计问题。所有 11 用例通过。

**行为差异：**

| 场景 | ArkTS | Java |
|------|-------|------|
| 简写条件 | 任意单字段 `@Anno(expr)` | 仅 `value()` 字段支持简写 |

---

### 章节 18.3 — Exporting and Importing Annotations

**结论：** 与 spec 一致，无设计问题。所有 8 用例通过。

**行为差异：**

| 场景 | ArkTS | Java |
|------|-------|------|
| `import type` 注解 | ❌ ESY7095 | ✅ 允许（注解是 interface） |

---

### 章节 18.4 — Ambient Annotations

**结论：** 与 spec 一致，无设计问题。所有 7 用例通过。

Ambient annotations 是 ArkTS 声明系统特有概念，Java/Swift 无直接对应。编译器匹配检查（ESE0038/ESE0039/ESE0040）准确清晰。

---

### 章节 18.5 — Standard Annotations

**结论：** 与 spec 一致，无设计问题。所有 7 用例通过。

**关键诊断：**
- `ESE1122645: Annotation '@Retention'/'@Target' can only be applied to annotation declarations`
- `ESE0004: Invalid value for 'policy' field`

---

### 章节 18.5.1 — Retention Annotation

**结论：** 与 spec 一致，无设计问题。所有 9 用例通过。

**关键诊断：**
- `ESE0004: Invalid value for 'policy' field. Must be SOURCE, BYTECODE, or RUNTIME`
- `ESE1122645: Annotation '@Retention' can only be applied to annotation declarations`

---

### 章节 18.5.2 — Target Annotation

**结论：** 与 spec 一致，所有 9 用例通过。

**编译器实现注意：** Spec 中 `@Target` 短格式为 `@Target(["CLASS", "METHOD"])`（字符串字面量数组），但当前编译器实现要求枚举形式 `@Target({targets: [AnnotationTargets.CLASS]})`。

**关键诊断：**
- `ESE495032: Annotation cannot be used on X. It is only allowed on: Y`
- `ESE263981: Annotation target is duplicated`

---

### 章节 18.6 — Runtime Access to Annotations

**结论：** ⚠️ 发现 D 类问题（Spec 与实现不一致）。

**问题：** Spec 规定 `@Retention("RUNTIME")` / `@Retention("BYTECODE")` 注解会隐式声明抽象类，但编译器禁止用作类型（ESE0159）。详见上方未解决异常 ID 001。
