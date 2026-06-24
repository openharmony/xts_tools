# 03 Types Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| TYP-U | TYP_03_06_02_028 | 模块级 const 整数除零编译期不检测 | compile-time error | 编译通过，运行时抛 ArithmeticError | 待修复 |
| D-3.18-01 | TYP_03_18_012_FAIL | 联合类型中函数类型不加括号应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.18-02 | TYP_03_18_014_FAIL | Function 类型不能直接调用 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.18-03 | TYP_03_18_01_003_FAIL | 同 D-3.18-02（3.18.1 章节） | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.14-01 | TYP_03_14_014_FAIL_BIGINT_GT_INT | bigint > int 关系运算应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.14-02 | TYP_03_14_016_FAIL_BIGINT_LT_DOUBLE | bigint < double 关系运算应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.08-01 | TYP_03_08_007_FAIL_ANY_FIELD_ACCESS | Any 字段访问应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19-01 | TYP_03_19_008_FAIL_UNION_DIFF_FIELD_TYPE | 联合类型同名字段不同类型应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19-02 | TYP_03_19_02_002_FAIL_DIFF_FIELD_TYPE | 联合类型同名字段不同类型应报错(3.19.2) | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19-03 | TYP_03_19_03_007_FAIL_KEYOF_NON_CLASS | keyof 非类/接口类型应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.19.1-01 | TYP_03_19_01_012_FAIL_READONLY_WRITE | readonly union 归一化后写入应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.21.3-01 | TYP_03_21_03_006_FAIL_PARTIAL_NON_CLASS | Partial 应用于非 class/interface 应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.21.4-01 | TYP_03_21_04_006_FAIL_REQUIRED_NON_CLASS | Required 应用于非 class/interface 应报错 | compile-time error | 编译通过 | D类-Spec不一致 |
| D-3.21.5-01 | TYP_03_21_05_004_FAIL_NON_CLASS | Readonly 应用于非 class/interface 应报错 | compile-time error | 编译通过 | D类-Spec不一致 |

### 异常详情

**TYP-U** ⭐⭐⭐ HIGH — 模块级 const 整数除零编译期检测漏洞

- ArkTS 编译器对函数内 `const a: int = 0; 10 / a` 触发编译期除零检测，但对模块级 `const` 不检测
- Java：完全不做编译期检测（一致）；Swift：所有 const/let 做编译期检测（一致）
- ArkTS 内部不一致：同样 `const a: int = 0` 因位置不同行为不同
- 严重性：HIGH，分类：C+D

**D-3.18-01** MEDIUM — 联合类型中函数类型不加括号不报错

- Spec 3.18/3.19：`A compile-time error occurs if type is a function type not enclosed in parentheses`
- 实际：`string | (x: int) => int` 不加括号也编译通过
- 影响章节：3.18（TYP_03_18_012）和 3.19（TYP_03_19_006）
- 分类：D 类（Spec 与实现不一致）

**D-3.18-02 / D-3.18-03** LOW — Function 类型允许直接调用

- Spec 3.18.1：`A value of type Function cannot be called directly`
- 实际：`let f: Function = foo; f(1)` 编译通过并运行正常
- 分类：D 类（Spec 与实现不一致）

**D-3.14-01** MEDIUM — bigint 与 int 关系运算不报错

- Spec 3.14：`Relational operators that use an operand of type bigint along with an operand of another type are illegal`
- 实际：`bigint > int` 编译通过（Spec 要求 compile-time error）
- 复现用例 ID：TYP_03_14_014_FAIL_BIGINT_GT_INT
- ⚠️ SPEC 不一致：原 FAIL 用例被误改为 PASS，已恢复为 FAIL 并标注
- 跨语言对比：

| 语言 | 代码 | 行为 |
|------|------|------|
| ArkTS | `bigint > int` | ✅ 编译通过（与 Spec 矛盾） |
| Java | `BigInteger.compareTo(int)` | ❌ 编译错误 |
| Swift | `Int64 > Int` | ❌ 编译错误 |

- 严重性：MEDIUM，分类：D 类（Spec 与实现不一致）

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
- 复现用例 ID：TYP_03_19_008_FAIL_UNION_DIFF_FIELD_TYPE, TYP_03_19_02_002_FAIL_DIFF_FIELD_TYPE
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
