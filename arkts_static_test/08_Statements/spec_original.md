# 08 语句 - 规范摘录

来源：`/home/nnd/projects/arkts/docs/STATEMENTS.md` — ArkTS 静态语言规范，第 08 章 语句（Statements），585 行。

## 范围

本章定义 ArkTS 中所有语句类型。语句用于控制程序执行流，与表达式不同：表达式求值为某类型的值，而语句不求值。

## 语句语法总览（STATEMENTS.md 原文）

```
statement:
  expressionStatement
  |block
  |constantOrVariableDeclaration
  |ifStatement
  |loopStatement
  |breakStatement
  |continueStatement
  |returnStatement
  |switchStatement
  |throwStatement
  |tryStatement
;
```

## 子章节（共 15 个规范节 + 3 个扩展子节）

| 节号 | 标题 | STATEMENTS.md 行号 | 关键约束 |
|------|------|-------------------|---------|
| 8.1 | Normal and Abrupt Statement Execution | 57-62 | 正常完成 vs 突然完成（抛异常） |
| 8.2 | Expression Statements | 64-74 | 任意表达式加分号，结果被丢弃 |
| 8.3 | Block | 77-89 | `{ statement* }`，type declaration 除外均执行 |
| 8.4 | Constant Or Variable Declarations | 90-125 | let/const 声明，支持遮蔽（shadowing） |
| 8.5 | if Statements | 126-170 | 条件必须为 boolean 或 Extended Conditional Expressions 类型 |
| 8.6 | Loop Statements | 172-196 | 四种循环，支持 label |
| 8.7 | while Statements and do Statements | 198-211 | 条件必须为 boolean 或 Extended Conditional Expressions 类型 |
| 8.8 | for Statements | 212-258 | forInit 声明的变量有循环作用域 |
| 8.9 | for-of Statements | 260-302 | 迭代 iterable 类型实例 |
| 8.10 | break Statements | 303-332 | 仅在 loop/switch 内有效，支持 label |
| 8.11 | continue Statements | 334-368 | 仅在 loop 内有效，支持 label |
| 8.12 | return Statements | 370-416 | 无表达式 return 仅在 void/undefined/constructor/async 上下文有效 |
| 8.13 | switch Statements | 418-480 | switch 表达式可为任意类型，fall-through 默认行为 |
| 8.14 | throw Statements | 481-493 | 表达式类型必须 assignable to Error，null/undefined 不可抛出 |
| 8.15 | try Statements | 494-510 | 必须含 catch 或 finally（或两者） |
| 8.15.1 | catch Clause | 514-543 | `catch(identifier)` — 无类型标注，catch 内类型为 Error |
| 8.15.2 | finally Clause | 544-569 | 无论 try-catch 正常或突然完成，finally 均执行 |
| 8.15.3 | try Statement Execution | 571-580 | catch 正常完成 → try 正常完成；否则突然完成 |

## 测试发现的设计问题

1. **Extended Conditional Expressions**（§8.5/8.7/8.8）：允许 int/string/float 等非 boolean 类型作为条件（truthiness），spec 标注 "to be deprecated"
2. **Block 内 type declaration**（§8.3）：spec 说 "except type declarations, are executed"（暗示语法合法但不执行），但 es2panda 拒绝块内 interface/type alias 声明（ESY0040）
3. **catch 类型标注已废弃**（§8.15.1）：spec 定义为 `catch '(' identifier ')'` 无类型标注，与 es2panda 拒绝 `catch(e: Error)` 一致
