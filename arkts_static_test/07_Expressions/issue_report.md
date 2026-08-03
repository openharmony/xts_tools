# 07 Expressions Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后全量编译验证：2026-07-17，es2panda `--extension=ets`，2129 例全部实测。2107 通过，22 例存在 spec/实现差异。

| ID | Case | Symptom | Expected | Actual | Status |
|----|------|---------|----------|--------|--------|
| 7.1.1-001 | EXP_07_01_01_021_FAIL_ASSIGN_TO_NON_LVALUE | 赋值给非左值编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.1.1-002 | EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT | 逻辑与后赋值给非左值编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.1.1-004 | EXP_07_01_01_024_FAIL_TERNARY_PRECEDENCE_TYPE | 空合并后三元条件非boolean类型编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.2.2-001 | EXP_07_02_02_017_FAIL_NEGATIVE_ARRAY_INDEX | 字面量负数组索引编译时错误 | runtime-RangeError | compile-fail | D 类: Spec 与实现不一致 |
| 7.11.4-001 | EXP_07_11_04_007_FAIL_STATIC_VOID_ASSIGNED | void 静态方法结果赋值给变量编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.11.4-002 | EXP_07_11_04_008_FAIL_INSTANCE_VOID_ASSIGNED | void 实例方法结果赋值给变量编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.13.3-001 | EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS | Record 字段访问符号 x.key2 编译器不支持（spec 说等价于 x['key2']）| compile-pass | compile-fail | D 类: Spec 与实现不一致 |
| 7.13.3-002 | EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX | Case1 变量索引应报编译错但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.7-001 | EXP_07_21_07_025_FAIL_ENUM | ~enum 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-001 | EXP_07_21_08_021_FAIL_INT | !int 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-002 | EXP_07_21_08_022_FAIL_STRING | !string 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-003 | EXP_07_21_08_023_FAIL_OBJECT | !Object 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-004 | EXP_07_21_08_024_FAIL_NULL | !null 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.21.8-005 | EXP_07_21_08_025_FAIL_ENUM | !enum 应报编译时错误但编译器允许通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.23.2-001 | EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL | int 字面量除零编译检测缺失 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.23.3-001 | EXP_07_23_03_027_FAIL_REMAINDER_BY_ZERO_LITERAL | int 字面量取余除零编译检测缺失 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.24-001 | EXP_07_24_033 中负数基底零指数 | (-5.0)**0.0 返回 NaN（应为 1.0） | 1.0 | NaN | D 类: Spec 与实现不一致 |
| 7.24-002 | EXP_07_24_041 中负数基底整数指数 | (-2.0)**3.0 返回 NaN（应为 -8.0） | -8.0 | NaN | D 类: Spec 与实现不一致 |
| 7.26-001 | EXP_07_26_010_FAIL_DOUBLE_SHIFT | float/double 移位操作数 spec §7.26 规定截断后应编译通过，es2panda 报 ESE0318 拒绝 | compile-pass | compile-fail (ESE0318) | D 类: Spec 与实现不一致 |
| 7.27.6-002 | EXP_07_27_06_013_FAIL_ENUM_VS_STRING | enum 与 string 关系运算应报错（spec §7.27.6 须同枚举类型）但编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致（string非numeric，仍然有效）|
| ~~7.17.1-001~~ | ~~EXP_07_17_01_101_FAIL_CAST_TO_NEVER~~ | ~~Cast表达式中目标类型为never未报错~~ | ~~compile-fail~~ | ~~compile-pass~~ | ✅ 已解决 — 编译器已修复，当前报 ESE0305 |
| 7.25.1-001 | EXP_07_25_01_021_FAIL_VOID_EXPRESSION | void + string 拼接编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致——void不在§7.22 binary expression表有效类型中 |
| 7.26-002 | EXP_07_26_041_FAIL_INT_BOOL_REL_ERR | int < boolean 关系运算类型不匹配未报错 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.32.1-001 | EXP_07_32_01_008_FAIL_READONLY_ARRAY | readonly array = non-readonly array 编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.32.1-002 | EXP_07_32_01_009_FAIL_READONLY_TUPLE | readonly tuple = non-readonly tuple 编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| 7.32.2-001 | EXP_07_32_02_005/008/011 | ??= 空值合并赋值编译器报 Syntax error ESY0227 | 应编译通过或语义检查 | compile-fail（语法错误）| D 类: Spec 与实现不一致 |
| 7.35.2-001 | EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE | 未初始化局部变量在 lambda 中捕获编译通过 | compile-fail | compile-pass | D 类: Spec 与实现不一致 |
| (无) | | | | | |

### 异常详情

**7.1.1-001** ⭐⭐ — 加法优先级高于赋值导致非左值赋值编译通过
- **复现用例 ID：** EXP_07_01_01_021_FAIL_ASSIGN_TO_NON_LVALUE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `a + b = c` | ✅ 编译通过 |
| Java | `a + b = c` | ❌ 编译错误: unexpected type |
| Swift | `a + b = c` | ❌ 编译错误: cannot assign to expression |

- **建议：** 按照 spec 要求，对赋值给非左值的情况报编译时错误。

---

**7.1.1-002** ⭐⭐ — 逻辑与后赋值给非左值编译通过

- **问题描述：** `a && b = c` 中 `&&` 优先级高于 `=`，应解析为 `(a && b) = c` 报赋值给非左值错误，但 ArkTS 编译器允许通过。
- **复现用例 ID：** EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `a && b = c` | ✅ 编译通过 |
| Java | `a && b = c` | ❌ 编译错误 |

- **建议：** 同 7.1.1-001，需要统一处理赋值给非左值的校验。

---

**7.1.1-003** ✅ 已解决 — PDF原文§7.33非compile-time error

- PDF原文核查确认不是编译器bug。用例已从compile-fail移至compile-pass。

---

**7.1.1-004** ⭐⭐ — 空合并后三元条件非boolean类型编译通过

- **问题描述：** `??` 优先级高于 `?:`，`x ?? 0 ? "ok" : "no"` 解析为 `(x ?? 0) ? "ok" : "no"`。`(x ?? 0)` 返回 `int`，使用 `int` 作为三元条件应产生类型错误（spec 要求三元条件为 boolean 类型），但 ArkTS 编译通过。
- **复现用例 ID：** EXP_07_01_01_024_FAIL_TERNARY_PRECEDENCE_TYPE
- **跨语言对比（实测确认）：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `x ?? 0 ? "ok" : "no"` | ✅ 编译通过 |
| Java | `int v = 5; String r = v ? "ok" : "no";` | ❌ `error: incompatible types: int cannot be converted to boolean` |
| Swift | `let v: Int = 5; let r = v ? "ok" : "no"` | ❌ `error: type 'Int' cannot be used as a boolean; test for '!= 0' instead` |

实测命令：`javac TestJavaTernaryFail.java` / `swiftc TestSwiftTernaryFail.swift`，2026-07-28。

- **建议：** 确认 ArkTS 是否允许数值类型隐式转换为 boolean 条件（类似 C 语言 truthy/falsy 语义）。如果是设计选择，需更新 spec；如果是不一致，需修复编译器。

---

**7.2.2-001** ⭐ — 字面量负数组索引编译时错误

- **问题描述：** `arr[-1]` 中字面量负索引被 ArkTS 编译器在编译时静态检测报错，而 spec 规定应运行时抛出 RangeError。
- **复现用例 ID：** EXP_07_02_02_017_FAIL_NEGATIVE_ARRAY_INDEX
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `arr[-1]` | ❌ 编译时错误（实现额外保护） |
| Java | `arr[-1]` | ✅ 编译通过，运行时 ArrayIndexOutOfBoundsException |
| Swift | `arr[-1]` | ✅ 编译通过，运行时 fatal error |

- **建议：** 这是编译器良性增强（提前暴露 bug）。建议更新 spec 允许编译时可静态检测的负索引报错，与字面量除零规则一致。

---

**7.11.4-001** ⭐⭐ — void 静态方法结果赋值给变量编译通过（Spec 不一致）

- **问题描述：** spec 要求 `let x = A.method()`（void 方法返回值赋值）报编译时错误，但编译器实际允许通过，无任何错误或警告。
- **复现用例 ID：** EXP_07_11_04_007_FAIL_STATIC_VOID_ASSIGNED
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x = A.method()` | ❌ Compile-time error |
| ArkTS (实现) | `let x = A.method()` | ✅ 编译通过，无提示 |
| Java | `var x = doSomething()` | ❌ 编译错误: variable initializer is 'void' |
| Swift | `let x = doSomething()` | ⚠️ 编译通过但有 warning: inferred to have type '()' |

- **建议：** 按 spec 实现编译时错误，或更新 spec 允许 void 作为表达式值（类似 Swift）。

---

**7.11.4-002** ⭐⭐ — void 实例方法结果赋值给变量编译通过（Spec 不一致）

- **问题描述：** spec 要求 `let y = new A().method()`（void 方法返回值赋值）报编译时错误，但编译器实际允许通过。
- **复现用例 ID：** EXP_07_11_04_008_FAIL_INSTANCE_VOID_ASSIGNED
- **跨语言对比：** 同 7.11.4-001

---

**7.13.3-001** ⭐⭐ — Record 字段访问符号 .key2 编译器不支持（Spec 不一致）

- **问题描述：** spec 规定 `x.key2` 等价于 `x['key2']` 用于 Record 索引，但编译器报 `Property 'key2' does not exist on type 'Record'`。
- **复现用例 ID：** EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `x.key2` | ✅ 等价于 `x['key2']` |
| ArkTS (实现) | `x.key2` | ❌ 编译错误: Property does not exist |
| Java | `x.key2` | ❌ 语法错误（Java 无此特性）|
| Swift | `x.key2` | ❌ 语法错误（Swift 无此特性）|

- **建议：** 实现 spec 中定义的字段访问符号，使其等价于方括号索引。

---

**7.13.3-002** ⭐⭐ — Case1 变量索引被编译器接受（Spec 不一致）

- **问题描述：** spec 要求 Case 1（字面量联合 Key）的索引必须是字面量，变量作为索引应报编译时错误，但编译器允许通过。
- **复现用例 ID：** EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let k='key1'; x[k]` | ❌ Compile-time error |
| ArkTS (实现) | `let k='key1'; x[k]` | ✅ 编译通过 |
| Java | `map.get(k)` | ✅ 编译通过（Map 无此限制）|
| Swift | `dict[k]` | ✅ 编译通过（Dictionary 无此限制）|

- **建议：** 按 spec 对 Case 1 的变量索引报编译时错误，或放宽 spec 允许变量索引（与 Java/Swift 一致）。

---

**7.23.2-001** ⭐ — int 字面量除零编译检测缺失

- **问题描述：** spec 要求 "if the divisor value of integer division is detected to be 0 during compilation, then a compile-time error occurs"，但 ArkTS 编译器未检测 `a / 0` 中的字面量 0，允许正常编译通过。
- **复现用例 ID：** EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x = a / 0` | ❌ Compile-time error |
| ArkTS (实现) | `let x = a / 0` | ✅ 编译通过（不检测） |
| Java | `int x = a / 0` | ✅ 编译通过，运行时 ArithmeticException |
| Swift | `let x = a / 0` | ✅ 编译通过，运行时 fatal error |

- **备注：** bigint 字面量除零 `a / 0n`（EXP_07_23_02_028）却被正确检测为编译时错误。编译器对 int 和 bigint 的字面量除零检测策略不一致。
- **建议：** 实现 spec 中字面量整数除零的编译时检测，或统一 int 与 bigint 检测策略。

---

**7.17.1-001** ⭐ — Cast表达式中目标类型为never未报错

- **问题描述：** `let x: int = 1 as never` 中的 `never` 作为目标类型应产生 compile-time error，但编译器允许通过。
- **复现用例 ID：** EXP_07_17_01_101_FAIL_CAST_TO_NEVER
- **建议：** 编译器应检查 cast 表达式中目标类型为 never 的情况。

---

**7.25.1-001** ⭐ — void + string 拼接编译通过

- **问题描述：** void 表达式与字符串拼接 `console.log("a") + "b"` 编译通过，但 void 不在 §7.22 binary expression 表有效类型中。
- **复现用例 ID：** EXP_07_25_01_021_FAIL_VOID_EXPRESSION
- **建议：** 编译器应检查 void 表达式参与二元运算的情况。

---

**7.26-002** ⭐ — int < boolean 关系运算类型不匹配未报错

- **问题描述：** `a < b` 其中 a 为 int、b 为 boolean 应产生 compile-time error，但编译器允许通过。
- **复现用例 ID：** EXP_07_26_041_FAIL_INT_BOOL_REL_ERR（对抗生成用例）
- **建议：** 编译器应检查关系运算操作数类型一致性。

---

**7.23.3-001** ⭐ — int 字面量取余除零编译检测缺失

- **问题描述：** spec 要求 "if the divisor value of integer remainder operator is detected to be 0 during compilation, then a compile-time error occurs"，但 ArkTS 编译器未检测 `a % 0`。
- **复现用例 ID：** EXP_07_23_03_027_FAIL_REMAINDER_BY_ZERO_LITERAL
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x = a % 0` | ❌ Compile-time error |
| ArkTS (实现) | `let x = a % 0` | ✅ 编译通过（不检测） |
| Java | `int x = a % 0` | ✅ 编译通过，运行时 ArithmeticException |
| Swift | `let x = a % 0` | ✅ 编译通过，运行时 fatal error |

- **备注：** 与 7.23.2 除法 `a / 0` 未检测模式一致。
- **建议：** 同一代码路径实现 int 和 bigint 的除零检测。

---

**7.23.3-002** ✅ 已解决 — PDF原文§7.23.3描述为runtime error

- PDF原文核查确认应改为runtime。用例已从compile-fail移至runtime。

---

**7.24-001** ⭐⭐ — 负数基底零指数结果不符合 IEEE 754

- **问题描述：** spec 要求 "x ** +/-0 returns 1 even if x is NaN"，但 `(-5.0) ** 0.0` 返回 NaN（应为 1.0）。
- **复现用例 ID：** EXP_07_24_033_RUNTIME_POW_ZERO_EXPONENT
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `(-5.0) ** 0.0` | NaN ⚠️ |
| Java | `Math.pow(-5.0, 0.0)` | 1.0 ✅ |
| Swift | `pow(-5.0, 0.0)` | 1.0 ✅ |

- **根因：** ArkTS `**` 对负数基底直接返回 NaN，未检查零指数特例。
- **建议：** 在 `**` 运算符实现的指数为零时提前返回 1.0，覆盖负数基底情况。

---

**7.24-002** ⭐⭐ — 负数基底整数指数结果不符合 IEEE 754

- **问题描述：** spec 说 "integer effectively means double with zero in the fractional part"，`(-2.0) ** 3.0` 应返回 -8.0（3.0 是整数），但 ArkTS 返回 NaN。
- **复现用例 ID：** EXP_07_24_041_RUNTIME_NEGATIVE_BASE_NON_INTEGER_EXPONENT
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `(-2.0) ** 3.0` | NaN ⚠️ |
| Java | `Math.pow(-2.0, 3.0)` | -8.0 ✅ |
| Swift | `pow(-2.0, 3.0)` | -8.0 ✅ |

- **根因：** ArkTS `**` 不识别 double 中的整数值，将所有负数基底 ** double 视为非整数指数。
- **建议：** 在 `**` 运算符中增加对 double 指数是否为整数值的检测，为负数基底整数指数返回有效数学结果。

---

**7.32.1-001** ⭐ — readonly array 赋值保护未实现

- **问题描述：** spec 要求 "Type of lhsExpression is readonly array, while the converted type of rhsExpression is a non-readonly array" 时产生 compile-time error，但编译器允许 `readonly int[] = int[]`。
- **复现用例 ID：** EXP_07_32_01_008_FAIL_READONLY_ARRAY
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let a: readonly int[] = src` (src: int[]) | ❌ compile-time error |
| ArkTS (实现) | `let a: readonly int[] = src` (src: int[]) | ✅ 编译通过 |
| Swift | `let a: [Int] = src` | ✅ let 保证只读 |

- **建议：** 实现 readonly array 赋值的类型检查，在 lhs 为 readonly array 且 rhs 为非 readonly array 时报编译时错误。

---

**7.32.1-002** ⭐ — readonly tuple 赋值保护未实现

- **问题描述：** spec 要求 "Type of lhsExpression is readonly tuple, while the converted type of rhsExpression is a non-readonly tuple" 时产生 compile-time error，但编译器允许 `readonly [int, string] = [int, string]`。
- **复现用例 ID：** EXP_07_32_01_009_FAIL_READONLY_TUPLE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let t: readonly [int, string] = src` | ❌ compile-time error |
| ArkTS (实现) | `let t: readonly [int, string] = src` | ✅ 编译通过 |
| Swift | 无直接等价 readonly tuple 语法 | N/A |

- **建议：** 与 readonly array 同路径实现 readonly tuple 赋值保护。

---

**7.32.2-001** ⭐⭐ — ??= (Nullish Coalescing Assignment) 编译器不支持

- **问题描述：** Spec 7.32.2 显式声明 "While the nullish-coalescing assignment (??=) only evaluates the right operand, and assigns to the left operand if the left operand is null or undefined." 但编译器报 `Syntax error ESY0227: Unexpected token '??='`，完全不识别该运算符。
- **复现用例 ID：** EXP_07_32_02_005_FAIL_NULLISH_COALESCING_UNSUPPORTED, EXP_07_32_02_008_FAIL_NULLISH_NONNULLABLE, EXP_07_32_02_011_FAIL_NULLISH_BEHAVIOR_UNSUPPORTED
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `a ??= b` | ✅ 应支持：null/undefined 时赋值 |
| ArkTS (实现) | `a ??= b` | ❌ Syntax error ESY0227 |
| Java | `a ??= b` | ❌ 无此运算符 |
| Swift | `a ??= b` | ❌ 无此运算符（用 `a = a ?? b` 替代）|

- **建议：** 实现 ??= 运算符支持，或更新 spec 删除 ??= 定义（当前三语言均不支持）。

---

**7.35.2-001** ⭐ — 未初始化局部变量在 lambda 中捕获编译通过（Spec 不一致）

- **问题描述：** spec 要求 "A compile-time error occurs if a local variable is used in a lambda body but is neither declared in nor assigned before it." 但 ArkTS 编译器允许未初始化的局部变量在 lambda 中被捕获和使用。
- **复现用例 ID：** EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE
- **跨语言对比：**

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS (spec) | `let x: int; const f = (): int => x` | ❌ Compile-time error |
| ArkTS (实现) | `let x: int; const f = (): int => x` | ✅ 编译通过，无提示 |
| Java | `int x; Supplier<Integer> f = () -> x` | ❌ 编译错误: variable x might not have been initialized |
| Swift | `var x: Int; let f = { x }` | ✅ 编译通过（Swift 变量有类型默认值，无此限制）|

- **建议：** 实现 spec 中未初始化变量捕获的编译时检测。Java 的 "variable might not have been initialized" 模式是良好参考。或确认当前行为是否是设计意图（允许捕获但变量值为类型默认值），若是则需更新 spec。

---

**7.19-001 / 7.19-002** ✅ 已解决 — PDF原文§7.19说"warning is issued"非compile-time error

- PDF原文核查确认这不是编译器bug。用例已从compile-fail移至compile-pass。
- 涉及：EXP_07_19_021, EXP_07_19_022

---