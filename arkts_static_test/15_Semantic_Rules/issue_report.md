# 15 Semantic Rules Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|:---|------|--------|---------|--------|--------|
| SC-01~14 | SEM_15_08_00_004/005/008/014/016/017/018/019/020/022/024/025/027/028 | Smart Cast 流敏感收窄未实现 | compile-pass | 编译失败 | ⚠️ C类-降级——§15.8 PDF原文用描述性语言（"can"、"uses"），不是规范性"compile-time error occurs"，待spec团队确认 |
| VAR-01~06 | SEM_15_02_00_010/012/015/018, SEM_15_05_00_001/003 | Subtyping/Variance 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| OVR-01~03 | SEM_15_09_00_003/009/013 | Override 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| TINF-01~02 | SEM_15_07_00_001/003 | Type Inference 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| CALL-01~02 | SEM_15_06_00_002/004 | Call Arguments 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| ASG-01 | SEM_15_04_00_004 | Assignability 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| ERAS-01 | SEM_15_12_00_004 | Type Erasure 编译器误拒 | compile-pass | 编译失败 | C类-编译器未实现 |
| INT-01 | SEM_15_02_08_001 | Intersection PLACEHOLDER 编译失败 | compile-pass | 编译失败 | C类-编译器未实现 |
| OW-01 | SEM_15_11_07_001 | Overload warning W2323 未实现 | compile-pass | 编译失败 | ⚠️ 降级——用例代码bug（TS风格重载未用overload关键字），非编译器bug |
| C-15.11-02~07 | SEM_15_11_00_218/220/222/224/226/231 | Overload Resolution 运行时按实际类型派发 | runtime 按声明类型 | runtime 按实际类型 | C类-运行时偏差 |
| GAP-SC | SEM_15_08_00_109/110/111/114/116/118 | Smart Cast 边界未拒绝 | compile-fail | 编译通过 | ⚠️ C类-降级——同SC-01~14，§15.8语言是描述性，待spec团队确认 |
| GAP-SUB | SEM_15_02_04_101, SEM_15_02_05_101/103/106, SEM_15_02_07_101 | Subtyping 边界未拒绝 | compile-fail | 编译通过 | ⚠️ C类-降级——§15.2本身无规范性error语句，引用§15.4/§15.6等章节，待评估 |
| GAP-OVR | SEM_15_09_01_103, SEM_15_09_02_102, SEM_15_09_00_108/109 | Override 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| GAP-INF | SEM_15_07_02_102 | Smart return 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| GAP-OL | SEM_15_11_00_113 | Overload 边界未拒绝 | compile-fail | 编译通过 | C类-编译器未实现 |
| COM-15.14-01~07 | SEM_15_14_00_003/013/015/024/026/027/204 | Extended Conditional 未实现（Spec 即将废弃） | compile-pass/runtime | 编译失败 | D类-即将废弃 |
| **SEM-TYPE-01~08** | §15.12 | **Utility type 擦除映射规则(Awaited/NonNullable/Partial/Required/Readonly/Record/ReturnType/never签名) | compile-pass | 占位符(无实质验证) | C类-编译器未实现 |
| **SEM-THIS-01** | §15.9.3 | **`this` 返回类型覆盖兼容性规则** | compile-pass | 无测试 | C类-编译器未实现 |

### 异常详情

**SC-01~14** MEDIUM — Smart Cast 流敏感收窄未实现（14 场景）⚠️ 待重新评估

- PDF原文核查：§15.8 PDF原文使用**描述性语言**（"can"、"uses"、"the compiler uses data-flow analysis...to compute"），**无明确"compile-time error occurs"语句**。
- 这不是说功能不重要，而是**PDF原文的规范语言是描述性而非强制性**。编译器未实现不等于编译器bug。
- 编译器的错误信息：
  ```
  SEM_15_08_00_004: Property 'length' does not exist on type 'Object'
  ```
- 跨语言对比：

| 场景 | ArkTS 编译器 | TypeScript | Java | Swift |
|------|:----------:|:----------:|:----:|:-----:|
| typeof 收窄 | ❌ | ✅ | N/A | N/A |
| instanceof 收窄 | ✅ | ✅ | ✅ | ✅ |
| null/undefined 收窄 | ✅ | ✅ | ❌ | ✅ |
| CFG 分支合并 | ❌ | ✅ | ✅ | ✅ |

- **建议：** 标注为"spec描述性功能，编译器当前未实现"，待spec团队确认是否该部分为强制性要求后重新评估。
- 分类：⚠️ 降级处理，涉及章节：15.8

---

**VAR-01~06** LOW — Subtyping/Variance 编译器误拒（6 场景）

- Spec 15.2/15.5 要求：协变/逆变兼容的子类型关系应通过编译
- 实际：编译器拒绝合法 pattern，如 variance covariant、string literal to string、union member to union、func parameter contravariance
- 涉及用例：
  ```
  SEM_15_02_00_010/012/015/018, SEM_15_05_00_001/003
  ```
- 分类：C 类（编译器未实现），涉及章节：15.2/15.5

---

**OVR-01~03** LOW — Override 编译器误拒（3 场景）

- Spec 15.9 要求：override-compatible signature 应通过编译
- 实际：编译器拒绝 class method parameter contravariance、interface default method override、interface override compatible
- 涉及用例：
  ```
  SEM_15_09_00_003/009/013
  ```
- 分类：C 类（编译器未实现），涉及章节：15.9

---

**TINF-01~02** LOW — Type Inference 编译器误拒（2 场景）

- 涉及用例：`SEM_15_07_00_001_PASS_CONSTANT_expression`, `SEM_15_07_00_003_PASS_RETURN_type_inference`
- 分类：C 类（编译器未实现），涉及章节：15.7

---

**CALL-01~02** LOW — Call Arguments 编译器误拒（2 场景）

- 涉及用例：`SEM_15_06_00_002_PASS_SPREAD_expression`, `SEM_15_06_00_004_PASS_REST_parameter`
- 分类：C 类（编译器未实现），涉及章节：15.6

---

**ASG-01 / ERAS-01 / INT-01** LOW — 单场景编译器误拒

| ID | 用例 | 问题 |
|----|------|------|
| ASG-01 | SEM_15_04_00_004 | 隐式转换可赋值性编译器误拒 |
| ERAS-01 | SEM_15_12_00_004 | effective type mapping 编译器误拒 |
| INT-01 | SEM_15_02_08_001 | Intersection PLACEHOLDER 编译失败 |

- 分类：C 类（编译器未实现），涉及章节：15.4/15.12/15.2.8

**OW-01** LOW — 用例代码bug（非编译器bug）⚠️ 降级

- PDF原文核查：用例SEM_15_11_07_001使用TS风格重载（两个同名function greet），ArkTS需用`overload`关键字(§17.9)。编译器报ESE0130是**正确行为**。
- 结论：降级为用例代码bug，非编译器bug。需修改用例使用`overload`关键字。
- 分类：⚠️ 降级为用例设计问题，涉及章节：15.11

---

**C-15.11-02~07** MEDIUM — Overload Resolution 运行时按实际类型派发

- Spec 15.11 要求：`let b: Base = new Derived(); b.pick(9)` 应按声明类型 `Base` 选择 `pickNumber`
- 实际：运行时按实际类型 `Derived` 选择 `pickInt`
- `assertEQ` 错误：`'derived-int' === 'base-number'`
- 涉及用例：
  ```
  SEM_15_11_00_218_RUNTIME_receiver_declared_base_function_scope
  SEM_15_11_00_220_RUNTIME_receiver_declared_base_direct_new_function
  SEM_15_11_00_222_RUNTIME_receiver_declared_base_from_return_function
  SEM_15_11_00_224_RUNTIME_receiver_declared_base_local_copy_global
  SEM_15_11_00_226_RUNTIME_receiver_declared_base_after_side_effect_call
  SEM_15_11_00_231_RUNTIME_SMART_FUNC_overload_declared_base_function
  ```
- 分类：C 类（运行时偏差），涉及章节：15.11

---

**GAP-SC** LOW — Smart Cast 边界编译器未拒绝（6 场景）⚠️ 待重新评估

- PDF原文核查：同SC-01~14，§15.8使用描述性语言。
- 实际：编译器未拒绝，通过编译
- 涉及用例：
  ```
  SEM_15_08_00_109/110/111/114/116/118
  ```
- **建议：** 降级为推论性解读，待spec团队确认。
- 分类：⚠️ 降级处理，涉及章节：15.8

---

**GAP-SUB** LOW — Subtyping 边界编译器未拒绝（5 场景）⚠️ 待重新评估

- PDF原文核查：§15.2本身**无规范性error语句**——规范语言是子类型定义而非"compile-time error occurs"。强制要求应引用§15.4/§15.6等。
- 实际：编译器未拒绝，通过编译
- 涉及用例：
  ```
  SEM_15_02_04_101, SEM_15_02_05_101/103/106, SEM_15_02_07_101
  ```
- **建议：** 标注应引用§15.4/§15.6等规范性error章节，而非§15.2本身。
- 分类：⚠️ 降级处理，涉及章节：15.2/15.4

---

**GAP-OVR** LOW — Override 边界编译器未拒绝（4 场景）

- PDF原文核查：§15.9有规范性"compile-time error occurs"语句——**保持原分类**。
- 实际：编译器未拒绝，通过编译
- 涉及用例：
  ```
  SEM_15_09_01_103, SEM_15_09_02_102, SEM_15_09_00_108/109
  ```
- 分类：C 类（编译器未实现），涉及章节：15.9

---

**GAP-INF / GAP-OL** LOW — 单场景编译器未拒绝

| ID | 用例 | 问题 |
|----|------|------|
| GAP-INF | SEM_15_07_02_102 | unexpressible smart return 编译器未拒绝 |
| GAP-OL | SEM_15_11_00_113 | 静态方法不继承用于重载，编译器未拒绝 |

- 分类：C 类（编译器未实现），涉及章节：15.7.2/15.11

---

**COM-15.14-01~07** LOW — Extended Conditional Expressions（Spec 即将废弃）

- 编译器拒绝 truthiness 扩展语义（`&&`/`||` 返回操作数、非 boolean 三元条件、typeof/instanceof 真值检查、NaN 真值判断等）
- Spec 15.14: `Using these features is not recommended in most cases`
- Spec 15.14.1: `The extended semantics is to be deprecated in one of the future versions`
- 编译器未实现是**预期行为**。用例保留作兼容性参考，不计入缺陷
- 涉及用例：
  ```
  SEM_15_14_00_003/013/015/024/026/027/204
  ```
- 分类：D 类（即将废弃），涉及章节：15.14

### 历史已解决异常

| 问题 | 修复/处理 | 日期 |
|------|---------|------|
| FixedArray 不变性（D-15.2.7-01） | 确认 FixedArray 设计为协变，用例改 PASS | 2026-06-22 |
| int/number 子类型（D-15.2.3-01） | 确认 int→number 隐式拓宽符合 Spec，用例改 PASS | 2026-06-22 |
| union 子类型（旧 SEM-GAP-02） | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| FixedArray<Object>→<string> | 编译器已正确拒绝（ESE0318） | 2026-06-22 |
| Promise 类型擦除 | 编译器正确拒绝 ESE461884 | 2026-06-22 |
