# 05_Generics AI 复测与评审报告

## 1. 评审结论

本次对 `C:\Users\Administrator\Desktop\ARKTS_STATIC_TEST\05_Generics` 下测试人员提交的 ArkTS 泛型章节用例、测试脑图、测试报告、issue 报告和 Java/Swift 对比材料进行了复测与审视。

结论如下：

- ArkTS 用例整体质量较好，泛型基础声明、约束、默认类型参数、显式/隐式实例化、通配符等主干测试点覆盖较完整。
- 当前 `issue_report.md` 中记录的“callback 嵌套 variance 检查未递归”不建议作为 ArkTS 编译器问题反馈。
- `GEN_05_01_03_105_FAIL_CALLBACK_VARIANCE_GAP.ets` 和 `GEN_05_01_03_107_FAIL_CALLBACK_RETURN_GAP.ets` 当前被放在 `compile-fail` 下，但根据 ArkTS static spec 的 `variance interleaving` 规则，这两个用例更应归类为 `compile-pass`。
- 多个测试报告、manifest、catalog 中的用例数量和实际目录不一致，需要同步修正。
- 跨语言对比报告中 Java/Swift 环境描述与本次实测环境不一致，且 Java/Swift 对比样例不足以支撑“ArkTS 编译器 bug”结论。

## 2. 复测环境与结果

ArkTS 复测目录：

```text
/home/xhl/arkcompiler/test/arkts_static_05_generics_review
```

ArkTS 复测日志：

```text
/home/xhl/arkcompiler/test/arkts_static_05_generics_review/review_run.log
```

复测结果：

```text
Total: 80, Pass: 78, Fail: 2
```

失败用例：

```text
5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_105_FAIL_CALLBACK_VARIANCE_GAP.ets
5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_107_FAIL_CALLBACK_RETURN_GAP.ets
```

Java/Swift 对比文件复测结果：

```text
cross_lang_verify/Java_VarianceNestedCheck.java       编译运行通过
cross_lang_verify/Swift_VarianceNestedCheck.swift     运行通过，但存在未使用变量 warning
```

本次实测环境：

```text
Java:  WSL javac 1.8.0_492
Swift: WSL Swift 6.3.2
```

注意：现有 `cross_lang_verify/verification_report.md` 中写的是 Java SE 21 / Swift 5.10，与本次实际环境不一致，需要修正。

## 3. 重点问题一：issue_report.md 当前问题定性不成立

### 3.1 issue_report.md 当前描述的问题

当前 `issue_report.md` 记录的问题是：

```text
变体检查未递归到回调函数类型内部
Expected: compile-time error
Actual: 编译通过
Status: 编译器未实现
```

报告认为 ArkTS 编译器对 `out` / `in` 类型参数的检查没有递归进入 callback 函数类型内部，因此把以下场景编译通过视为编译器 bug。

实际相关用例是：

```text
GEN_05_01_03_105_FAIL_CALLBACK_VARIANCE_GAP.ets
GEN_05_01_03_107_FAIL_CALLBACK_RETURN_GAP.ets
```

### 3.2 根据 ArkTS spec 重新分析

ArkTS static spec `spec/generics.md` 的 `Type Parameter Variance` 章节明确说明：

```text
In case of function types, variance interleaving occurs.
```

规范示例：

```ts
class X<in T1, out T2> {
  foo(p: T1): T2 {...}                           // in - out
  foo(p: (p: T2)=> T1) {...}                     // out - in
  foo(p: (p: (p: T1)=>T2)=> T1) {...}            // in - out - in
  foo(p: (p: (p: (p: T2)=> T1)=>T2)=> T1) {...}  // out - in - out - in
}
```

这说明函数类型中的参数/返回值位置需要逐层计算，不能只看 `T` 表面出现在“回调参数”还是“回调返回值”。

### 3.3 对 GEN_05_01_03_105 的分析

用例代码：

```ts
class Container<out T> {
  constructor(v: T) {}
  forEach(callback: (item: T) => void): void {}
}
```

位置计算：

```text
callback 是 forEach 的方法参数：in-position
item: T 是 callback 的函数参数：再次翻转
in + in = out
```

因此 `T` 最终处于 `out-position`，符合 `class Container<out T>` 的要求。

结论：

```text
该用例当前编译通过是合理的，不应作为 compile-fail。
```

### 3.4 对 GEN_05_01_03_107 的分析

用例代码：

```ts
class Consumer<in T> {
  produce(supplier: () => T): void {}
}
```

位置计算：

```text
supplier 是 produce 的方法参数：in-position
() => T 中 T 是函数返回值：out-position
in + out = in
```

因此 `T` 最终处于 `in-position`，符合 `class Consumer<in T>` 的要求。

结论：

```text
该用例当前编译通过是合理的，不应作为 compile-fail。
```

### 3.5 对 issue_report.md 的处理建议

建议测试人员执行以下修改：

```text
1. 删除 issue_report.md 中 “callback 嵌套 variance 检查未递归” 的问题记录。
2. 不要将该问题反馈给开发。
3. 将 GEN_05_01_03_105 和 GEN_05_01_03_107 从 compile-fail 调整为 compile-pass。
4. 删除文件名中的 FAIL_CALLBACK_VARIANCE_GAP / FAIL_CALLBACK_RETURN_GAP，改成 PASS_CALLBACK_VARIANCE_INTERLEAVING 之类的正向名称。
5. 同步更新 test_report_5.1.3.md、test_case_catalog.md、test_manifest.json 和测试脑图。
```

## 4. 重点问题二：issue_report.md 中复现 ID 写错

当前 `issue_report.md` 写的是：

```text
GEN_05_01_03_006
GEN_05_01_03_008
```

但本次复测失败的是：

```text
GEN_05_01_03_105_FAIL_CALLBACK_VARIANCE_GAP
GEN_05_01_03_107_FAIL_CALLBACK_RETURN_GAP
```

即使保留该 issue，也必须先修正 ID。

但基于第 3 节分析，该 issue 本身不建议保留。

## 5. 重点问题三：测试报告与实际文件数量不一致

实际文件统计如下：

| Section | compile-pass | compile-fail | runtime | total |
|---|---:|---:|---:|---:|
| `5.1_Type_Parameters` | 5 | 4 | 2 | 11 |
| `5.1.1_Type_Parameter_Constraint` | 6 | 5 | 1 | 12 |
| `5.1.2_Type_Parameter_Default` | 4 | 2 | 2 | 8 |
| `5.1.3_Type_Parameter_Variance` | 8 | 8 | 0 | 16 |
| `5.1.4_Wildcard_Type` | 2 | 8 | 0 | 10 |
| `5.2_Generics_Instantiations/5.2.1_Type_Arguments` | 5 | 1 | 1 | 7 |
| `5.2.2_Explicit_Generic_Instantiations` | 5 | 3 | 1 | 9 |
| `5.2.3_Implicit_Generic_Instantiations` | 3 | 3 | 1 | 7 |

不一致点：

```text
5.1.1: 报告写 Total Cases: 11、compile-pass: 5，实际为 12、6。
5.1.2: 报告写 Total Cases: 7、runtime: 1，实际为 8、2。
5.1.3: 报告写 compile-pass: 7、runtime: 1，实际为 8、0。
5.1.4: 报告写 compile-pass: 1、runtime: 1，实际为 2、0。
```

建议测试人员同步更新：

```text
test_report_5.1.1.md
test_report_5.1.2.md
test_report_5.1.3.md
test_report_5.1.4.md
test_manifest.json
test_case_catalog.md
test_design_mindmap.md
```

## 6. 重点问题四：catalog 中存在不存在的 runtime 路径

`test_case_catalog.md` 中记录了以下 runtime 文件：

```text
5.1.3_Type_Parameter_Variance/runtime/GEN_05_01_03_200_RUNTIME_COVARIANT_OUT.ets
5.1.4_Wildcard_Type/runtime/GEN_05_01_04_200_RUNTIME_INSTANCEOF_WILDCARD.ets
```

但实际目录中不存在这些 runtime 文件。

实际对应文件在 `compile-pass` 目录中：

```text
5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_008_PASS_COVARIANT_OUT.ets
5.1.4_Wildcard_Type/compile-pass/GEN_05_01_04_002_PASS_INSTANCEOF_WILDCARD.ets
```

建议：

```text
如果这两个用例只是编译验证，则 catalog/report 中应标为 compile-pass。
如果确实想做 runtime 验证，则应移动到 runtime 目录，并保证 main 入口和断言可运行。
```

## 7. 重点问题五：跨语言对比报告证据不足

现有跨语言报告中对 Java/Swift 的结论需要收敛。

### 7.1 Java 对比问题

Java 使用 use-site wildcard：

```java
? extends T
? super T
```

ArkTS 使用 declaration-site variance：

```ts
class Producer<out T> {}
class Consumer<in T> {}
```

两者机制不同。Java 样例可以作为语言设计差异参考，但不能直接证明 ArkTS 编译器在 declaration-site variance 上存在 bug。

### 7.2 Swift 对比问题

当前 Swift 样例主要验证合法 callback 泛型用法可以运行，没有构造“应编译失败”的负向样例。

因此报告中“Swift 正确识别嵌套变体位，与 ArkTS spec 要求一致”的结论证据不足。

建议：

```text
1. 跨语言报告中明确说明 Java/Swift 仅作为辅助对比，不作为 ArkTS 预期来源。
2. ArkTS 预期必须以 ArkTS static spec 为准。
3. 如需证明 Swift 对非法嵌套 variance 的拒绝能力，应补充真实负向编译样例。
4. 修正实测环境：本次 WSL 实测为 Java 8 / Swift 6.3.2，不是 Java SE 21 / Swift 5.10。
```

## 8. 测试设计覆盖评价

整体覆盖较完整，已覆盖：

- 类型参数基础声明：generic class、generic interface、generic function、generic type alias、多类型参数。
- 类型参数循环依赖：自循环、互相循环、联合类型循环、默认类型参数循环。
- 类型参数约束：class constraint、union constraint、literal union constraint、keyof constraint、dependent parameter。
- 类型参数默认值：单默认值、多默认值、函数默认类型参数、默认值顺序错误、默认值前向引用。
- variance：`in`、`out`、readonly field、constructor、函数类型 interleaving、非法位置。
- wildcard：声明、赋值限制、写保护、variance 下 wildcard 推导。
- type arguments：number、union、array、tuple、function type。
- explicit generic instantiation：class、method、function、type alias、partial instantiation。
- implicit generic instantiation：函数推断、多参数推断、class type parameter 作为 method 默认类型参数。

建议后续补充但不阻塞当前整改：

- 泛型 class/interface 继承链中的约束兼容场景。
- 泛型 method override 中 type parameter constraint 的协变/逆变规则。
- 泛型与 overload-equivalent signatures / type erasure 的组合场景。
- 泛型实例化在 `instanceof` / cast / union narrowing 中的边界行为。
- type alias 泛型递归、utility type 与泛型约束组合。

## 9. 给测试人员的整改清单

建议按以下顺序整改：

1. 删除或重写 `05_Generics/issue_report.md` 中 `C-5.01-01` 问题，不再将其作为编译器 bug。
2. 将 `GEN_05_01_03_105_FAIL_CALLBACK_VARIANCE_GAP.ets` 改为正向用例，例如 `GEN_05_01_03_009_PASS_CALLBACK_PARAM_INTERLEAVING.ets`。
3. 将 `GEN_05_01_03_107_FAIL_CALLBACK_RETURN_GAP.ets` 改为正向用例，例如 `GEN_05_01_03_010_PASS_CALLBACK_RETURN_INTERLEAVING.ets`。
4. 将上述两个用例从 `compile-fail` 移动到 `compile-pass`。
5. 更新两个用例头部注释：`@expect compile-pass`，说明依据是 `function types variance interleaving`。
6. 重新执行 `run_generics_cases_wsl.sh`，确保 ArkTS 复测结果变为全部通过。
7. 修正 `run_generics_cases_wsl.sh` 的 CRLF 问题，确保 WSL 下可直接执行。
8. 同步更新 `test_report_5.1.3.md`，删除 “2 GAP” 描述。
9. 同步更新 `test_manifest.json` 中 5.1.3 的 pass/fail/runtime 数量。
10. 同步更新 `test_case_catalog.md` 中 5.1.3、5.1.4 的实际路径和用例类型。
11. 修正 `cross_lang_verify/verification_report.md` 中 Java/Swift 环境版本。
12. 收敛跨语言结论，避免用 Java/Swift 非等价机制支撑 ArkTS bug 定性。

## 10. 可直接反馈给测试人员的摘要

```text
本次 AI review 复测 05_Generics 共 80 条 ArkTS 用例，结果为 78 pass / 2 fail。
两个 fail 用例均来自 5.1.3 Type Parameter Variance，分别是 GEN_05_01_03_105 和 GEN_05_01_03_107。

经对照 ArkTS static spec，spec 明确说明 function type 中存在 variance interleaving。
这两个用例当前被设计为 compile-fail，但按 interleaving 计算后实际是合法的：

1. Container<out T>.forEach(callback: (item: T) => void)
   callback 是方法参数，处于 in-position；T 又处于 callback 参数位置，再次翻转，最终是 out-position，符合 out T。

2. Consumer<in T>.produce(supplier: () => T)
   supplier 是方法参数，处于 in-position；T 是 supplier 返回值，保持 out-position，组合后最终是 in-position，符合 in T。

因此当前编译通过不是编译器 bug，issue_report.md 中 “callback 嵌套 variance 检查未递归” 的问题不建议反馈开发。
请将这两个用例调整为 compile-pass，并同步更新 issue_report、test_report、manifest、catalog 和测试脑图。
另外当前报告中存在用例数量、runtime 路径、Java/Swift 实测环境不一致问题，也请一并修正。
```
