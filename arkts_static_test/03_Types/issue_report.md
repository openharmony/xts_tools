# 03 Types Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D-3.18-01 | TYP_03_18_012_FAIL | 联合类型中函数类型不加括号应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.18-02 | TYP_03_18_014_FAIL | Function 类型不能直接调用 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.18-03 | TYP_03_18_01_003_FAIL | 同 D-3.18-02（3.18.1 章节） | compile-time error | 编译通过 | D类-Spec不一致 |
| S-3.14-01 | TYP_03_14_014_FAIL_BIGINT_GT_INT | bigint > int 关系运算 spec 冲突 | compile-time error | 编译通过 | S类-Spec文档冲突 |
| S-3.14-02 | TYP_03_14_016_FAIL_BIGINT_LT_DOUBLE | bigint < double 关系运算 spec 冲突 | compile-time error | 编译通过 | S类-Spec文档冲突 |
| D-3.08-01 | TYP_03_08_007_FAIL_ANY_FIELD_ACCESS | Any 字段访问应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19-01 | TYP_03_19_008_FAIL_UNION_DIFF_FIELD_TYPE | 联合类型同名字段不同类型应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19-02 | TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE | 联合类型同名字段不同类型应报错(3.19.2) | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19-03 | TYP_03_19_03_007_FAIL_KEYOF_NON_CLASS | keyof 非类/接口类型应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19.1-01 | TYP_03_19_01_012_FAIL_READONLY_WRITE | readonly union 归一化后写入应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.21.3-01 | TYP_03_21_03_006_FAIL_PARTIAL_NON_CLASS | Partial 应用于非 class/interface 应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.21.4-01 | TYP_03_21_04_006_FAIL_REQUIRED_NON_CLASS | Required 应用于非 class/interface 应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.21.5-01 | TYP_03_21_05_004_FAIL_NON_CLASS | Readonly 应用于非 class/interface 应报错 | compile-time error | 编译通过 | D类-Spec不一致 |

### 异常详情

**D-3.18-01** MEDIUM — 联合类型中函数类型不加括号不报错

- Spec 3.18/3.19：`A compile-time error occurs if type is a function type not enclosed in parentheses`
- 实际：`string | (x: int) => int` 不加括号也编译通过
- 影响章节：3.18（TYP_03_18_012）和 3.19（TYP_03_19_006）
- 分类：D 类（Spec 与实现不一致）

**D-3.18-02 / D-3.18-03** LOW — Function 类型允许直接调用

- Spec 3.18.1：`A value of type Function cannot be called directly`
- 实际：`let f: Function = foo; f(1)` 编译通过并运行正常
- 分类：D 类（Spec 与实现不一致）

**S-3.14-01 / S-3.14-02** MEDIUM — bigint 混合关系运算 spec 文档冲突

- `spec/types.md` Type bigint 章节：`Relational operators that use an operand of type bigint along with an operand of another type are illegal and produce a compile-time error.`
- `spec/expressions.md` Bigint Relational Operators 章节：`Relational operators can be applied to bigint values if [...] one operand is of bigint type and other is of a numeric type.`
- 两个 spec 文档互相矛盾，当前实现更接近 `expressions.md` 的描述。
- 该问题不应简单定性为实现 bug，需先反馈 spec 团队澄清。
- 用例保留为 compile-fail 看护，状态改为 S 类（Spec 文档冲突，待规范澄清）。

**D-3.08-01** MEDIUM — Any 字段访问不报错

- Spec 3.8：`Type Any has no methods or fields`
- 实际：`a.field` 编译通过（Spec 要求 compile-time error）
- 复现用例 ID：TYP_03_08_007_FAIL_ANY_FIELD_ACCESS
- ⚠️ SPEC 不一致：原 FAIL 用例被误改为 PASS，已恢复为 FAIL 并标注
- 跨语言对比：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `a.field` (a: Any) | ✅ 编译通过（与 Spec 矛盾） |
| Java | `((Object)obj).field` | ❌ 编译错误 |
| Swift | `(obj as Any).field` | ❌ 编译错误 |

- 严重性：MEDIUM，分类：D 类（Spec 与实现不一致）

**D-3.19-01** MEDIUM — 联合类型同名字段不同类型不报错

- Spec 3.19.2：`console.log(u.s)` where `u: A | B` 且 `s` 类型不同应产生 compile-time error
- 实际：`u.s` 编译通过（Spec 要求 compile-time error）
- 复现用例 ID：TYP_03_19_008_FAIL_UNION_DIFF_FIELD_TYPE, TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE
- 跨语言对比：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `(u: A \| B).s` (s: string vs s: number) | ✅ 编译通过（与 Spec 矛盾） |
| Java | 不同类型字段需要显式 cast | ❌ 编译错误 |
| Swift | 不同类型属性需要条件解包 | ❌ 编译错误 |

- 严重性：MEDIUM，分类：D 类（Spec 与实现不一致）

**D-3.19-03** LOW — keyof 非类/接口类型不报错

- Spec 3.19.3：`A compile-time error occurs if typeReference is neither a class nor an interface type`
- 实际：`keyof number` 编译通过（Spec 要求 compile-time error）
- 复现用例 ID：TYP_03_19_03_002_FAIL_KEYOF_NON_CLASS
- 严重性：LOW，分类：D 类（Spec 与实现不一致）

**D-3.19.1-01** MEDIUM — readonly union 归一化后仍允许写入

- Spec 3.19.1：`(number[]) | (readonly number[])` 应归一化为 `readonly number[]`，readonly version wins
- 实际：`type U = number[] | readonly number[]; let u: U = arr; u[0] = 3.0` 编译通过
- 复现用例 ID：TYP_03_19_01_012_FAIL_READONLY_WRITE
- 跨语言对比：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `u[0] = 3.0` where `u: number[] \| readonly number[]` | ✅ 编译通过（与 Spec 矛盾） |
| Java | 无 readonly array 类型 | N/A |
| Swift | `let ro: [Double]` 不可写 / `Array` 值语义 | ❌ 写入受 mutability 限制 |

- 严重性：MEDIUM，分类：D 类（Spec 与实现不一致）
