# 17.15 Accessor Declarations - ArkTS 与 Java/Swift/TS 行为差异及规范一致性报告

**报告日期：** 2026-06-23
**测试用例数：** 15（compile-pass: 6, compile-fail: 5, runtime: 4）
**目的：** 通过用例执行（编译期 + 真实运行时）以及 Java/Swift 对比，确认 ArkTS 行为与 spec 的一致性，并记录语言设计差异和待确认问题。

---

## 报告分类口径

| 分类 | 说明 | 处理方式 |
|------|------|---------|
| A 类 | ArkTS 合理设计 | 修改用例适配 |
| B 类 | ArkTS 设计问题 | 修改用例 + 记入本报告 |
| C 类 | 编译器实现 bug | 临时绕过 + 记录 |
| D 类 | Spec 与实现不一致 | 保留原始 FAIL 用例（标注⚠️SPEC不一致）+ 记入本报告 |

| 分类 | 数量 | 用例 |
|------|------|------|
| A 类 | 0 | - |
| B 类 | 0 | - |
| C 类 | 0 | - |
| D 类 | 0 | - |

---

## 一、符合 ArkTS spec 的语言设计差异

### 差异 A：顶层 getter/setter 是 ArkTS 独有特性（符合 spec 17.15）

**ArkTS 实测行为：**
顶层 getter/setter 编译和运行完全正确，语法和使用方式与 spec 一致。

**跨语言对比：**
| 语言 | 顶层 getter/setter |
|------|-------------------|
| ArkTS | ✅ 支持 |
| Java | ❌ 不支持（仅类级 getXxx()/setXxx() 方法约定） |
| Swift | ✅ 支持（computed property，但语法和概念有差异） |

**分类：** 符合 ArkTS spec 的语言设计差异，ArkTS 在此维度超越了 Java

---

### 差异 B：Setter 不能声明返回类型（符合 spec 17.15）

**ArkTS 实测行为：**
```typescript
set myValue(v: int): void { ... }
// ESY0241: Setter must not have return type even if it is void
```

**跨语言对比：**
| 语言 | Setter 返回类型 |
|------|---------------|
| ArkTS | ❌ 不能声明（包括 void） |
| Java | ✅ 可以声明 void（这是方法调用） |
| Swift | ✅ 隐式无返回 |

**分类：** 符合 ArkTS spec 的语言设计差异，ArkTS 将 setter 作为属性访问而非方法调用处理

---

### 差异 C：变量式访问语法（符合 spec 17.15）

**ArkTS 实测行为：**
Getter/setter 像变量一样使用：`value = 42`（调用 setter），`let x = value`（调用 getter）。

**跨语言对比：**
| 语言 | 访问语法 |
|------|---------|
| ArkTS | `value = 42` / `let x = value` |
| Java | `setValue(42)` / `int x = getValue()` |
| Swift | `value = 42` / `let x = value` |

**分类：** 符合 ArkTS spec 的语言设计差异，ArkTS 与 Swift 一致的变量式访问语法

---

### 差异 D：Native 访问器（符合 spec 17.15）

**用例：** EXP2_17_15_010_FAIL_NATIVE_GETTER_BODY

**ArkTS 实测行为：**
```typescript
native get nativeValue(): int { return 42 }
// ESE0083: Native, Abstract and Declare methods cannot have body
```

Non-native 必须要有 body，native 不能有 body — 与 spec 完全一致。

**跨语言对比：**
| 语言 | Native 访问器支持 |
|------|------------------|
| ArkTS | ✅ `native get/set` |
| Java | ✅ `native` 修饰符（方法） |
| Swift | ❌ 无直接 native 概念 |

**分类：** 符合 ArkTS spec 的语言设计差异

---

## 二、无 Spec 与实现不一致

所有 15 个用例的编译器和运行时行为与 spec 17.15 完全一致。

### Spec 覆盖度评估

| Spec 规则 | 测试覆盖 | 结果 |
|----------|---------|------|
| 顶层/命名空间 getter/setter | 001-006, 012-015 | ✅ 一致 |
| Getter 需要返回类型或可推断 | 001, 006 | ✅ 一致 |
| Getter 不能有参数 | 009 | ✅ 一致 |
| Setter 单个参数 | 002, 003 | ✅ 一致 |
| Setter 不能有返回类型 | 全部 setter 用例 | ✅ 一致 |
| Setter 不能有可选参数 | 008 | ✅ 一致 |
| 不可作为调用表达式 | 007 | ✅ 一致 |
| Native 不能有 body | 010 | ✅ 一致 |
| 非 Native 必须有 body | 011 | ✅ 一致 |
| 作用域内名称唯一 | 003 | ✅ 一致 |

---

## 三、总结

| 类别 | 数量 |
|------|------|
| 符合 spec 的设计差异 | 4 |
| D 类 SPEC 不一致 | 0 |
| 编译器实现问题 | 0 |
| 待确认问题 | 0 |

**整体评估：** 17.15 Accessor Declarations 的 spec 与实现高度一致，所有编译时约束均正确执行，运行时行为完全符合预期。ArkTS 在此特性上设计清晰、实现完整。
