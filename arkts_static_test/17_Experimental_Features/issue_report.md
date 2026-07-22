# 17 Experimental Features Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后编译验证：2026-06-26，es2panda `--extension=ets`（Linux native），**570** 个用例全量实测（审查报告复测）。
>
> **实测统计**（2026-06-26 复测）：compile-pass 253/254（1 异常 C-17.4-02）；compile-fail 162/173 按预期失败（**11** unexpected-pass，含 🆕 NEW-17.13-01）；runtime 137/143 编译通过（5 编译期拒绝 D-17.2-01/D-17.2-02）+ 1 native 异常未抛出（NEW-17.10.1-01）。**异常合计 18 项**。
>
> 注：§17 为实验特性章节，部分"编译器不支持"属实验特性未实现（语言差异点），非编译器 bug。下表区分 **C 类**（编译器未实现 spec 检查 / 崩溃）与 **D 类**（spec 与实现不一致）。无法立即定性的标 **待确认**（不强写结论）。

| ID | Case | Symptom | Expected | Actual | Status |
|----|------|---------|----------|--------|--------|
| C-17.4-02 | EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY / EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY | 函数类型数组声明编译失败 | compile-pass / runtime | compile error ESE0127 (EXIT=1) | 待确认 |
| D-17.2-01 | EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS / EXP2_17_02_01_022 / EXP2_17_03_023 | 负索引常量编译期即拒绝 | runtime error | compile-time error ESE0247 (EXIT=1) | D类-Spec不一致 |
| D-17.2-02 | EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE | length 赋值编译期即拒绝 | runtime immutable | compile-time error ESE0024 (EXIT=1) | D类-Spec不一致 |
| D-17.1.1-01 | EXP2_17_01_01_009_FAIL_INVALID_ESCAPE | `c'\q'` 非法转义序列编译通过 | compile-fail | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-17.13.2-01 | EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER / EXP2_17_13_2_008 | int/string 作为 receiver type 编译通过 | compile-fail | 编译通过 (EXIT=0) | D类-Spec不一致 |
| NEW-17.13-01 | EXP2_17_13_011_COMPILE_FAIL_RECEIVER_PRIMITIVE | 🆕 primitive receiver (int) 未检查——17.13 父节新增用例 | compile-fail | 编译通过 (EXIT=0) | D类-Spec不一致 |
| D-17.13.3-01 | EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT | receiver 函数参数数量错误未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.13.4-02 | EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER | primitive type receiver lambda 未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.2.1-01 | EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT | ValueArray 创建参数数量错误未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.4-03 | EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE | 类型参数元素类型未检查 | compile-fail | 编译通过 (EXIT=0) | 待确认 |
| D-17.16-01 | EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH | instanceof 不兼容类型仅 W1001506 警告 | compile-fail | 编译通过 (仅Warning) | D类-Spec不一致 |
| C-17.9.1-01 | EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY | 空 overload `{}` 编译通过 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| C-17.9.5-01 | EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST | 空 constructor overload 列表编译通过 | compile-time error | 编译通过 (EXIT=0) | C类-编译器未实现 |
| NEW-17.10.1-01 | EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR | native 函数调用：预期抛出 LinkerUnresolvedMethodError 但实际 exit=0 | runtime exception | exit=0（try/catch 未捕获到异常） | 待确认 |

### 异常详情

**C-17.4-02** ⭐⭐ MEDIUM — 函数类型数组声明编译失败（ESE0127）

- 复现：`EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY`（compile-pass 用例）与 `EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY`（runtime 用例）均编译失败，报 `Semantic error ESE0127`。
- 实测 (2026-06-25)：EXIT=1。
- 待确认：函数类型数组（如 `(() => void)[]`）是否为 spec §17.4 合法语法，抑或当前编译器限制。需核对 spec 后定类。

**D-17.2-01** ⭐⭐ MEDIUM — 负索引常量编译期即拒绝（ESE0247）

- Spec §17.2 规定数组越界为运行时错误，但编译器对负索引常量 `a[-1]` 在编译期即拒绝 (ESE0247: Index value cannot be less than zero)。
- 影响用例：`EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS`、`EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS`、`EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS`（均为 runtime 用例，本应运行时抛错，却被编译期拒绝，EXIT=1）。
- 分析：编译期检查比运行时更安全，但 spec 措辞未涵盖。建议更新 spec 明确编译期负索引常量检查。
- 分类：D 类（实现比 Spec 更严格）

**D-17.2-02** ⭐ LOW — length 赋值编译期即拒绝（ESE0024）

- Spec §17.2 描述 length "set once at runtime and cannot be changed later"，但编译器编译期即拒绝 `a.length = 5` (ESE0024)。
- 复现：`EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE`（runtime 用例编译失败，EXIT=1）。
- 分类：D 类（实现比 Spec 更严格）

**D-17.1.1-01** ⭐ LOW — `c'\q'` 非法转义序列编译通过

- Spec §17.1.1 要求 char 字面量中转义序列必须有效；`\q` 非标准转义，应 compile-time error，但编译器允许通过 (EXIT=0)。
- 跨语言：Java `'\q'` → illegal escape character 编译错误。
- 复现：`EXP2_17_01_01_009_FAIL_INVALID_ESCAPE`。
- 分类：D 类（Spec 与实现不一致）

**D-17.13.2-01** ⭐⭐ MEDIUM — int/string 作为 receiver type 编译通过

- Spec §17.13.2 限制 receiver type 为 class/interface/array，int/string 作 receiver 应 compile-fail，但编译通过 (EXIT=0)。
- 复现：`EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER`、`EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER`。
- 分类：D 类（Spec 与实现不一致）

**D-17.16-01** ⭐⭐ MEDIUM — instanceof 不兼容类型仅警告不拒绝

- 对不兼容类型 instanceof（如 `Object instanceof int`）仅 W1001506 警告，不产生编译错误 (EXIT=0)。
- 跨语言：Java/Swift 均编译错误。
- 复现：`EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH`。
- 分类：D 类（Spec 与实现不一致）

**C-17.9.1-01 / C-17.9.5-01** ⭐⭐ MEDIUM — 空 overload 列表编译通过

- `overload empty {}`（C-17.9.1-01）、空 constructor overload 列表（C-17.9.5-01）均编译通过 (EXIT=0)，spec 要求 compile-time error。C-17.9.5-02（多个 overload constructor）已在 2026-06-26 复测中确认编译器修复（EXIT=1 正确拒绝），已移除。
- 分类：C 类（编译器未实现检查）

**NEW-17.10.1-01** ⭐⭐ MEDIUM — native 函数运行时异常未抛出（🆕 新发现）

- 用例 `EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR` 预期调用无实现的原生函数 `unimplementedNative()` 时抛出 `LinkerUnresolvedMethodError`，但实际 exit=0（异常未抛出）。
- 实测（2026-06-26）：EXIT=0。用例通过 try/catch 捕获异常，但 native 函数可能返回默认值或未触发链接错误。
- 建议：排查 native 函数链接行为；或调整用例使用更可靠的异常检测方式。
- 分类：待确认（需排查编译器 native 链接机制后定类）

---

## 待确认项（需进一步核对 spec 后定性）

以下 5 项 compile-fail / runtime 用例，初步判断为编译器未实现相关检查或行为与 spec 不一致，需核对 §17 对应章节后确定分类：

- **D-17.13.3-01** `EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT`：receiver 函数参数数量错误（compile-fail unexpected-pass）
- **D-17.13.4-02** `EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER`：primitive type receiver lambda（compile-fail unexpected-pass）
- **D-17.2.1-01** `EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT`：ValueArray 创建参数数量（compile-fail unexpected-pass）
- **D-17.4-03** `EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE`：类型参数元素类型（compile-fail unexpected-pass）
- **NEW-17.10.1-01** `EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR`：native 函数调用预期抛出异常但 exit=0（runtime 异常未抛出）

## 已解决（已移除）

- ~~C-17.9.2-01/02~~（MethodOverload_MultiOverload / SpecialNames）：2026-06-25 复测已编译通过，从本报告移除（tips 规则21）。
- ~~C-17.9.5-02~~（EXP2_17_09_5_010_FAIL_CTOROVERLOAD_TWODECLARATIONS）：2026-06-26 复测确认编译器修复，EXIT=1 正确拒绝（原为编译通过）。
- ~~C-17.16.1-01~~（嵌套解构 segfault）、~~C-17.16.1-02~~（解构类型不匹配）：当前用例集中无此类用例，issue 条目已过时。
- ~~D-17.5-01~~（Indexable 索引参数类型）：2026-06-26 全量实测 15/15 全部通过，无异常。
- ~~D-17.11.3-01/02/03~~（命名构造器）：2026-06-26 全量实测 15/15 全部通过，无异常。
- ~~D-17.13.4-01~~（Lambda method-call 语法）：2026-06-26 全量实测 13/13 全部通过。
- ~~D-17.13.5-01~~（Lambda 隐式 this）：2026-06-26 全量实测 12/12 全部通过。
- ~~D-17.14-01~~（可选参数 trailing lambda）：2026-06-26 全量实测 14/14 全部通过。
