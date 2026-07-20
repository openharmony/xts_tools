# 14 Ambient Declarations — Spec Extract

**Source**: ArkTS static language specification, chapter 14 Ambient Declarations.
**Extracted from**: `arkts-static-spec/spec/ambients.md`

---

## 概述

*Ambient declaration* 指定在别处声明的实体，但在当前上下文中可用。

Ambient 声明的特性：
- 为别处声明的实体提供类型信息
- 不像常规声明那样引入新实体
- 不能包含可执行代码，因此：
  - Ambient 变量、常量和枚举没有初始化器
  - Ambient 函数、方法和构造器没有函数体

**语法**（ABNF）：
```
ambientDeclaration:
    'declare'
    ( ambientConstantOrVariableDeclaration
    | ambientFunctionDeclaration
    | ambientClassDeclaration
    | ambientInterfaceDeclaration
    | ambientNamespaceDeclaration
    | ambientAccessorDeclaration
    | ...
    )
```

**编译时错误**：如果在已是 ambient 的上下文中使用 `declare` 修饰符：
```typescript
declare namespace A {
    declare function foo(): void // Compile-time error
}
```

---

## 14.1 Ambient Constant or Variable Declarations

**语法**：
```
ambientConstantOrVariableDeclaration:
    'const'|'let' ambientConstantOrVariableList ';'
    ;
ambientConstantOrVariableList:
    ambientConstantOrVariable (',' ambientConstantOrVariable)*
    ;
ambientConstantOrVariable:
    identifier ':' type
    ;
```

**规则**：
1. 必须具有**显式类型注解**
2. **不能有初始化器**
3. 违反任一规则 → **compile-time error**

**示例**：
```typescript
declare let v1: number // OK
declare let v2 = 1     // Compile-time error
declare const c1: number // OK
declare const c2 = 1   // Compile-time error
```

---

## 14.2 Ambient Function Declarations

**语法**：
```
ambientFunctionDeclaration:
    'function' identifier typeParameters? signature
    ;
```

**规则**（违反任一规则 → compile-time error）：
1. 必须显式指定**返回类型**
2. 参数不能有**默认值**
3. 不能有**函数体**
4. 不能使用 `async` 修饰符

**示例**：
```typescript
declare function ok1(x: number): void   // OK
declare function bad1(x: number)        // Error, no return type
declare function ok2(x?: string): void  // OK
declare function bad2(y: number = 1): void // Error, default param
declare function bad3(): void {}        // Error, function body
declare async function bad4(): void     // Error, async modifier
```

---

## 14.3 Ambient Overload Function Declarations

**规则**：
- 语法与显式函数重载（Explicit Function Overload）相同
- 语义由相同规则定义
- 支持顶层重载和 namespace 内重载

**示例**：
```typescript
declare function foo1(p: string): void
declare function foo2(p: number): void
declare overload foo {foo1, foo2}

declare namespace N {
    function foo1(p: string): void
    function foo2(p: number): void
    overload foo {foo1, foo2}
}
```

---

## 14.4 Ambient Class Declarations

**语法**：
```
ambientClassDeclaration:
    'class'|'struct' identifier typeParameters?
    classExtendsClause? implementsClause?
    '{' ambientClassMember* '}'
    ;
```

**成员类型**：
- ambientFieldDeclaration（`ambientFieldModifier* identifier ':' type`）
- ambientConstructorDeclaration（`constructor parameters`）
- ambientMethodDeclaration（`ambientMethodModifier* identifier signature`）
- explicitClassMethodOverload
- ambientClassAccessorDeclaration（get/set）
- ambientIndexerDeclaration
- ambientCallSignatureDeclaration
- ambientIterableDeclaration

**访问修饰符**：仅 `public` | `protected`

**规则**：
1. 字段（field）：
   - 必须具有显式类型注解
   - 不能有初始化器
   - 支持 `static` | `readonly` 修饰符
2. 构造器、方法、访问器：**不能有函数体**
3. 方法支持 `static` 修饰符
4. 方法支持显式重载

---

## 14.4.1 Ambient Indexer

**语法**：
```
ambientIndexerDeclaration:
    'readonly'? '[' identifier ':' type ']' returnType
    ;
```

**规则**：
1. 每个 ambient class 仅允许**一个** indexer 声明
2. 仅在 ambient 上下文中支持
3. 提供 TS 兼容性

**示例**：
```typescript
declare class C {
    [index: number]: number
}
declare class D {
    [index: int]: C
}
declare class E {
    [index: string]: string
}
```

---

## 14.4.2 Ambient Call Signature

**语法**：
```
ambientCallSignatureDeclaration:
    signature
    ;
```

**规则**：
1. 仅在 ambient 上下文中支持
2. 多个 call signatures 允许，但必须**distinct**（参数类型不同）
3. 实现时使用 `static $_invoke` 方法

**示例**：
```typescript
declare class C {
    (someArg: number): boolean
    (someArg: string): boolean
}
```

---

## 14.4.3 Ambient Iterable

**语法**：
```
ambientIterableDeclaration:
    '[Symbol.iterator]' '(' ')' returnType
    ;
```

**规则**：
1. `returnType` 必须实现标准库中的 `Iterator` 接口
2. 每个 ambient class 仅允许**一个** iterable 声明
3. 仅在 ambient 上下文中支持

**示例**：
```typescript
declare class C {
    [Symbol.iterator](): CIterator
}
```

---

## 14.5 Ambient Interface Declarations

**语法**：
```
ambientInterfaceDeclaration:
    'interface' identifier typeParameters?
    interfaceExtendsClause?
    '{' ambientInterfaceMember* '}'
    ;
```

**成员类型**：
- interfaceProperty
- ambientInterfaceMethodDeclaration（`'default'? identifier signature`）
- ambientIndexerDeclaration
- ambientIterableDeclaration

**规则**：
1. 可包含 indexer 和 iterable（与 ambient class 规则相同）
2. 方法可用 `default` 关键字标记（表示有默认实现）
3. `default` 方法：实现类可以不提供该方法的实现

**示例**：
```typescript
declare interface I1 {
    default foo(): void     // 有默认实现
}
class C1 implements I1 {} // 有效

declare interface I2 {
    foo(): void             // 无默认实现
}
class C2 implements I2 {} // 无效
class C3 implements I2 { foo() {} } // 有效
```

---

## 14.6 Ambient Enumeration Declarations

**语法**：
```
ambientEnumDeclaration
    : 'const'? 'enum' identifier enumBaseType? '{' ambientEnumMemberList? '}'
    ;
```

**规则**：
1. 成员仅可为标识符列表（**不能有初始化器**）
2. 违反 → compile-time error
3. `const enum` 前缀当前版本**暂时禁止**（compile-time error），未来版本可用

**示例**：
```typescript
declare enum RGB {Red, Green, Blue} // OK
declare enum Err1 { A = 5 }        // Compile-time error
```

---

## 14.7 Ambient Namespace Declarations

**语法**：
```
ambientNamespaceDeclaration:
    'namespace' identifier '{' ambientNamespaceElement* '}'
    ;
```

**成员类型**：
- ambientConstantOrVariableDeclaration
- ambientFunctionDeclaration
- ambientClassDeclaration
- ambientInterfaceDeclaration
- ambientNamespaceDeclaration
- ambientAccessorDeclaration
- const? enumDeclaration
- typeAlias

**规则**：
1. 仅 `export` 的成员可从 namespace 外部访问
2. 支持嵌套 namespace
3. namespace 是作用域而非对象，只能通过限定名称访问
4. ❌ exportDirective 引用不存在于 namespace 中的成员 → compile-time error
5. `const` 前缀在 enum 上允许（TS 兼容，无影响）

**示例**：
```typescript
declare namespace A {
    export namespace B {
        export function foo(): void
    }
}

// compile-time error: foo 不在 namespace A 中
export declare namespace A {
    export {foo}
}
function foo() {}
```

---

## 14.7.1 Implementing Ambient Namespace Declaration

**规则**：
1. 如果 ambient namespace 在 ArkTS 中实现，必须在模块顶层声明同名 namespace
2. 嵌套 namespace 的名称必须与 ambient 上下文一致

**示例**：
```typescript
// Ambient 声明
declare namespace A {
    namespace B {}
}

// 实现（同名）
namespace A {
    namespace B {}
}
```

---

## 14.8 Ambient Accessor Declarations

**语法**：
```
ambientAccessorDeclaration:
    ( 'get' identifier '(' receiverParameter? ')' returnType
    | 'set' identifier '(' (receiverParameter ',')? requiredParameter ')'
    )
    ;
```

**规则**：
1. `get` 访问器必须显式指定返回类型
2. 违反 → compile-time error

**示例**：
```typescript
declare get name(): string // OK
declare get age()           // Compile-time error
```
