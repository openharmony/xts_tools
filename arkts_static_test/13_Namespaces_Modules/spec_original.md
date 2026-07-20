# 13 命名空间与模块 - 规范摘录

**来源：** ArkTS 静态语言规范，第 13 章 命名空间与模块（§13.1-§13.11）
**版本：** Release 1.2.1-alpha TECHNICAL PREVIEW 10
**提取日期：** 2026-06-27

## Scope

本章覆盖模块声明、模块头、命名空间声明、导入指令、顶层声明、导出声明、导出指令、顶层语句、多文件模块、标准库使用和程序入口点。

## 子章节覆盖

| 章节 | 标题 | 核心内容 |
|------|------|---------|
| 13.1 | Module Declarations | moduleDeclaration 语法；模块创建自己的 scope；导出实体必须显式类型；导入后才能使用；模块可由单文件或多文件组成；module 可含 moduleHeader + importDirective + topDeclaration + topLevelStatements + exportDirective |
| 13.2 | Module Header | moduleHeader: 'declare'? 'export'? 'module' moduleName; moduleName = StringLiteral; declare 修饰符 → 整模块为 ambient，否则编译错误；export 由构建系统决定可访问性 |
| 13.3 | Namespace Declarations | namespaceDeclaration: 'namespace' qualifiedName '{' ... '}'; namespace 创建自己的 scope；未导出实体仅在 scope 内可访问；导出实体用 qualifiedName 访问；namespace 可有顶层语句或 static block（仅一个，否则编译错误）；同名 namespace 合并导出声明，重复则编译错误；导出与非导出同名也编译错误；合并 namespace 仅一个可有初始化器；qualified namespace name 是嵌入 namespace 的简写 |
| 13.4 | Import Directives | importDirective: 'import' 'type'? bindings 'from' importPath; 绑定形式：defaultBinding / allBinding / selectiveBindings; 编译错误条件：非 import 语句前置、实体不可区分、自导入、import type 与 binding type 冲突；编译警告：importPath 指向空 ArkTS 文件 |
| 13.4.1 | Bind All with Qualified Access | `import * as A from "..."`; 使用 A.name 访问导出实体 |
| 13.4.2 | Default Import Binding | 单标识符导入或 `{default as Name}`; 用其余形式导入 default 导出 → 编译错误 |
| 13.4.3 | Selective Binding | `{identifier}` / `{identifier as alias}` / `{default as Name}`; alias 后原名不可访问；overloaded 函数全部导入 |
| 13.4.4 | Import Type Directive | `import type` 仅为 TS 语法兼容；ArkTS 不做额外语义检查；import type + binding type 冲突 → 编译错误 |
| 13.4.5 | Import Path | StringLiteral；相对路径以 './' 或 '../' 开头；'/' 为分隔符（不分平台）；非相对路径依赖编译配置；编译器无法定位 → 编译错误 |
| 13.4.6 | Several Bindings for One Import Path | 同路径多条 import 或一条 import 多绑定；名称规则：无 alias 重名→warning；有 alias→仅 alias 可访问；多条 alias→均可访问 |
| 13.5 | Top-Level Declarations | topDeclaration: ('export' 'default'?)? annotationUsage? (typeDeclaration \| variableDeclarations \| ...); 可导出 |
| 13.6 | Exported Declarations | export 修饰符使声明可被其余模块 import；导出名与另一导出名重复 → 编译错误；仅一个 default export；default export expression 创建匿名常量变量；导出实体类型必须显式设置（函数/变量/常量/类成员）；导出实体使用未导出类型 → 编译错误（含 extends/implements、泛型约束/默认值、type alias、annotation） |
| 13.7 | Export Directives | selectiveExportDirective / singleExportDirective / exportTypeDirective / reExportDirective |
| 13.7.1 | Selective Export Directive | `export { d1, d2 as d3 }`; d2 以 d3 名导出后原名不可访问 |
| 13.7.2 | Single Export Directive | `export identifier` / `export default expression` / `export default identifier` / `export { A as default }`; 仅一个 default；import 的标识符可 re-export |
| 13.7.3 | Export Type Directive | `export type selectiveBindings`; 仅 TS 语法兼容；binding 引用非 type → 编译错误 |
| 13.7.4 | Re-Export Directive | `export * from "path"` / `export * as alias from "path"` / `export { d1, d2 as d3 } from "path"` / `export {default} from "path"` / `export {default as name} from "path"`; importPath 不可引用当前文件；实体不可区分 → 编译错误 |
| 13.8 | Top-Level Statements | statement*; 逻辑合并为单一序列（声明在前，语句在后）；模块导入时初始化执行一次；含 return → 编译错误；变量使用在声明前 → 编译错误 |
| 13.9 | Multifile Module | 同 moduleHeader 的多个文件组成多文件模块；不同 export 修饰符 → 编译错误；顶层语句在不同文件 → 编译错误 |
| 13.10 | Standard Library Usage | 标准库导出实体可直接使用；重新定义同名 → 编译错误 |
| 13.11 | Program Entry Point | 入口：顶层语句 或 入口函数；入口函数：export 函数、无参或 FixedArray\<string\> 参数、返回 void 或 int、不可 overload、默认名为 main |

## 已知 Spec 与实现差异

| # | Spec 规则 | 实现行为 | 用例 ID | 章节 |
|---|----------|---------|---------|------|
| 1 | 标准库名重定义 → compile-time error | 编译通过 | NSM_13_10_002 | §13.10 |
| 2 | 合并namespace多初始化器 → compile-time error | 编译通过 | NSM_13_03_011 | §13.3 |
| 3 | 变量使用在声明前 → compile-time error | 编译通过 | NSM_13_08_004 | §13.8 |
| 4 | export type引用非type → compile-time error | 编译通过 | NSM_13_07_3_002 | §13.7.3 |
| 5 | ambient与非ambient混合 → compile-time error | 编译通过 | NSM_13_01_004 | §13.1 |
| 6 | export default new A(A未导出) → Spec合法 | 编译器要求A导出 | NSM_13_07_2_007 | §13.7.2 |
| 7 | es2panda不支持module header语法 | 编译失败 | 多个 | §13.2, §13.9 |
| 8 | es2panda单文件无法解析外部模块路径 | 编译失败 | 多个 | §13.4, §13.7.4 |

## 待补充测试项（C类 — 需构建系统）

- import * as 无法导入 default export → compile-time error (§13.4.2)
- overloaded function全部导入 (§13.4.3)
- export * as alias / {default} / {default as name} from path (§13.7.4)
- module header 语法测试需要编译器更新支持

## 章节文件目录

```
ets_cases/
├── 13.1_Module_Declarations/
├── 13.2_Module_Header/
├── 13.3_Namespace_Declarations/
├── 13.4_Import_Directives/
├── 13.4.1_Bind_All_with_Qualified_Access/
├── 13.4.2_Default_Import_Binding/
├── 13.4.3_Selective_Binding/
├── 13.4.4_Import_Type_Directive/
├── 13.4.5_Import_Path/
├── 13.4.6_Several_Bindings_for_One_Import_Path/
├── 13.5_Top_Level_Declarations/
├── 13.6_Exported_Declarations/
├── 13.7_Export_Directives/
├── 13.7.1_Selective_Export_Directive/
├── 13.7.2_Single_Export_Directive/
├── 13.7.3_Export_Type_Directive/
├── 13.7.4_Re_Export_Directive/
├── 13.8_Top_Level_Statements/
├── 13.9_Multifile_Module/
├── 13.10_Standard_Library_Usage/
└── 13.11_Program_Entry_Point/
```
