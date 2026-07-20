# 13 命名空间与模块 - 测试用例目录

**生成日期：** 2026-06-27
**最近执行日期：** 2026-06-27
**共计：** 106 个测试用例（51 compile-pass + 38 compile-fail + 17 runtime）
**可验证：** 81 个（34 compile-pass OK + 28 compile-fail OK + 13 runtime OK + 6 D类）
**不可验证（C类）：** 25 个（需要构建系统或编译器更新）

---

## 13.1 Module Declarations（6 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_01_001_PASS_MODULE_BASIC | compile-pass | 基本模块声明 | ✅ |
| 002 | NSM_13_01_002_PASS_MODULE_WITH_IMPORT | compile-pass | 含导入的模块 | ⚠️ C类 |
| 003 | NSM_13_01_003_PASS_MODULE_WITH_EXPORT | compile-pass | 含导出的模块 | ✅ |
| 004 | NSM_13_01_004_FAIL_AMBIENT_MIXED | compile-fail | ambient与非ambient混合 | ⚠️ D类 |
| 005 | NSM_13_01_005_PASS_MODULE_NO_HEADER | compile-pass | 无moduleHeader的模块 | ✅ |
| 006 | NSM_13_01_006_RUNTIME_MODULE_INIT | runtime | 模块初始化执行 | ✅ |

## 13.2 Module Header（5 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_02_001_PASS_EXPORT_MODULE | compile-pass | export module声明 | ⚠️ C类 |
| 002 | NSM_13_02_002_PASS_DECLARE_MODULE | compile-pass | declare module声明 | ⚠️ C类 |
| 003 | NSM_13_02_003_FAIL_MODULE_NO_DECLARE | compile-fail | moduleHeader含declare但非ambient | ✅ |
| 004 | NSM_13_02_004_PASS_MODULE_STRING_NAME | compile-pass | 模块名为StringLiteral | ⚠️ C类 |
| 005 | NSM_13_02_005_RUNTIME_MODULE_HEADER | runtime | 模块头运行时 | ⚠️ C类 |

## 13.3 Namespace Declarations（15 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_03_001_PASS_NAMESPACE_BASIC | compile-pass | 基本namespace声明 | ✅ |
| 002 | NSM_13_03_002_PASS_NAMESPACE_EXPORT | compile-pass | namespace导出实体 | ✅ |
| 003 | NSM_13_03_003_PASS_NAMESPACE_QUALIFIED_ACCESS | compile-pass | qualifiedName访问导出实体 | ✅ |
| 004 | NSM_13_03_004_PASS_NAMESPACE_UNQUALIFIED_ACCESS | compile-pass | namespace内无限定访问 | ✅ |
| 005 | NSM_13_03_005_PASS_NAMESPACE_EMBEDDED | compile-pass | 嵌套namespace | ✅ |
| 006 | NSM_13_03_006_PASS_NAMESPACE_MERGE | compile-pass | 同名namespace合并 | ✅ |
| 007 | NSM_13_03_007_PASS_NAMESPACE_QUALIFIED_SHORTCUT | compile-pass | A.B为嵌入namespace简写 | ✅ |
| 008 | NSM_13_03_008_FAIL_NAMESPACE_QUALIFIED_NON_EXPORTED | compile-fail | qualifiedName访问非导出实体 | ✅ |
| 009 | NSM_13_03_009_FAIL_NAMESPACE_DUPLICATE_EXPORT | compile-fail | 合并namespace导出名重复 | ✅ |
| 010 | NSM_13_03_010_FAIL_NAMESPACE_EXPORT_NON_EXPORT_SAME_NAME | compile-fail | 导出与非导出同名 | ✅ |
| 011 | NSM_13_03_011_FAIL_NAMESPACE_MULTIPLE_INITIALIZER | compile-fail | 多个初始化器 | ⚠️ D类 |
| 012 | NSM_13_03_012_FAIL_NAMESPACE_STATIC_BLOCK_DUPLICATE | compile-fail | 多个static block | ✅ |
| 013 | NSM_13_03_013_RUNTIME_NAMESPACE_INITIALIZER | runtime | namespace初始化器执行 | ✅ |
| 014 | NSM_13_03_014_RUNTIME_NAMESPACE_MERGE_DISPATCH | runtime | 合成namespace方法派发 | ✅ |
| 015 | NSM_13_03_015_PASS_AMBIENT_NAMESPACE_ACCESS | compile-pass | ambient namespace跨模块可访问性 | ✅ **新增** |

## 13.4 Import Directives（5 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_04_001_PASS_IMPORT_BASIC | compile-pass | 基本import声明 | ⚠️ C类 |
| 002 | NSM_13_04_002_FAIL_IMPORT_AFTER_DECLARATION | compile-fail | import非前置 | ✅ |
| 003 | NSM_13_04_003_FAIL_IMPORT_SELF | compile-fail | 模块导入自身 | ✅ |
| 004 | NSM_13_04_004_FAIL_IMPORT_TYPE_BINDING_TYPE | compile-fail | import type + binding type冲突 | ✅ |
| 005 | NSM_13_04_005_RUNTIME_IMPORT_INIT | runtime | import触发模块初始化 | ⚠️ C类 |

## 13.4.1 Bind All with Qualified Access（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_04_1_001_PASS_IMPORT_ALL_AS | compile-pass | import * as 合法使用 | ⚠️ C类 |
| 002 | NSM_13_04_1_002_PASS_IMPORT_ALL_QUALIFIED_ACCESS | compile-pass | A.name访问导出实体 | ⚠️ C类 |
| 003 | NSM_13_04_1_003_RUNTIME_IMPORT_ALL_ACCESS | runtime | * as运行时访问 | ⚠️ C类 |

## 13.4.2 Default Import Binding（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_04_2_001_PASS_DEFAULT_IMPORT | compile-pass | 单标识符default导入 | ⚠️ C类 |
| 002 | NSM_13_04_2_002_PASS_DEFAULT_IMPORT_SELECTIVE | compile-pass | {default as Name}导入 | ⚠️ C类 |
| 003 | NSM_13_04_2_003_FAIL_DEFAULT_IMPORT_WRONG_FORM | compile-fail | 非default形式导入default导出 | ✅ |

## 13.4.3 Selective Binding（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_04_3_001_PASS_SELECTIVE_IMPORT | compile-pass | {identifier}选择性导入 | ⚠️ C类 |
| 002 | NSM_13_04_3_002_PASS_SELECTIVE_IMPORT_ALIAS | compile-pass | {identifier as alias}别名导入 | ⚠️ C类 |
| 003 | NSM_13_04_3_003_FAIL_ALIAS_ORIGINAL_NOT_ACCESSIBLE | compile-fail | alias后原名不可访问 | ✅ |

## 13.4.4 Import Type Directive（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_04_4_001_PASS_IMPORT_TYPE | compile-pass | import type合法使用 | ⚠️ C类 |
| 002 | NSM_13_04_4_002_PASS_IMPORT_TYPE_MIXED | compile-pass | 混合导入 | ⚠️ C类 |
| 003 | NSM_13_04_4_003_FAIL_IMPORT_TYPE_BINDING_TYPE | compile-fail | import type + binding type冲突 | ✅ |

## 13.4.5 Import Path（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_04_5_001_PASS_IMPORT_RELATIVE_PATH | compile-pass | 相对路径导入 | ⚠️ C类 |
| 002 | NSM_13_04_5_002_FAIL_IMPORT_CANNOT_LOCATE | compile-fail | 编译器无法定位模块 | ✅ |
| 003 | NSM_13_04_5_003_RUNTIME_IMPORT_PATH | runtime | 导入路径运行时 | ⚠️ C类 |

## 13.4.6 Several Bindings for One Import Path（2 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_04_6_001_PASS_SEVERAL_BINDINGS_ONE_IMPORT | compile-pass | 同路径多条绑定 | ⚠️ C类 |
| 002 | NSM_13_04_6_002_FAIL_SEVERAL_BINDINGS_NAME_CONFLICT | compile-fail | 多绑定名称不可区分 | ✅ |

## 13.5 Top-Level Declarations（4 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_05_001_PASS_TOP_DECL_CLASS | compile-pass | 顶层class声明 | ✅ |
| 002 | NSM_13_05_002_PASS_TOP_DECL_FUNCTION | compile-pass | 顶层function声明 | ✅ |
| 003 | NSM_13_05_003_PASS_TOP_DECL_VARIABLE | compile-pass | 顶层变量声明 | ✅ |
| 004 | NSM_13_05_004_RUNTIME_TOP_DECL_ORDER | runtime | 顶层声明执行顺序 | ✅ |

## 13.6 Exported Declarations（15 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_06_001_PASS_EXPORT_CLASS | compile-pass | export class | ✅ |
| 002 | NSM_13_06_002_PASS_EXPORT_FUNCTION | compile-pass | export function | ✅ |
| 003 | NSM_13_06_003_PASS_EXPORT_VARIABLE | compile-pass | export let/const | ✅ |
| 004 | NSM_13_06_004_PASS_EXPORT_DEFAULT | compile-pass | export default声明 | ✅ |
| 005 | NSM_13_06_005_FAIL_EXPORT_NO_EXPLICIT_TYPE | compile-fail | 导出无显式类型 | ✅ |
| 006 | NSM_13_06_006_FAIL_EXPORT_NO_RETURN_TYPE | compile-fail | 导出函数无返回类型 | ✅ |
| 007 | NSM_13_06_007_FAIL_EXPORT_UNEXPORTED_TYPE | compile-fail | 导出使用未导出类型 | ✅ |
| 008 | NSM_13_06_008_FAIL_EXPORT_NAME_DUPLICATE | compile-fail | 导出名重复 | ✅ |
| 009 | NSM_13_06_009_FAIL_EXPORT_DEFAULT_DUPLICATE | compile-fail | 多个default export | ✅ |
| 010 | NSM_13_06_010_FAIL_EXPORT_UNEXPORTED_EXTENDS | compile-fail | extends未导出类 | ✅ |
| 011 | NSM_13_06_011_FAIL_EXPORT_UNEXPORTED_GENERIC | compile-fail | 泛型约束未导出类型 | ✅ |
| 012 | NSM_13_06_012_RUNTIME_EXPORT_ACCESS | runtime | 导出实体运行时访问 | ✅ |
| 013 | NSM_13_06_013_FAIL_EXPORT_TYPE_ALIAS_UNEXPORTED | compile-fail | export type alias引用未导出类型 | ✅ **新增** |
| 015 | NSM_13_06_015_FAIL_EXPORT_OVERLOAD_UNEXPORTED | compile-fail | export overload含未导出实体 | ✅ **新增** |
| 016 | NSM_13_06_016_FAIL_EXPORT_CLASS_PUBLIC_FIELD_UNEXPORTED | compile-fail | export class public field使用未导出类型 | ✅ **新增** |

## 13.7 Export Directives（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_07_001_PASS_EXPORT_DIRECTIVE_SELECTIVE | compile-pass | export指令选择性导出 | ✅ |
| 002 | NSM_13_07_002_PASS_EXPORT_DIRECTIVE_SINGLE | compile-pass | export指令单名导出 | ✅ |
| 003 | NSM_13_07_003_RUNTIME_EXPORT_DIRECTIVE | runtime | export指令运行时 | ✅ |

## 13.7.1 Selective Export Directive（4 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_07_1_001_PASS_SELECTIVE_EXPORT | compile-pass | export {d1, d2 as d3} | ✅ |
| 002 | NSM_13_07_1_002_PASS_SELECTIVE_EXPORT_ALIAS_LOCAL_ACCESS | compile-pass | alias后原名同一模块内仍可用 | ✅ (A类修复) |
| 003 | NSM_13_07_1_003_RUNTIME_SELECTIVE_EXPORT | runtime | 选择性导出运行时 | ✅ |
| 004 | NSM_13_07_1_004_FAIL_SELECTIVE_EXPORT_ALIAS_CLASH | compile-fail | export {bar as foo}与已导出foo同名 | ✅ **新增** |

## 13.7.2 Single Export Directive（7 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_07_2_001_PASS_SINGLE_EXPORT_IDENTIFIER | compile-pass | export identifier | ✅ |
| 002 | NSM_13_07_2_002_PASS_EXPORT_DEFAULT_CLASS | compile-pass | export default class | ✅ |
| 003 | NSM_13_07_2_003_FAIL_EXPORT_DEFAULT_MULTIPLE | compile-fail | 多个export default | ✅ |
| 004 | NSM_13_07_2_004_RUNTIME_SINGLE_EXPORT | runtime | 单名导出运行时 | ✅ |
| 005 | NSM_13_07_2_005_PASS_EXPORT_AS_DEFAULT | compile-pass | export {A as default}语法 | ✅ **新增** |
| 006 | NSM_13_07_2_006_PASS_EXPORT_DEFAULT_EXPRESSION | compile-pass | export default expression (new A) | ✅ **新增** |
| 007 | NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE | compile-fail | export default new A(A未导出) | ⚠️ D类 **新增** |

## 13.7.3 Export Type Directive（2 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_07_3_001_PASS_EXPORT_TYPE | compile-pass | export type合法使用 | ✅ |
| 002 | NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE | compile-fail | export type引用非type | ⚠️ D类 |

## 13.7.4 Re-Export Directive（4 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_07_4_001_PASS_RE_EXPORT_ALL | compile-pass | export * from路径 | ⚠️ C类 |
| 002 | NSM_13_07_4_002_PASS_RE_EXPORT_SELECTIVE | compile-pass | export {d1} from路径 | ⚠️ C类 |
| 003 | NSM_13_07_4_003_FAIL_RE_EXPORT_SELF | compile-fail | re-export引用当前文件 | ✅ |
| 004 | NSM_13_07_4_004_FAIL_RE_EXPORT_NOT_DISTINGUISHABLE | compile-fail | re-export实体不可区分 | ✅ |

## 13.8 Top-Level Statements（6 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_08_001_PASS_TOP_LEVEL_STATEMENTS | compile-pass | 顶层语句合法使用 | ✅ |
| 002 | NSM_13_08_002_PASS_TOP_LEVEL_ORDER | compile-pass | 声明在前语句在后 | ✅ |
| 003 | NSM_13_08_003_FAIL_TOP_LEVEL_RETURN | compile-fail | 顶层语句含return | ✅ |
| 004 | NSM_13_08_004_FAIL_TOP_LEVEL_USE_BEFORE_DECLARE | compile-fail | 变量使用在声明前 | ⚠️ D类 |
| 005 | NSM_13_08_005_RUNTIME_TOP_LEVEL_EXEC | runtime | 顶层语句执行顺序 | ✅ |
| 006 | NSM_13_08_006_RUNTIME_MAIN_AFTER_TOP_LEVEL | runtime | main()在top-level statements之后执行 | ✅ **新增** |

## 13.9 Multifile Module（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_09_001_PASS_MULTIFILE_SAME_HEADER | compile-pass | 同moduleHeader多文件 | ⚠️ C类 |
| 002 | NSM_13_09_002_FAIL_MULTIFILE_DIFF_EXPORT | compile-fail | 不同export修饰符 | ✅ |
| 003 | NSM_13_09_003_FAIL_MULTIFILE_TOP_LEVEL_IN_SEVERAL | compile-fail | 顶层语句在多个文件 | ✅ |

## 13.10 Standard Library Usage（3 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_10_001_PASS_STDLIB_CONSOLE | compile-pass | console.log标准库使用 | ✅ |
| 002 | NSM_13_10_002_FAIL_STDLIB_NAME_REUSE | compile-fail | 重新定义标准库名 | ⚠️ D类 |
| 003 | NSM_13_10_003_RUNTIME_STDLIB_ACCESS | runtime | 标准库运行时访问 | ✅ |

## 13.11 Program Entry Point（7 用例）

| # | 文件 | 类型 | 测试目的 | 执行结果 |
|---|------|------|---------|---------|
| 001 | NSM_13_11_001_PASS_MAIN_VOID | compile-pass | main(): void入口 | ✅ |
| 002 | NSM_13_11_002_PASS_MAIN_INT | compile-pass | main(): int入口 | ✅ |
| 003 | NSM_13_11_003_FAIL_MAIN_WRONG_SIGNATURE | compile-fail | main()签名错误 | ✅ |
| 004 | NSM_13_11_004_RUNTIME_MAIN_EXEC | runtime | main函数运行时 | ✅ |
| 005 | NSM_13_11_005_PASS_MAIN_FIXED_ARRAY | compile-pass | main(FixedArray\<string\>)参数 | ✅ **新增** |
| 006 | NSM_13_11_006_FAIL_MAIN_OVERLOAD | compile-fail | main函数不可overload | ✅ **新增** |
| 007 | NSM_13_11_007_RUNTIME_MAIN_INFERRED_RETURN | runtime | main()推断返回类型 | ✅ **新增** |

---

## 执行统计汇总

| 分类 | 可验证总数 | 通过 | 异常 | 通过率 |
|------|----------|------|------|--------|
| compile-pass | 34 | 34 | 0 | 100% |
| compile-fail | 34 | 28 | 6 (D类) | 82% |
| runtime | 13 | 13 | 0 | 100% |
| **可验证总计** | **81** | **75** | **6** | 93% |
| C类（不可验证） | 25 | — | — | — |

---

## 新增用例说明（覆盖补漏）

| # | 用例 ID | 章节 | 测试目的 | 补漏原因 |
|---|---------|------|---------|---------|
| 1 | NSM_13_03_015 | §13.3 | ambient namespace跨模块可访问性 | Spec要求declare namespace成员在函数/类/顶层都可访问 |
| 2 | NSM_13_06_013 | §13.6 | export type alias引用未导出类型 | Spec: exported type alias uses unexported type → error |
| 3 | NSM_13_06_015 | §13.6 | export overload含未导出实体 | Spec: exported overload contains unexported entities → error |
| 4 | NSM_13_06_016 | §13.6 | export class public field未导出类型 | Spec: public field uses unexported entity as type → error |
| 5 | NSM_13_07_1_004_FAIL_SELECTIVE_EXPORT_ALIAS_CLASH | §13.7.1 | export {bar as foo}别名与已导出同名冲突 | Spec: selective export alias clashes with exported name → error |
| 6 | NSM_13_07_2_005_PASS_EXPORT_AS_DEFAULT | §13.7.2 | export {A as default}语法 | Spec语法形式未被覆盖 |
| 7 | NSM_13_07_2_006_PASS_EXPORT_DEFAULT_EXPRESSION | §13.7.2 | export default expression | Spec: export default new A语法形式 |
| 8 | NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE | §13.7.2 | export default new A(A未导出) | D类: Spec认为合法但编译器要求A导出 |
| 9 | NSM_13_08_006 | §13.8 | main()在top-level之后执行 | Spec: main函数在top-level statements之后执行 |
| 10 | NSM_13_11_005 | §13.11 | main(FixedArray\<string\>) | Spec: 入口函数可有FixedArray\<string\>参数 |
| 11 | NSM_13_11_006 | §13.11 | main不可overload | Spec: 入口函数不可overload → error |
| 12 | NSM_13_11_007 | §13.11 | main推断返回类型 | Spec: 返回类型从body推断 |

---

## D类不一致汇总（6 项）

| # | 用例 ID | Spec 规则 | 实现行为 | 章节 |
|---|---------|----------|---------|------|
| 1 | NSM_13_10_002 | 标准库名重定义 → compile-time error | 编译通过 | §13.10 |
| 2 | NSM_13_03_011 | 合并namespace多初始化器 → compile-time error | 编译通过 | §13.3 |
| 3 | NSM_13_08_004 | 变量使用在声明前 → compile-time error | 编译通过 | §13.8 |
| 4 | NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE | export type引用非type → compile-time error | 编译通过 | §13.7.3 |
| 5 | NSM_13_01_004 | ambient与非ambient混合 → compile-time error | 编译通过 | §13.1 |
| 6 | NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE | export default new A(A未导出) → Spec合法 | 编译器要求A导出 | §13.7.2 |

---

## 仍需构建系统支持的C类覆盖缺口（3 项）

| # | 遗漏章节 | Spec 规则 | 原因 |
|---|---------|----------|------|
| 1 | §13.4.2 | import * as 无法导入 default export → error | 需要import跨模块 |
| 2 | §13.4.3 | overloaded function全部导入 | 需要import跨模块 |
| 3 | §13.7.4 | export * as alias / {default} / {default as name} | 需要re-export跨模块 |
