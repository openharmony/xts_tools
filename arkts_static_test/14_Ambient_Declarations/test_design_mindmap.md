# 14 Ambient Declarations Test Design Mindmap

## 概述

Ambient Declarations 使用 `declare` 关键字声明在别处定义的实体类型信息，不引入新实体、不包含可执行代码。本章验证 ArkTS 编译器对 spec 第 14 章所有声明的校验规则。

**核心测试原则：**
- **compile-pass**：验证合法 ambient 语法编译通过（无 Syntax/Semantic error）
- **compile-fail**：验证 spec 要求的约束正确报错（有 Syntax/Semantic error）
- **runtime**：验证 ambient 声明不干扰正常代码的编译与执行
- **三环境对比**：ArkTS / Java / Swift 三语言等价代码实测对比

## 总体测试策略

| 维度 | 策略 |
|------|------|
| 正向覆盖 | 每种 ambient 声明类型覆盖所有合法变体（基本类型、复合类型、命名空间内、多声明） |
| 反向覆盖 | 每项 spec 约束使用至少一个独立用例验证报错 |
| 边界测试 | 空声明、多声明、嵌套声明、可选参数、泛型参数 |
| 跨语言对比 | 每种 ambient 声明与 Java/Swift 中最接近的概念对照 |
| 运行时 | 验证 ambient 声明与正常代码共存不影响执行 |

## 子章节设计

### 14.1 Ambient Constant or Variable Declarations

**规则**：declare let/const 必须显式类型注解、无初始化器

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 基本类型（int/string/boolean/double/Object/Any/数组/联合/函数类型）、let/const、多声明 | 14 |
| compile-fail | 初始化器（int/string/bool/array/多声明混合）、无类型注解 | 10 |
| runtime | ambient 声明与 main 共存 | 2 |

### 14.2 Ambient Function Declarations

**规则**：declare function 必须显式返回类型、参数无默认值、无函数体、无 async

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 基本 void/多参数/可选参数/无参数/数组返回/Object 返回/联合参数/混合参数 | 8 |
| compile-fail | 无返回类型/默认值/函数体/async/可选+默认值/多默认值/布尔默认值 | 7 |
| runtime | ambient function + main | 1 |

### 14.3 Ambient Overload Function Declarations

**规则**：declare overload 声明重载集，引用已声明函数；引用不存在/等价签名/空集/非 declare 函数报错

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 顶层重载/namespace 内/三重载/不同参数个数/可选参数混合/函数内调用 | 6 |
| compile-fail | 引用不存在/等价签名/空集/未声明标识符/引用非 declare 函数 | 5 |
| runtime | overload + main | 1 |

### 14.4 Ambient Class Declarations

**规则**：declare class 字段无初始化器/显式类型、构造器/方法/访问器无体

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 空类/字段/static 字段/readonly 字段/构造器/方法/static 方法/方法重载/extends/implements/访问器 | 11 |
| compile-fail | 字段初始化器/字段无类型/构造器有体/方法有体/访问器有体/方法无返回/static 字段初始化/readonly 字段初始化/struct 不支持 | 9 |
| runtime | ambient class + main | 1 |

### 14.4.1 Ambient Indexer

**规则**：`[index: type]: returnType` 索引签名，每类仅一个，仅 ambient 上下文

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | number 索引/int 索引/string 索引/readonly/Object 返回/与字段共存 | 6 |
| compile-fail | 两个 indexer/非 ambient/缺返回类型 | 3 |
| runtime | indexer + main | 1 |

### 14.4.2 Ambient Call Signature

**规则**：`(params): returnType` 可调用签名，multiple distinct 允许

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 单个/两个 distinct/三个 distinct/不同参数个数/与其余成员共存 | 5 |
| compile-fail | non-distinct/非 ambient/缺返回类型 | 3 |
| runtime | call signature + main | 1 |

### 14.4.3 Ambient Iterable

**规则**：`[Symbol.iterator](): Iterator<T>` 可迭代，返回类型必须实现 Iterator

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | Iterator<int>/与字段共存/Iterator<boolean> | 3 |
| compile-fail | 两个 iterable/非 ambient/缺返回类型 | 3 |
| runtime | iterable + main | 1 |

### 14.5 Ambient Interface Declarations

**规则**：declare interface 支持 property/method/default/extends/泛型/indexer/iterable

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 空接口/属性/方法/default/extends/泛型/indexer/iterable | 8 |
| compile-fail | 方法有体/无返回类型/两个 indexer | 3 |
| runtime | interface + main | 1 |

### 14.6 Ambient Enumeration Declarations

**规则**：declare enum 成员无初始化器、const 前缀暂不可用

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 基本枚举/单成员/空枚举/基类型 | 4 |
| compile-fail | const enum/成员初始化器/混合初始化器 | 3 |
| runtime | enum + main | 1 |

### 14.7 Ambient Namespace Declarations

**规则**：declare namespace 嵌套、export 控制可见性、export 引用不存在成员报错

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 空/function/variable/嵌套/混合成员/type alias/accessor/class/interface | 9 |
| compile-fail | export 不存在成员/const enum（全局限制） | 2 |
| runtime | namespace + main | 1 |

### 14.7.1 Implementing Ambient Namespace Declaration

**规则**：同名 namespace 实现 ambient namespace；嵌套名一致；签名匹配

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | 同名实现（D 类）/嵌套同名实现（D 类）/实现函数（D 类）/实现变量（D 类） | 4 |
| compile-fail | 嵌套名不匹配/签名不匹配 | 2 |
| runtime | 实现+main（D 类） | 1 |

> ⚠️ 4 个 compile-pass 和 1 个 runtime 为 D 类：编译器拒绝 `declare namespace` 与 `namespace` 合并（modifier 不同）

### 14.8 Ambient Accessor Declarations

**规则**：declare get/set 访问器，get 必须有返回类型

| 分类 | 用例 | 数量 |
|------|------|:----:|
| compile-pass | get string/set string/get int/namespace 内 get | 4 |
| compile-fail | get 无返回类型/set 参数默认值 | 2 |
| runtime | accessor + main | 1 |

## 总覆盖统计

| 指标 | 数值 |
|------|:----:|
| 总用例数 | 147 |
| compile-pass | 82 |
| compile-fail | 52 |
| runtime | 13 |
| 子章节数 | 12 |
| 跨语言验证 | ArkTS + Java + Swift |

## 已知 Spec 不一致（D 类）

| ID | 问题 | 涉及用例数 | 状态 |
|----|------|:---------:|:----:|
| D-14.1-01/02 | declare let/const 初始化器/类型注解检查（**已修复**） | 12 | ✅ 编译器已更新 |
| D-14.3-01/02/03 | overload 等价签名/空集/非 declare 引用 | 3 | ⏳ 待修复 |
| D-14.6-01 | enum 成员初始化器 | 2 | ⏳ 待修复 |
| D-14.7.1-01 | declare namespace 与 namespace 无法合并 | 5 | ⏳ 待修复 |

## 三环境对比说明

| 语言 | Ambient 声明支持度 | 最接近概念 |
|------|:-----------------:|-----------|
| ArkTS | ✅ 完整 declare 关键字体系 | 原生支持 |
| Java | ❌ 无 declare 概念 | 接口/抽象类/静态类 |
| Swift | ❌ 无 declare 概念 | Protocol/enum/extension |
