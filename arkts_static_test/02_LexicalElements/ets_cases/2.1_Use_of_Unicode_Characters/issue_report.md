# 2.1 Use of Unicode Characters Issue Report

**最后更新：** 2026-06-22

## 未解决异常列表

| ID | Case | Symptom | Expected | Actual | Status |
|---|---|---|---|---|---|
| ISSUE-001 | LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets | Syntax error ESY0112: Unexpected token, expected an identifier | compile-pass | compile-fail | 🔴 未解决 |
| ISSUE-002 | LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE.ets | 孤立高代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-003 | LEX_02_01_013_FAIL_LONE_LOW_SURROGATE.ets | 孤立低代理编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-004 | LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW.ets | 高代理后跟 BMP 字符编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-005 | LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets | char 关系运算符编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |
| ISSUE-006 | LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets | char 与 number 比较编译通过 | compile-fail | compile-pass | ⚠️ SPEC 不一致 |

---

## 异常详情

### ISSUE-001: Unicode 转义标识符编译失败

**用例文件：** `LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets`

**错误信息：**
```
[LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER.ets:11:7] Syntax error ESY0112: Unexpected token, expected an identifier.
```

**预期行为：** Unicode 转义序列应能用于标识符名称
**实际行为：** 编译器拒绝 Unicode 转义标识符

**可能原因：**
- 编译器未完全支持 Unicode 转义标识符
- 用例语法不符合当前编译器实现

**状态：** 🔴 待编译器更新或用例修改

---

### ISSUE-002: 孤立高代理编译通过 ⚠️ SPEC 不一致

**用例文件：** `LEX_02_01_012_FAIL_LONE_HIGH_SURROGATE.ets`

**错误信息：** 无（编译通过）

**预期行为：** Unicode 规范要求代理必须成对使用，孤立高代理应编译失败
**实际行为：** 编译器允许孤立高代理存在

**规范依据：**
- spec/experimental.md: 未明确定义孤立代理规则
- Unicode 规范 UAX #16: 要求代理必须成对使用

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uD800"` | ⚠️ 编译通过 |
| Java | `String s = "\uD800";` | ✅ 编译通过 |
| Swift | `let s = "\u{D800}"` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-003: 孤立低代理编译通过 ⚠️ SPEC 不一致

**用例文件：** `LEX_02_01_013_FAIL_LONE_LOW_SURROGATE.ets`

**错误信息：** 无（编译通过）

**预期行为：** Unicode 规范要求代理必须成对使用，孤立低代理应编译失败
**实际行为：** 编译器允许孤立低代理存在

**规范依据：**
- spec/experimental.md: 未明确定义孤立代理规则
- Unicode 规范 UAX #16: 要求代理必须成对使用

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uDC00"` | ⚠️ 编译通过 |
| Java | `String s = "\uDC00";` | ✅ 编译通过 |
| Swift | `let s = "\u{DC00}"` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-004: 高代理后跟 BMP 字符编译通过 ⚠️ SPEC 不一致

**用例文件：** `LEX_02_01_014_FAIL_HIGH_SURROGATE_NO_LOW.ets`

**错误信息：** 无（编译通过）

**预期行为：** Unicode 规范要求高代理后必须跟低代理，不能跟 BMP 字符
**实际行为：** 编译器允许高代理后跟 BMP 字符

**规范依据：**
- spec/experimental.md: 未明确定义代理组合规则
- Unicode 规范 UAX #16: 要求高代理后必须跟低代理

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let s: string = "\uD800A"` | ⚠️ 编译通过 |
| Java | `String s = "\uD800A";` | ✅ 编译通过 |
| Swift | `let s = "\u{D800}A"` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-005: char 关系运算符编译通过 ⚠️ SPEC 不一致

**用例文件：** `LEX_02_01_018_FAIL_CHAR_RELATIONAL_OP.ets`

**错误信息：** 无（编译通过）

**预期行为：** cookbook/compatibility.md 明确禁止 char 关系运算符，应编译失败
**实际行为：** 编译器允许 char 关系运算符

**规范依据：**
- cookbook/compatibility.md: ❌ 禁止 char 关系运算符
- spec/experimental.md: 未明确定义 char 运算符

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let r: boolean = c'A' < c'B'` | ⚠️ 编译通过 |
| Java | `boolean r = 'A' < 'B';` | ✅ 编译通过 |
| Swift | `let r = Character("A") < Character("B")` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

### ISSUE-006: char 与 number 比较编译通过 ⚠️ SPEC 不一致

**用例文件：** `LEX_02_01_019_FAIL_CHAR_COMPARE_NUMBER.ets`

**错误信息：** 无（编译通过）

**预期行为：** cookbook/compatibility.md 明确禁止 char→number widening，应编译失败
**实际行为：** 编译器允许 char 与 number 比较

**规范依据：**
- cookbook/compatibility.md: ❌ 禁止 char→number widening
- spec/experimental.md: 未明确定义 char 与 number 关系

**跨语言对比：**
| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `let r: boolean = c'A' == 65` | ⚠️ 编译通过 |
| Java | `boolean r = 'A' == 65;` | ✅ 编译通过 |
| Swift | `let r = Character("A") == 65` | ❌ 编译错误 |

**状态：** ⚠️ D 类异常（Spec 与实现不一致）

---

**报告生成人：** GLM-5.1
**最后更新：** 2026-06-22
