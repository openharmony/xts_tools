# 09 Classes Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后编译验证：2026-06-23，es2panda (`--extension=ets`)，154 compile-fail + 131 compile-pass = 285 例全部实测。
>
> 2026-06-26 补充复核：对 9.7–9.10 四节 90 用例（含 runtime 编译）全量实测，es2panda `--extension=ets`（Linux native）。其中 C-9.08-01 用例已从 compile-pass 归位 compile-fail 作负向看护；其余 issue（9.1–9.6、9.7.x、9.9.x 子节）不在本次复核范围，保留 2026-06-23 结论。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C-9.08-01 | CLS_09_08_008 | getter/setter 修饰符一致性未检查 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-9.07-01 | CLS_09_07_015 | override 方法默认参数值不一致未检查 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-9.07-02 | CLS_09_07_046 | native + static 修饰符组合未检查 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-9.04-01 | CLS_09_04_010 | TS 风格方法重载声明（无 body 签名）不支持 | compile-pass（用例预期） | 编译失败 ESE0017 | C类-用例设计问题 |
| D-9.02-01 | CLS_09_02_009 | 显式 extends Object 行为与 spec/用例预期不一致 | compile-time error | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-9.06-02 | CLS_09_06_5_005 | late init + optional 组合未检查 | compile-time error | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-9.06-03 | CLS_09_06_4_006 | super 在字段初始化器中使用无 warning | compile-time warning | 编译通过且无 warning (EXIT=0) | D类-Spec不一致 |
| D-9.09-01 | CLS_09_09_009 / CLS_09_09_010 | 命名构造器实验特性不支持 | experimental feature | 编译失败 ESE0087（正确拒绝） | D类-实验特性差异 |

### 异常详情

**C-9.08-01** ⭐⭐ MEDIUM — getter/setter 修饰符一致性未检查

- Spec §9.8 要求同名 getter 和 setter 同时存在时，accessor modifiers 必须一致，否则 compile-time error。
- 实际：getter 为 `static`，setter 为非 static，编译通过 (EXIT=0)。
- 用例路径：`ets_cases/9.8_Class_Accessor_Declarations/compile-fail/CLS_09_08_008_FAIL_GETTER_SETTER_MODIFIER_MISMATCH.ets`
- 2026-06-26 归位：该用例原误置于 compile-pass（@id/@design 标 FAIL 却放 pass 目录，违反 tips 三节），现按 spec §9.8 + CLS-G1 移入 compile-fail 作负向看护——运行表现为 unexpected pass（编译器未实现检查），与本条 issue 一致，待编译器补全后转为预期失败。
- Swift 对属性访问器修饰符一致性要求更严格；Java 无直接 accessor 语法。
- 建议：es2panda 增加 getter/setter modifier consistency 检查。
- 分类：C 类（编译器未实现 Spec 检查）

**C-9.07-01** ⭐⭐ MEDIUM — override 方法默认参数值不一致未检查

- Spec §9.7.5 要求 overriding method 的默认参数值必须与 overridden method 保持一致。
- 实际：
  ```typescript
  class Base { foo(x: int = 10): void {} }
  class Derived extends Base { override foo(x: int = 20): void {} }
  ```
  编译通过 (EXIT=0)。
- 用例路径：`ets_cases/9.7.5_Overriding_Methods/compile-pass/CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT.ets`
- 建议：override 兼容性检查中加入默认参数值一致性。
- 分类：C 类（编译器未实现 Spec 检查）

**C-9.07-02** ⭐ MEDIUM — native + static 修饰符组合未检查

- Spec §9.7.1 约束 static method modifier 组合，当前记录为 static 不能与 native 组合。
- 实际：`class Bad046 { native static foo(): void }` 编译通过 (EXIT=0)。
- 用例路径：`ets_cases/9.7.6_Native_Methods/compile-pass/CLS_09_07_046_PASS_NATIVE_STATIC.ets`
- 建议：补充 native/static 修饰符组合合法性检查，或明确该组合允许。
- 分类：C 类（编译器未实现 Spec 检查）

**C-9.04-01** ⭐⭐ MEDIUM — TS 风格方法重载声明导致编译失败

- 用例 `CLS_09_04_010_PASS_METHOD_OVERLOAD` 使用 TS 风格重载（多个无 body 签名 + 一个实现）：
  ```typescript
  class Overload010 {
    foo(x: number): number      // ← ESE0017: Only abstract or native methods can't have body
    foo(x: string): string
    foo(x: number | string): number | string { ... }
  }
  ```
- 实际：编译失败，`Semantic error ESE0017` (EXIT=1)。
- 用例路径：`ets_cases/9.4_Class_Members/compile-pass/CLS_09_04_010_PASS_METHOD_OVERLOAD.ets`
- ArkTS 方法重载需使用 §17.9 实验特性 `overload` 关键字显式声明，不支持 TS 风格的多签名语法。
- 建议：将用例从 compile-pass 移至 compile-fail，或改用 `overload` 关键字重写为实验特性用例。
- 分类：C 类（用例设计未对齐 ArkTS 语法规则）

**D-9.02-01** ⭐ LOW — 显式 extends Object 行为与 spec/用例预期不一致

- 用例 `CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT` 期望显式 `extends Object` 编译失败。
- 实际：`class ExplicitObject extends Object {}` 编译通过 (EXIT=0)。
- 用例路径：`ets_cases/9.2_Class_Extension_Clause/compile-fail/CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT.ets`
- Java 允许显式 extends Object；Swift 无通用 Object 基类可直接对比。
- 建议：若设计允许，应将用例改为 PASS 并更新 spec/说明；若禁止，应补充编译器检查。
- 分类：D 类（Spec/用例预期与实现不一致）

**D-9.06-02** ⭐⭐ MEDIUM — late init + optional 组合未检查

- Spec §9.6.5 要求 late initialization field 不能是 readonly 或 optional。
- 实际：`val!: string` 编译通过 (EXIT=0)。
- 用例路径：`ets_cases/9.6.5_Fields_with_Late_Initialization/compile-fail/CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL.ets`
- Swift 有隐式解包 optional 机制，Java 无 late init 等价语法。
- 建议：补充 late init 字段与 optional/readonly 的组合检查。
- 分类：D 类（Spec 与实现不一致）

**D-9.06-03** ⭐ LOW — super 在字段初始化器中使用无 warning（🆕 新发现）

- Spec §9.6.4 规定字段 initializer expression 使用 `this` 或 `super` 时应产生 compile-time warning。
- 实际：`this` 已产生 Warning W0010（✅），但 `super.method()` 编译通过且**无任何 warning** (EXIT=0)。
- 用例路径：`ets_cases/9.6.4_Field_Initialization/compile-fail/CLS_09_06_4_006_FAIL_SUPER_IN_INITIALIZER.ets`
- 编译器只检测了 `this` 而未检测 `super`，覆盖面不完整。
- 建议：es2panda 补充对 `super` 在字段初始化器中使用的 warning 检测。
- 分类：D 类（Spec 要求 warning 但编译器未覆盖 super 情况）

**D-9.09-01** ⭐ LOW — 命名构造器实验特性未实现

- Spec 标注 constructor optional identifier 为 experimental feature（§9.9.2）。
- 实际：`super.init(x)` / `this.init(0, 0)` 编译失败，报 `Semantic error ESE0087: Property 'init' does not exist` (EXIT=1)。
- 用例路径：
  - `ets_cases/9.9.2_Explicit_Constructor_Call/compile-fail/CLS_09_09_009_FAIL_SUPER_NAMED_CALL.ets`
  - `ets_cases/9.9.2_Explicit_Constructor_Call/compile-fail/CLS_09_09_010_FAIL_THIS_NAMED_CALL.ets`
- 两个用例均为 compile-fail 预期，实际 EXIT=1，**用例预期与实际行为一致**。
- Java/Swift 均无等价命名构造器语法；Dart 有类似 named constructor。
- 建议：明确该实验特性的支持状态；若计划不支持，可更新用例注释说明。
- 分类：D 类（实验特性差异，用例行为正确）

---

## 已解决问题

**~~D-9.06-01~~** ✅ 已修复 — `this` 在字段初始化器中使用现在产生 Warning

- 原问题：Spec §9.6.4 要求 `this` 在字段初始化器中使用时产生 compile-time warning，但编译器无任何诊断。
- 现状（2026-06-23 实测）：编译器输出 `Warning W0010: The instance field initializer expression cannot use the this.`，EXIT=0。
- Spec 要求的是 "compile-time warning"（非 error），当前行为完全符合 Spec。
- 用例 `CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER` 原为 compile-fail（预期 EXIT≠0），但 Spec 要求 warning 而非 error，建议将该用例从 compile-fail 移至 compile-pass 或标注为 warning-only。
- 用例路径：`ets_cases/9.6.4_Field_Initialization/compile-fail/CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER.ets`
