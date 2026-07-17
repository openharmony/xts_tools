# 06 Contexts and Conversions Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D-6.02-01 | CON_06_02_016_FAIL_VOID_STRING_CONCAT | void + string 应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-6.02-02 | CON_06_02_028_FAIL_FLOAT_ZERO_STRING_LOSS | 浮点零字符串化丢失 `.0` | `0.0` 转 string 保留无信息丢失表示 | `0.0 + "..."` 得到 `"0..."` | D类-Spec不一致 |
| D-6.02-03 | stdlib 类名冲突 | 用户类名 `Box` 与 stdlib 冲突 | 用户可定义普通类名或文档明确保留名 | `class Box` 报已定义 | D类-Spec不一致 |
| D-6.03-01 | CON_06_03_01_015 原 string enum `<` | string enum 支持关系比较 | string enum 不应进入 numeric relational context，或 spec 明确允许 | 编译器允许 string enum `<` 比较 | D类-Spec不一致 |
| D-6.03-02 | CON_06_03_02_* | char 无符号范围未在 spec 说明 | spec 明确 char 范围/无符号语义 | 实现表现为 0~65535 无符号 char | D类-Spec不一致 |
| D-6.04-01 | CON_06_04_02_* | widening numeric to union “恰好一个更大成员”规则过严 | 可选择最近更大类型，或 spec 明确严格唯一规则 | `byte→short|int` 因多个更大成员被拒绝 | D类-Spec不一致 |
| D-6.04-02 | CON_06_04_02_* | 数值字面量到 union 的候选歧义 | 字面量可按默认/最合适成员推断，或 spec 明确拒绝 | `let u: byte|int = 100` 因同时兼容多个成员报错 | D类-Spec不一致 |
| D-6.04-03 | CON_06_04_02_* | subtyping match 被计入 union widening 候选 | 仅“更大 numeric type”参与唯一性判断 | `int→byte|int|long` 因相等成员+更大成员被拒绝 | D类-Spec不一致 |

### 异常详情

**D-6.02-01** ⭐⭐ MEDIUM — `void + string` 编译通过

- Spec §6.2 列出 integer、floating、boolean、enum(nullish)、string、reference toString() 的 string conversion 规则，未列出 `void`。
- 实际：`"result: " + voidFunction()` 编译通过，void 返回值被当作可转换值处理。
- 原用例被 AI 不当替换为 `true + false`，已恢复为 `CON_06_02_016_FAIL_VOID_STRING_CONCAT`。
- Java/Swift 均拒绝 void/Void 直接参与字符串拼接。
- 建议：明确 void 是否可转 string；若不可，应产生 compile-time error。
- 分类：D 类（Spec 与实现不一致）

**D-6.02-02** ⭐ LOW — 浮点零字符串化丢失 `.0`

- Spec §6.2 要求 floating-point 转 string “without the loss of information”。
- 实际：`0.0 + " is zero"` 得到 `"0 is zero"`，丢失浮点形式信息。
- Java/Swift 均输出 `"0.0"`。
- 建议：浮点转 string 保留 `.0`，或 spec 明确允许最短十进制表示。
- 分类：D 类（Spec 与实现不一致）

**D-6.02-03** ⭐ LOW — 用户类名 `Box` 与 stdlib 冲突

- 用户定义 `class Box` 与标准库 `Box` 冲突，报 `Class 'Box' is already defined`。
- 原用例已重命名为 `Container` 规避，但底层冲突问题仍在。
- Java/Swift 通常通过 package/module 隔离同名类型。
- 建议：在文档中列出 stdlib 保留类名，或提供明确命名空间隔离规则。
- 分类：D 类（Spec/stdlib 文档不完整）

**D-6.03-01** ⭐ LOW — string enum 支持关系比较

- Spec §6.3 说明 enum 可进入 numeric context 的前提是 base type 为 numeric。
- 实际：string enum 可进行 `<` 比较，按字符串字典序行为处理。
- 建议：明确 string enum 是否允许关系比较；若允许，应补入 relational context 规则。
- 分类：D 类（Spec 与实现不一致）

**D-6.03-02** ⭐ LOW — char 无符号范围未在 spec 说明

- 6.3.2 规定 char 与 numeric relational/equality 转换，但未说明 char 的取值范围与无符号语义。
- 实测表现为 `char` 是 0~65535 的无符号数值。
- 建议：spec 明确 char 的数值范围、与 byte/int 比较时的符号规则。
- 分类：D 类（Spec 文档不完整）

**D-6.04-01** ⭐⭐ MEDIUM — widening numeric to union “恰好一个更大成员”规则过严

- Spec §6.4.2：numeric value 可转为 union 中单个更大 numeric type。
- 实际：`byte→short|int` 因 short/int 都是更大成员而拒绝，即使 short 是最近更大类型。
- 建议：改为选择最近更大类型，或在 spec 中明确“多个更大成员必须报错”。
- 分类：D 类（Spec 与实现/设计不一致）

**D-6.04-02** ⭐⭐ MEDIUM — 数值字面量到 union 的候选歧义

- `let u: byte|int = 100` 中 100 同时兼容 byte 与 int，编译器报候选歧义。
- 建议：按默认类型或最窄可容纳类型确定成员；若维持拒绝，应在 spec 中明确。
- 分类：D 类（Spec 与实现/设计不一致）

**D-6.04-03** ⭐ LOW — subtyping match 被计入 union widening 候选

- Spec 文本强调 “larger numeric type”，但实现将相等成员（subtyping match）也计入候选。
- 例：`int→byte|int|long` 因 `int` 成员 + `long` 更大成员形成多个候选而拒绝。
- 建议：澄清 subtyping 与 widening-to-union 的优先级。
- 分类：D 类（Spec 与实现不一致）

---

## 覆盖统计（更新于 2026-07-02）

新增 spec 覆盖遗漏补充用例 10 个（§6.2 bigint+string、§6.5 NaN/Inf 特殊值转换、int→short/long→byte 位截断、double→byte/short 两步、NaN→float/Inf→float），不影响上述 issue 列表。

| 项目 | 数值 |
|------|:---:|
| 总用例 | 263 |
| compile-pass | 111 |
| compile-fail | 60 |
| runtime | 92 |
| 当前未解决 issue | 7 |

> 注：D-6.01-01（float 字面量）、D-6.01-02（`as` cast）已移除——编译器行为符合 spec。
> D-6.02-01 已恢复：原用例被不当隐藏，已重新创建 `CON_06_02_016_FAIL_VOID_STRING_CONCAT` 跟踪。
