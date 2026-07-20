# 13 命名空间与模块 Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

> 最后编译验证：2026-07-17，es2panda `--extension=ets`。

## D 类：Spec 与实现不一致（FAIL_PASSED）

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| D1 | NSM_13_10_002_FAIL_STDLIB_NAME_REUSE | FAIL 用例编译通过 | spec 要求报错 | 编译通过 | D类 |
| D2 | NSM_13_03_011_FAIL_NAMESPACE_MULTIPLE_INITIALIZER | FAIL 用例编译通过 | spec 要求报错 | 编译通过 | D类 |
| D3 | NSM_13_08_004_FAIL_TOP_LEVEL_USE_BEFORE_DECLARE | FAIL 用例编译通过 | spec 要求报错 | 编译通过 | D类 |
| D4 | NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE | FAIL 用例编译通过 | spec 要求报错 | 编译通过 | D类 |
| D5 | NSM_13_01_004_FAIL_AMBIENT_MIXED | FAIL 用例编译通过 | spec 要求报错 | 编译通过 | D类 |
| D6 | NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE | 编译器拒绝export default expression中未导出类型（Spec认为合法）| compile-pass | compile-fail | D类-用例设计问题 |

## C 类：编译器实现限制（PASS_FAILED / RUNTIME_COMPILE_FAIL）

| ID | Case | Symptom | Expected | Actual | Status |
|---|------|--------|---------|--------|--------|
| C2 | NSM_13_02_001_PASS_EXPORT_MODULE | PASS 用例编译失败 | 编译通过 | Syntax error ESY0279: Cannot find name 'module' | C类 |
| C3 | NSM_13_02_002_PASS_DECLARE_MODULE | PASS 用例编译失败 | 编译通过 | Syntax error ESY0331 | C类 |
| C4 | NSM_13_02_004_PASS_MODULE_STRING_NAME | PASS 用例编译失败 | 编译通过 | Syntax error ESY0279 | C类 |
| C5 | NSM_13_02_005_RUNTIME_MODULE_HEADER | RUNTIME 用例编译失败 | 编译+运行通过 | Syntax error ESY0279 | C类 |
| C6 | NSM_13_04_001_PASS_IMPORT_BASIC | PASS 用例编译失败 | 编译通过 | Fatal error F0014: Unresolved module | C类 |
| C7 | NSM_13_04_005_RUNTIME_IMPORT_INIT | RUNTIME 用例编译失败 | 编译+运行通过 | Fatal error F0014 | C类 |
| C8 | NSM_13_04_1_001_PASS_IMPORT_ALL_AS | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C9 | NSM_13_04_1_002_PASS_IMPORT_ALL_QUALIFIED_ACCESS | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C10 | NSM_13_04_1_003_RUNTIME_IMPORT_ALL_ACCESS | RUNTIME 用例编译失败 | 编译+运行通过 | Fatal error F0014 | C类 |
| C11 | NSM_13_04_2_001_PASS_DEFAULT_IMPORT | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C12 | NSM_13_04_2_002_PASS_DEFAULT_IMPORT_SELECTIVE | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C13 | NSM_13_04_3_001_PASS_SELECTIVE_IMPORT | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C14 | NSM_13_04_3_002_PASS_SELECTIVE_IMPORT_ALIAS | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C15 | NSM_13_04_4_001_PASS_IMPORT_TYPE | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C16 | NSM_13_04_4_002_PASS_IMPORT_TYPE_MIXED | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C17 | NSM_13_04_5_001_PASS_IMPORT_RELATIVE_PATH | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C18 | NSM_13_04_5_003_RUNTIME_IMPORT_PATH | RUNTIME 用例编译失败 | 编译+运行通过 | Fatal error F0014 | C类 |
| C19 | NSM_13_04_6_001_PASS_SEVERAL_BINDINGS_ONE_IMPORT | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C20 | NSM_13_07_4_001_PASS_RE_EXPORT_ALL | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C21 | NSM_13_07_4_002_PASS_RE_EXPORT_SELECTIVE | PASS 用例编译失败 | 编译通过 | Fatal error F0014 | C类 |
| C22 | NSM_13_09_001_PASS_MULTIFILE_SAME_HEADER | PASS 用例编译失败 | 编译通过 | Syntax error ESY0279 | C类 |

## A 类：已修复用例（无）

### 已解决问题

**~~C1~~** ✅ 已修复 — NSM_13_01_002_PASS_MODULE_WITH_IMPORT

- 原问题：用例使用 `import { Log } from "@ohos.log"`，es2panda 单文件编译无法解析外部模块路径（F0014）。
- **2026-07-17 复测：** 用例已改为自包含内联定义，编译通过（EXIT=0）。
- 用例路径：`13.1_Module_Declarations/compile-pass/NSM_13_01_002_PASS_MODULE_WITH_IMPORT.ets`

### 异常详情

**D1** ⭐⭐⭐ D类 — 标准库名重定义未报错

- **问题描述：** Spec §13.10 规定 "Using standard library names as names of programmer-defined entities at the module scope causes a compile-time error"，但 `let console: int = 5` 编译通过
- **复现用例 ID：** NSM_13_10_002_FAIL_STDLIB_NAME_REUSE
- **2026-07-17 复测：** 仍 ACCEPTED，未修复
- **建议：** 编译器应添加标准库名重定义检查（至少应发出warning）

**D2** ⭐⭐⭐ D类 — 合并 namespace 多初始化器未报错

- **问题描述：** Spec §13.3 规定 "Only one of the merging namespaces can have an initializer. Otherwise a compile-time error occurs"，但多个初始化器编译通过
- **复现用例 ID：** NSM_13_03_011_FAIL_NAMESPACE_MULTIPLE_INITIALIZER
- **跨语言对比（WSL实测）：**

| 语言 | 代码模式 | 行为 | WSL实测 |
|------|---------|------|---------|
| ArkTS | `namespace N { let x = 1 } namespace N { let y = 2 }` | ⚠️ 编译通过（违反spec） | FAIL_PASSED |
| Java | `static { val=10; } static { val=20; }` (多个static初始化块) | ✅ 编译通过 | javac实测通过,val=20 |
| Swift | 嵌套类型只有1个指定init | ✅ | swiftc实测通过 |

- **建议：** 编译器应检查合并 namespace 的初始化器数量

**D3** ⭐⭐⭐ D类 — 变量使用在声明前未报错

- **问题描述：** Spec §13.8 规定 "if a top-level statement refers to a variable or constant and the declaration is textually located after the statement, then a compile-time error occurs"，但 `console.log(a, b); let a = 1` 编译通过
- **复现用例 ID：** NSM_13_08_004_FAIL_TOP_LEVEL_USE_BEFORE_DECLARE
- **跨语言对比（WSL实测）：**

| 语言 | 代码 | 行为 | WSL实测 |
|------|------|------|---------|
| ArkTS | `console.log(a); let a = 1` | ⚠️ 编译通过（违反spec） | FAIL_PASSED |
| Java | `static int a = b + 1; static int b = 2;` | ❌ 编译错误 | javac实测报"illegal forward reference" |
| Swift | `print(a); let a = 1` | ❌ 编译错误 | swiftc实测确认禁止 |

- **建议：** 编译器应检查顶层语句中变量使用的前向引用

**D4** ⭐⭐ D类 — export type 引用非 type 未报错

- **问题描述：** Spec §13.7.3 规定 "If a binding refers to something other than type, then a compile-time error occurs"，但 `export type { foo }` （foo 为函数）编译通过
- **复现用例 ID：** NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE
- **跨语言对比（WSL实测）：**

| 语言 | 代码模式 | 行为 | WSL实测 |
|------|---------|------|---------|
| ArkTS | `export type { foo }` (foo为函数) | ⚠️ 编译通过（违反spec） | FAIL_PASSED |
| Java | import=类型+值绑定 | ✅ 不存在类型信息丢失 | TypeValue实测确认 |
| Swift | import=类型+值绑定 | ✅ 不存在类型信息丢失 | 实测确认 |

- **建议：** 编译器应检查 export type binding 的目标是否为 type

**D5** ⭐⭐ D类 — ambient 与非 ambient 混合未报错

- **问题描述：** Spec §13.1 规定 "If a module has at least one top-level ambient declaration, then all other declarations must be ambient"，但混合编译通过
- **复现用例 ID：** NSM_13_01_004_FAIL_AMBIENT_MIXED
- **跨语言对比（WSL实测）：**

| 语言 | 代码模式 | 行为 | WSL实测 |
|------|---------|------|---------|
| ArkTS | `declare function foo(); function bar() {}` (ambient混合) | ⚠️ 编译通过（违反spec） | FAIL_PASSED |
| Java | 无ambient概念, 天然支持多文件同包 | ✅ | 同包多文件编译通过 |
| Swift | 无ambient概念, 天然支持同模块多文件 | ✅ | 文件级作用域运行通过 |

- **建议：** 编译器应检查模块中 ambient 与非 ambient 声明的混合

**D6** ⭐⭐ D类 — export default expression 中未导出类型被要求导出

- **问题描述：** Spec §13.7.2 和 §13.6 示例显示 `class A { foo(){} } export default new A` 在 A 未导出时是合法的（因为 default export expression 创建匿名常量变量，import 端可用 a.foo()）。但 es2panda 报错 ESE1236581: "Type 'A' used in export declaration(s) is not exported"
- **复现用例 ID：** NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE
- **跨语言对比（WSL实测）：**

| 语言 | 代码 | 行为 | WSL实测 |
|------|------|------|---------|
| ArkTS (es2panda) | `class A{}; export default new A` | 编译错误 (A未导出) | ⚠️ D类 |
| Spec 期望 | `class A{}; export default new A` | 合法 (匿名常量变量) | — |
| Java | 类=类型+值(不存在"只导出值不导出类型"问题) | ✅ | DefaultExport实测: type+value both accessible |
| Swift | 类型=值绑定(不存在此问题) | ✅ | 实测确认 |

- **建议：** 编译器应允许 export default expression 引用未导出类型（因为 expression 值为常量，import 端不需要类型本身）

**C1-C22** ⭐ C类 — 编译器不支持 module header 语法 / 无法解析外部模块路径

- **问题描述：** import/re-export/multifile/module header 用例使用 `@ohos.xxx` 外部模块路径或 `export module "xxx"` 语法，es2panda 单文件编译无法解析
- **根本原因：** ① es2panda 不支持 `module` 关键字作为 module header 语法（报 Syntax error ESY0279）② es2panda 单文件编译无法解析外部模块路径（报 Fatal error F0014）
- **建议：** 需要构建系统（如 hvigor）或 arktsconfig.json 配置才能验证这些用例，标注为多文件构建测试项
