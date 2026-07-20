# 13 命名空间与模块 - 测试设计思维导图（章节级）

**生成日期：** 2026-06-27
**最近执行日期：** 2026-06-27
**本章目标：** 覆盖 ArkTS §13.1-§13.11 全部规范约束
**当前覆盖：** §13.1-§13.11（96 用例：42P+32F+22R）

---

## 一、测试分类策略

### 1.1 编译期通过（compile-pass）
- 合法声明语法验证
- 模块/namespace/export/import 正确用法
- 类型显式标注合规
- 入口函数签名合规
- ambient namespace跨模块可访问性
- export {A as default} / export default expression 语法

### 1.2 编译期失败（compile-fail）
- ambient与非ambient混合
- 导出无显式类型
- 导出使用未导出类型（含type alias、overload、public field）
- 声明/语句顺序违规
- namespace重复导出/合并冲突
- default export重复
- import违规（自导入、非前置、类型冲突）
- 入口函数签名错误/不可overload
- selective export别名与已导出名冲突

### 1.3 运行时（runtime）
- 模块初始化执行顺序
- namespace初始化器执行
- 导出实体跨模块访问
- 标准库调用
- main函数执行
- main()在top-level statements之后执行
- main()推断返回类型

---

## 二、子章节覆盖详情（§13.1 → §13.11）

### §13.1 Module Declarations（6 用例：3P+2F+1R）
- ✅ 基本模块声明、含导出的模块、无moduleHeader模块
- ⚠️ 含import的模块 → C类（需要构建系统）
- ⚠️ ambient与非ambient声明混合 → D类（SPEC不一致：编译通过而非报错）
- ✅ 模块初始化执行运行时

### §13.2 Module Header（5 用例：0P+1F+0R 实际可验证）
- ⚠️ export module/declare module/module string name → C类（es2panda不支持module header语法）
- ❌ 非ambient的moduleHeader含declare → 编译错误 ✅
- ⚠️ 模块头运行时 → C类（编译失败）

### §13.3 Namespace Declarations（15 用例：8P+5F+2R）
- ✅ 基本namespace、导出实体、qualifiedName访问、无限定访问
- ✅ 嵌套namespace、同名合并、A.B简写
- ❌ qualifiedName访问非导出实体 → 编译错误 ✅
- ❌ 合并namespace导出名重复 → 编译错误 ✅
- ❌ 导出与非导出同名 → 编译错误 ✅
- ⚠️ 多个初始化器 → D类（SPEC不一致：编译通过）
- ❌ 多个static block → 编译错误 ✅
- ✅ namespace初始化器执行、方法派发运行时
- ✅ **新增** ambient namespace跨模块可访问性 → compile-pass

### §13.4 Import Directives（5 用例：0P+3F+0R 实际可验证）
- ⚠️ 基本import声明 → C类（需要构建系统）
- ❌ import非前置 → 编译错误 ✅
- ❌ 模块导入自身 → 编译错误 ✅
- ❌ import type + binding type冲突 → 编译错误 ✅
- ⚠️ import触发模块初始化运行时 → C类

### §13.4.1 Bind All with Qualified Access（3 用例：0P+0F+0R 实际可验证）
- ⚠️ import * as / A.name → C类
- ⚠️ * as运行时 → C类
- **C类覆盖缺口**: import * as 无法导入 default export → error

### §13.4.2 Default Import Binding（3 用例：0P+1F+0R 实际可验证）
- ⚠️ default import → C类
- ❌ 非default形式导入default导出 → 编译错误 ✅

### §13.4.3 Selective Binding（3 用例：0P+1F+0R 实际可验证）
- ⚠️ selective import → C类
- ❌ alias后原名不可访问 → 编译错误 ✅
- **C类覆盖缺口**: overloaded function全部导入

### §13.4.4 Import Type Directive（3 用例：0P+1F+0R 实际可验证）
- ⚠️ import type → C类
- ❌ import type + binding type冲突 → 编译错误 ✅

### §13.4.5 Import Path（3 用例：0P+1F+0R 实际可验证）
- ⚠️ 相对路径导入 → C类
- ❌ 编译器无法定位模块 → 编译错误 ✅
- ⚠️ 导入路径运行时 → C类

### §13.4.6 Several Bindings for One Import Path（2 用例：0P+1F+0R 实际可验证）
- ⚠️ 同路径多条绑定 → C类
- ❌ 多绑定名称不可区分 → 编译错误 ✅
- **C类覆盖缺口**: 多条alias同名、alias+* as混合

### §13.5 Top-Level Declarations（4 用例：3P+0F+1R）
- ✅ 顶层class/function/variable声明
- ✅ 顶层声明执行顺序运行时

### §13.6 Exported Declarations（15 用例：4P+10F+1R）
- ✅ export class/function/variable/default
- ❌ 导出无显式类型 → 编译错误 ✅
- ❌ 导出函数无返回类型 → 编译错误 ✅
- ❌ 导出使用未导出类型 → 编译错误 ✅
- ❌ 导出名与另一导出名重复 → 编译错误 ✅
- ❌ 多个default export → 编译错误 ✅
- ❌ export class extends未导出类 → 编译错误 ✅
- ❌ export泛型约束未导出类型 → 编译错误 ✅
- ✅ 导出实体运行时访问
- ❌ **新增** export type alias引用未导出类型 → 编译错误 ✅
- ❌ **新增** export overload含未导出实体 → 编译错误 ✅
- ❌ **新增** export class public field使用未导出类型 → 编译错误 ✅
- **C类覆盖缺口**: export annotation使用未导出类型（需注解功能）

### §13.7 Export Directives（3 用例：2P+0F+1R）
- ✅ export指令选择性/单名导出
- ✅ export指令运行时

### §13.7.1 Selective Export Directive（4 用例：2P+1F+1R）
- ✅ export {d1, d2 as d3}
- ✅ A类修复：alias后原名在同一模块内仍可访问
- ✅ 选择性导出运行时
- ❌ **新增** export {bar as foo}别名与已导出同名 → 编译错误 ✅

### §13.7.2 Single Export Directive（6 用例：3P+2F+1R）
- ✅ export identifier / export default class
- ❌ 多个export default → 编译错误 ✅
- ✅ 单名导出运行时
- ✅ **新增** export {A as default}语法 → compile-pass
- ✅ **新增** export default expression (new A) → compile-pass
- ⚠️ **新增** export default new A(A未导出) → D类（编译器要求A导出，Spec认为合法）

### §13.7.3 Export Type Directive（2 用例：1P+1F）
- ✅ export type合法使用
- ⚠️ export type引用非type → D类（SPEC不一致：编译通过）

### §13.7.4 Re-Export Directive（4 用例：0P+2F+0R 实际可验证）
- ⚠️ re-export → C类（需要构建系统）
- ❌ re-export引用当前文件 → 编译错误 ✅
- ❌ re-export实体不可区分 → 编译错误 ✅
- **C类覆盖缺口**: export * as alias / {default} / {default as name}

### §13.8 Top-Level Statements（6 用例：2P+2F+2R）
- ✅ 顶层语句合法使用、声明在前语句在后
- ❌ 顶层语句含return → 编译错误 ✅
- ⚠️ 变量使用在声明前 → D类（SPEC不一致：编译通过）
- ✅ 顶层语句执行顺序运行时
- ✅ **新增** main()在top-level之后执行 → runtime ✅

### §13.9 Multifile Module（3 用例：0P+2F+0R 实际可验证）
- ⚠️ 同moduleHeader多文件 → C类
- ❌ 不同export修饰符 → 编译错误 ✅
- ❌ 顶层语句在多个文件 → 编译错误 ✅

### §13.10 Standard Library Usage（3 用例：1P+1F+1R）
- ✅ console.log标准库使用
- ⚠️ 重新定义标准库名 → D类（SPEC不一致：编译通过）
- ✅ 标准库运行时访问

### §13.11 Program Entry Point（7 用例：3P+2F+2R）
- ✅ main(): void / main(): int入口
- ❌ main()签名错误 → 编译错误 ✅
- ✅ main函数运行时
- ✅ **新增** main(FixedArray\<string\>)参数 → compile-pass ✅
- ❌ **新增** main不可overload → 编译错误 ✅
- ✅ **新增** main推断返回类型 → runtime ✅

---

## 三、章节执行统计

| 子章节 | P | F | R | 总计 | D类 | C类 | 最近执行 |
|-------|---|---|------|------|-----|-----|---------|
| 13.1 Module Declarations | 3 | 2 | 1 | 6 | 1 | 1 | 2026-06-27 |
| 13.2 Module Header | 0* | 1 | 0* | 5 | 0 | 4 | 2026-06-27 |
| 13.3 Namespace Declarations | 8 | 5 | 2 | 15 | 1 | 0 | 2026-06-27 |
| 13.4 Import Directives | 0* | 3 | 0* | 5 | 0 | 2 | 2026-06-27 |
| 13.4.1 Bind All with Qualified Access | 0* | 0 | 0* | 3 | 0 | 3 | 2026-06-27 |
| 13.4.2 Default Import Binding | 0* | 1 | 0 | 3 | 0 | 2 | 2026-06-27 |
| 13.4.3 Selective Binding | 0* | 1 | 0* | 3 | 0 | 2 | 2026-06-27 |
| 13.4.4 Import Type Directive | 0* | 1 | 0* | 3 | 0 | 2 | 2026-06-27 |
| 13.4.5 Import Path | 0* | 1 | 0* | 3 | 0 | 2 | 2026-06-27 |
| 13.4.6 Several Bindings for One Import Path | 0* | 1 | 0 | 2 | 0 | 1 | 2026-06-27 |
| 13.5 Top-Level Declarations | 3 | 0 | 1 | 4 | 0 | 0 | 2026-06-27 |
| 13.6 Exported Declarations | 4 | 10 | 1 | 15 | 0 | 0 | 2026-06-27 |
| 13.7 Export Directives | 2 | 0 | 1 | 3 | 0 | 0 | 2026-06-27 |
| 13.7.1 Selective Export Directive | 2 | 1 | 1 | 4 | 0 | 0 | 2026-06-27 |
| 13.7.2 Single Export Directive | 3 | 2 | 1 | 6 | 1 | 0 | 2026-06-27 |
| 13.7.3 Export Type Directive | 1 | 1 | 0 | 2 | 1 | 0 | 2026-06-27 |
| 13.7.4 Re-Export Directive | 0* | 2 | 0 | 4 | 0 | 2 | 2026-06-27 |
| 13.8 Top-Level Statements | 2 | 2 | 2 | 6 | 1 | 0 | 2026-06-27 |
| 13.9 Multifile Module | 0* | 2 | 0 | 3 | 0 | 1 | 2026-06-27 |
| 13.10 Standard Library Usage | 1 | 1 | 1 | 3 | 1 | 0 | 2026-06-27 |
| 13.11 Program Entry Point | 3 | 2 | 2 | 7 | 0 | 0 | 2026-06-27 |
| **可验证总计** | **27** | **32** | **11** | **70** | **6** | **0** | — |
| **C类（不可验证）** | **16** | **0** | **9** | **25** | — | **25** | — |
| **总计** | **42** | **32** | **22** | **96** | **6** | **25** | 2026-06-27 |

> *标注 C类的子章节中，PASS 和 RUNTIME 用例在单文件 es2panda 中无法验证

---

## 四、Spec 与实现不一致汇总（D类 — 6 项）

| # | 用例 ID | Spec 规则 | 实现行为 | 章节 |
|---|---------|----------|---------|------|
| 1 | NSM_13_10_002 | 标准库名重定义 → compile-time error | 编译通过 | §13.10 |
| 2 | NSM_13_03_011 | 合并namespace多初始化器 → compile-time error | 编译通过 | §13.3 |
| 3 | NSM_13_08_004 | 变量使用在声明前 → compile-time error | 编译通过 | §13.8 |
| 4 | NSM_13_07_3_002 | export type引用非type → compile-time error | 编译通过 | §13.7.3 |
| 5 | NSM_13_01_004 | ambient与非ambient混合 → compile-time error | 编译通过 | §13.1 |
| 6 | NSM_13_07_2_007 | export default new A(A未导出) → Spec合法 | 编译器要求A导出 | §13.7.2 |

---

## 五、编译器实现限制汇总（C类）

| 类别 | 影响范围 | 原因 | 用例数 |
|------|---------|------|--------|
| module header 语法不支持 | §13.2, §13.9 | es2panda 不识别 `export module "xxx"` 语法 | 5 |
| 外部模块路径不可解析 | §13.4, §13.4.1-6, §13.7.4 | es2panda 单文件无法解析 `@ohos.xxx` | 19 |
| 相对路径无辅助文件 | §13.4.4, §13.4.5 | 无对应的辅助模块文件 | 1 |

---

## 六、仍需覆盖的 C类缺口

| # | 遗漏章节 | Spec 规则 | 原因 |
|---|---------|----------|------|
| 1 | §13.4.2 | import * as 无法导入 default export → error | 需import跨模块 |
| 2 | §13.4.3 | overloaded function全部导入 | 需import跨模块 |
| 3 | §13.7.4 | export * as alias / {default} / {default as name} from path | 需re-export跨模块 |
