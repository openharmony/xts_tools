# 08 语句 - 测试设计思维导图（章节级）

## 概述

本章定义 ArkTS 中的所有语句（Statements）类型，包括表达式语句、块语句、声明、控制流、循环、跳转、switch、异常处理等。每个语句的具体语义和编译期/运行时行为由 spec §8 定义。

**前缀：** `STM_`
**主章节号：** 08
**覆盖汇总：** 557 cases (223P + 154F + 180R)，最后编译验证 2026-06-25（异常见 issue_report.md）

---

## 子章节清单与测试策略

### 8.1 Normal and Abrupt Statement Execution `[30: 12P+8F+10R]`
- **定义：** 语句正常完成 vs 突然完成（异常抛出）的区分
- 测试点：
  - PASS (6): 正常语句执行完成、表达式语句正常完成、block 内语句顺序完成、void 函数隐式 return 正常完成、try-catch 正常完成返回
  - FAIL (3): 顶层 return 语句、非 void 函数缺少 return、return 类型不匹配
  - RUNTIME (5): 正常完成不抛异常、throw 导致突然完成、catch 捕获后正常完成、finally 保证执行、finally 中 return 覆盖 try 中 return

### 8.2 Expression Statements `[30: 12P+8F+10R]`
- **定义：** 任何表达式后加分号可作语句，结果被丢弃
- 测试点：
  - PASS (8): 赋值表达式作语句、自增自减表达式作语句、函数调用作语句、方法调用作语句、new 表达式作语句、属性访问作语句、void 函数调用作语句、字面量表达式作语句
  - FAIL (4): 逗号表达式在非 for 循环上下文中使用（ESY133681）、类型不匹配的函数调用作语句、未定义变量作语句、const 变量赋值作语句
  - RUNTIME (5): 表达式副作用可观测（变量修改）、函数调用副作用（输出）、自增运算效果验证、方法调用修改对象属性、赋值后变量值验证

### 8.3 Block `[30: 10P+10F+10R]`
- **定义：** `{ statement* }` 顺序执行，void 函数体可不含 return
- **已知问题：** D-8.03-01 — Block 内 type declaration，spec 措辞（"except type declarations, are executed"）暗示允许但 es2panda 拒绝 interface/type alias 声明（ESY0040）。**当前状态：待澄清 spec 措辞或编译器行为。**
- 测试点：
  - PASS (6): 空块、单语句块、多语句块、嵌套块、块中 let/const 声明与 shadowing、void 函数缺省 return
  - FAIL (4): 块中 interface 声明（ESY0040）、块中 type alias 声明（ESY0040）、块中重复 let 声明、块中 const 重新赋值
  - RUNTIME (5): 块内语句顺序执行、块作用域变量生命周期、多层嵌套块变量遮蔽、块内声明不影响外层、块中 throw 中断执行

### 8.4 Constant or Variable Declarations `[30: 10P+10F+10R]`
- **定义：** `let`/`const` 声明新变量/常量，可带类型注解
- 测试点：
  - PASS (10): let 声明、const 声明、类型注解声明、类型推断、同作用域不同变量、块作用域 shadowing（多层）、嵌套函数内 shadowing、const 数组（引用不可变但元素可修改）、let 无初始值、const 必须初始化
  - FAIL (8): 同作用域重复声明、const 重新赋值、参数名与局部变量冲突、let 声明与参数名冲突、const 声明无初始值、const 数组引用重新赋值、不同块同作用域重复声明（全局）、类型注解与实际值类型不匹配
  - RUNTIME (5): 变量作用域验证、多层 shadowing 值验证、const 引用不可变验证、let 可重新赋值验证、块作用域变量隔离

### 8.5 if Statements `[36: 22P+4F+10R]` **Extended Conditional Expressions**
- **定义：** `if (expr) thenStmt [else elseStmt]`，条件必须为 boolean 或 Extended Conditional Expressions 类型
- **Extended Conditional Expressions 覆盖：** int, string, float, char, bigint, enum, null, undefined 类型作为 if 条件（非 boolean truthiness 检查），spec 标注 "to be deprecated in one of the future versions"
- 测试点：
  - PASS (16): 简单 if、if-else、if-else if-else 链、嵌套 if、块中 if、dangling else 匹配、boolean 变量条件、比较表达式条件、逻辑表达式条件、int 条件（Extended）、string 条件（Extended）、float 条件（Extended）、char 条件（Extended）、bigint 条件（Extended）、enum 条件（Extended）、null/undefined 条件（Extended）
  - FAIL (2): 当前版本因 Extended Conditional Expressions 覆盖几乎所有类型使 compile-fail 用例极少；预期未来废弃该特性后恢复非 boolean 条件的 compile-fail 检查
  - RUNTIME (8): boolean 条件分支执行、int 条件 truthiness（非0为true）、string 条件 truthiness（非空为true）、float 条件 truthiness、null 条件 falsy、undefined 条件 falsy、嵌套 if-else 正确分支、dangling else 匹配最近 if

### 8.6 Loop Statements `[30: 10P+10F+10R]`
- **定义：** 循环语句的公共规则（标签、label 作用域）
- **已知问题：** C-8.06-01 — Loop label 未被使用，spec 要求 compile-time error 但 es2panda 未检查此约束。label 在 lambda 内使用的检查正常，但"label 完全未使用"不报错。**当前状态：编译器遗漏 spec 检查项。**
- 测试点：
  - PASS (8): 标签标记 for 循环、标签标记 while 循环、标签标记 do-while 循环、标签标记 for-of 循环、带标签嵌套循环、多标签不同循环、label 在 break 中使用、label 在 continue 中使用
  - FAIL (7): label 在 lambda 内使用（正确报错）、label 在嵌套 lambda 内使用、label 在箭头函数内使用、break 引用不存在的 label、continue 引用不存在的 label、break label 在循环外、label 重复声明
  - RUNTIME (5): 带 label 的 break 跳出外层循环、带 label 的 continue 跳转、多级嵌套 label 跳转、label 不影响无跳转循环执行、label 命名不冲突验证

### 8.7 while/do Statements `[36: 22P+4F+10R]` **Extended Conditional Expressions**
- **定义：** `while (expr) stmt` / `do stmt while (expr)`，条件必须为 boolean 或 Extended Conditional Expressions 类型
- **Extended Conditional Expressions 覆盖：** int, string, float, char 等非 boolean 类型作为 while/do-while 条件
- 测试点：
  - PASS (16): while 循环、do-while 循环、空循环体、嵌套 while、while 中 break、while 中 continue、boolean 条件、int 条件（Extended）、string 条件（Extended）、float 条件（Extended）、char 条件（Extended）、逻辑表达式条件、比较表达式条件、while(true) 死循环 + break、do-while 至少执行一次、复杂条件组合
  - FAIL (2): 当前版本因 Extended Conditional Expressions 使非 boolean 条件通过编译；预期未来废弃后恢复
  - RUNTIME (7): while 循环次数正确性、do-while 至少执行一次、条件为 false 时 while 不执行、条件中途变 false 终止、嵌套循环次数、带 break 提前退出、do-while 条件在循环体后求值

### 8.8 for Statements `[33: 18P+5F+10R]` **Extended Conditional Expressions**
- **定义：** `for (init; cond; update) stmt`，条件必须为 boolean 或 Extended Conditional Expressions 类型
- **Extended Conditional Expressions 覆盖：** 非 boolean 类型作为 for 循环条件（int/string 等 truthiness）
- 测试点：
  - PASS (13): 标准 for 循环、forInit 声明新变量（let）、forInit 声明新变量（const 仅初始值不变）、多变量 forInit（expressionSequence）、空 forInit、空 condition（相当于 true）、空 update、递减循环、步长非1循环、int 条件（Extended）、string 条件（Extended）、复杂条件组合、嵌套 for 循环
  - FAIL (3): forInit 变量越作用域使用、for 循环内 const 变量重新赋值、forInit 重复声明外层变量（同作用域冲突）
  - RUNTIME (6): 循环计数器验证、forInit 作用域（变量仅在循环内可见）、递增/递减正确性、嵌套 for 循环次数、空 condition 死循环 + break、循环体不执行（初始条件 false）

### 8.9 for-of Statements `[30: 10P+10F+10R]`
- **定义：** `for (variable of iterable) stmt`，迭代 iterable 类型实例
- 测试点：
  - PASS (10): 数组迭代（int[]）、字符串迭代、FixedArray 迭代、let 声明迭代变量、const 声明迭代变量（不可重新赋值）、外部变量作迭代变量、嵌套 for-of、for-of 中 break、for-of 中 continue、带 label 的 for-of
  - FAIL (6): 非 iterable 类型（number）、非 iterable 类型（boolean）、类型不匹配（迭代变量类型与元素类型不符）、const 迭代变量在循环体中重新赋值、迭代 null、迭代 undefined
  - RUNTIME (7): 迭代次数验证（数组长度）、元素值正确性、字符串逐字符迭代、break 提前退出、continue 跳过元素、嵌套 for-of 迭代次数、空数组零次迭代

### 8.10 break Statements `[30: 10P+10F+10R]`
- **定义：** `break [identifier]` 跳出循环/switch
- 测试点：
  - PASS (7): break 跳出 for 循环、break 跳出 while 循环、break 跳出 do-while 循环、break 跳出 for-of 循环、break 跳出 switch、带 label break 跳出外层循环、多层嵌套中 break 跳出最内层
  - FAIL (6): break 在循环外、break 在函数顶层、break 标签不存在、break 标签指向非外层循环、lambda 内 break label、break 在 switch 外
  - RUNTIME (6): break 实际跳出 for 循环、break 跳出 while 循环、带 label break 跳出指定外层、多层嵌套 break 最内层、switch 中 break 防止 fall-through、break 后循环外代码执行

### 8.11 continue Statements `[30: 10P+10F+10R]`
- **定义：** `continue [identifier]` 跳到下一次迭代
- 测试点：
  - PASS (6): continue 跳过 for 当前迭代、continue 跳过 while 当前迭代、continue 跳过 do-while 当前迭代、continue 跳过 for-of 当前迭代、带 label continue 跳转外层、嵌套循环中 continue 最内层
  - FAIL (7): continue 在循环外、continue 在函数顶层、continue 标签不存在、continue 标签指向非外层循环、lambda 内 continue label、continue 在 switch 中（switch 非循环）、continue 在 for 循环的 update 部分不可达
  - RUNTIME (5): continue 跳过验证（后续迭代仍执行）、continue 跳过奇数次迭代、带 label continue 跳到外层、continue 不影响循环总次数、continue 后循环条件重新求值

### 8.12 return Statements `[30: 10P+10F+10R]`
- **定义：** `return [expression]` 返回值/终止函数
- 测试点：
  - PASS (10): 有值 return（匹配返回类型）、无值 return（void 函数）、void 函数无显式 return、构造器 return（无值）、lambda 中 return、子类方法 return 协变类型、union type 返回值、async 函数 return、return 在 if-else 两分支、return 在 try-catch 中
  - FAIL (6): 顶层 return、return 类型不匹配、非 void 函数 return 无值、构造器 return 有值、void 函数 return 有值、return 不可达代码后
  - RUNTIME (8): 返回值正确性（基本类型）、返回值正确性（对象类型）、void 函数无 return 正常完成、return 中断后续代码执行、lambda return 值传递、try 中 return 前 finally 执行、finally 中 return 覆盖 try 中 return、递归函数 return 值

### 8.13 switch Statements `[32: 12P+10F+10R]`
- **定义：** `switch (expr) { case ... }`，表达式可为任意类型，fall-through 为默认行为
- 测试点：
  - PASS (12): switch 字符串、switch 整数、switch boolean、switch char、switch enum、switch null case、带 break 防止 fall-through、带 default 子句、多个 case 标签同体、嵌套 switch、带 label break 跳出外层 switch、case 中使用表达式
  - FAIL (4): 不兼容 case 类型（如 case string 在 switch int 中）、case 重复值、case null 类型窄化冲突、非 compile-time constant 的 case 表达式
  - RUNTIME (10): switch 匹配正确性、default 子句匹配、fall-through 行为（无 break）、带 break 终止、嵌套 switch 匹配、多个 case 同体匹配、字符串 switch 精确匹配、enum switch 匹配、null case 匹配（需要函数返回类型含 null）、char 与 int 可比性（Extended Conditional 影响）

### 8.14 throw Statements `[30: 10P+10F+10R]`
- **定义：** `throw expression`，类型必须 assignable 到 Error
- 测试点：
  - PASS (7): throw Error 实例、throw Error 子类、throw 自定义 Error 类、throw new Error with message、函数内 throw、try-catch 中 rethrow、嵌套调用中 throw 传播
  - FAIL (6): throw null、throw undefined、throw 非 Error 类型（string）、throw 非 Error 类型（number）、throw 非 Error 类型（boolean）、throw 非 Error 类型（object 非 Error 子类）
  - RUNTIME (6): throw 被 try-catch 捕获、catch 中 instanceof 判断 Error 类型、Error.message 传递验证、自定义 Error 子类捕获、rethrow 传播到外层 catch、未捕获 throw 终止程序

### 8.15 try Statements `[30: 10P+10F+10R]`
- **定义：** `try block [catch] [finally]`，至少需要 catch 或 finally
- 测试点：
  - PASS (7): try-catch、try-finally、try-catch-finally、嵌套 try、try 中 return、try 中 break、try 中 continue
  - FAIL (6): try 无 catch 无 finally、catch 语法使用 `catch(e: Error)` 类型标注（ESE33781 — 已过时）、try 在非函数上下文、catch 参数重复声明、finally 后无语句、空 try 块
  - RUNTIME (9): try 正常完成不触发 catch、异常时 catch 执行、try-catch-finally 执行顺序、finally 在异常时执行、finally 在 return 前执行、finally 在 break 前执行、finally 中 return 覆盖 try return、嵌套 try 异常传播、finally 中 throw 覆盖原异常

### 8.15.1 catch Clause `[30: 11P+9F+10R]`
- **定义：** `catch (e) { handler }`，e 类型为 Error（无类型标注语法）
- 测试点：
  - PASS (7): catch Error 基类、catch 中 instanceof 判断子类、catch 中类型收窄后处理、catch 中 rethrow、多 catch 块（嵌套）、catch 后 finally、catch 参数未使用
  - FAIL (4): catch(e: Error) 类型标注（ESE33781 — 已废弃）、catch 参数类型标注为其余类型、catch 无参数、catch 参数名与外层变量冲突
  - RUNTIME (6): catch 捕获特定异常、instanceof 正确区分 Error 子类、catch 中修改错误后 rethrow、catch 参数作用域（仅 catch 块内）、嵌套 try-catch 逐层捕获、catch 后程序继续执行

### 8.15.2 finally Clause `[30: 12P+8F+10R]`
- **定义：** `finally { ... }` 无论是否异常都执行
- 测试点：
  - PASS (8): finally 在 try 正常完成后执行、finally 在 catch 后执行、finally 中 return、finally 中 throw、finally 中 break、finally 中 continue、嵌套 try-finally、try-finally 无 catch
  - FAIL (3): finally 在 try 外独立出现、finally 参数（语法错误）、finally 块后再跟 catch（顺序错误）
  - RUNTIME (7): finally 执行保证（正常路径）、finally 执行保证（异常路径）、finally 中 return 覆盖 try return、finally 中 return 覆盖 catch return、finally 中 throw 覆盖原异常、finally 中 break 阻止异常传播、finally 中 continue 在循环中

### 8.15.3 try Statement Execution `[30: 12P+8F+10R]`
- **定义：** try 语句的完整执行流程（正常/异常/try 块内异常传播）
- 测试点：
  - PASS (4): try 正常完成→跳过 catch→执行 finally、catch 正常完成→try 正常完成、catch 中 throw→try 突然完成、多级 try 嵌套正常传播
  - FAIL (3): try 无 catch 无 finally、try 块内 return 后 catch 不可达、finally 中 goto 外部（ArkTS 不支持 goto）
  - RUNTIME (8): try 正常完成流程验证、异常被 catch 捕获后正常完成、catch 重新 throw 导致 try 突然完成、finally 在 try 正常完成后执行、finally 在 catch 后执行、异常传播路径（无 catch 时向外层抛出）、多级 try 嵌套异常逐层传播、finally 中异常覆盖原异常传播

---

## 分类说明

- **compile-pass** — .ets 文件必须编译成功
- **compile-fail** — .ets 文件必须产生编译时错误（Syntax error 或 Semantic error）
- **runtime** — .ets 文件编译后通过 ark VM 实际运行 + assert 断言验证

## 文件命名规范

`STM_08_XX_YYY_{CATEGORY}_{DESCRIPTION}.ets`

| 字段 | 含义 |
|------|------|
| `STM_` | 08_Statements 前缀 |
| `08` | 主章节号 |
| `XX` | 子章节号（01~15 或 15_1/15_2/15_3） |
| `YYY` | 连续编号（001 起） |
| `CATEGORY` | PASS / FAIL / RUNTIME |
| `DESCRIPTION` | 大写下划线描述 |

## 编号规则

- 每个子章节内连续递增（001 起）
- 顺序：PASS → FAIL → RUNTIME
- PASS 001~  →  FAIL 接续  →  RUNTIME 接续

## 已发现的 ArkTS 语言特性

- **Extended Conditional Expressions** (§8.5/8.7/8.8)：允许 int, string, float, char, bigint, enum, null, undefined 等非 boolean 类型作为条件（truthiness 检查），spec 标注 "to be deprecated in one of the future versions"。当前影响 8.5 (6 个 PASS 用例)、8.7 (4 个 PASS 用例)、8.8 (2 个 PASS 用例)。
- **逗号表达式仅限 for 循环** (ESY133681)：逗号表达式在非 for 循环上下文中产生编译错误，仅供 forInit/forUpdate 使用。
- **catch 无类型标注** `catch(e)`：STATEMENTS.md §8.15.1 原文定义为 `'catch' '(' identifier ')' block`，`catch(e: Error)` 已废弃（ESE33781）。
- **Error.code 是 stdlib accessor**：不可重写，自定义 Error 子类需注意。
- **char 在 switch 中与 int 可比**：受 Extended Conditional Expressions 影响，char 类型在 switch 中表现出与 int 的可比性。
- **const 数组引用不可变但元素可修改**：`const arr: int[] = [1,2,3]; arr[0] = 5;` 合法，但 `arr = [4,5,6];` 非法。

## 已发现的 Spec 与实现不一致

| ID | 问题 | 严重性 | 章节 | 当前状态 |
|----|------|--------|------|---------|
| C-8.06-02 | labeled do-while / for-of 触发 es2panda 崩溃（SIGABRT, core dump）— spec §8.6 允许该语法，已按正向语义归位 compile-pass | HIGH | 8.6 | 编译器崩溃，待修复（复现：STM_08_06_015） |
| C-8.06-01 | Loop label 未被使用 — spec §8.6 明确要求 compile-time error，es2panda 未检查此约束（仅检查了 "label in lambda" 的约束） | MEDIUM | 8.6 | 编译器遗漏 spec 检查项（复现：STM_08_06_012） |
| D-8.03-01 | Block 内 type declaration — spec 措辞（"except type declarations, are executed"）暗示允许，但 es2panda 拒绝 block 内 interface/type alias 声明（ESY0040）。Java/Swift/TypeScript 均允许。 | MEDIUM | 8.3 | 待澄清 spec 措辞或编译器行为 |
| D-8.05-01 | Extended Conditional Expressions（§15.14.1）允许非 boolean 条件（int/string/Object/array/null 等）— spec 标注未来版本废弃 | LOW | 8.5/8.7/8.8 | Spec 待废弃特性，当前用例按实际行为标注 |

## 需要特别注意的 ArkTS 约束

- 禁止嵌套函数声明 → 提取到顶层
- 禁止局部 class 声明 → 提取到顶层
- 禁止局部 type alias 声明 → 提取到顶层（与 D-8.03-01 相关：block 内同样禁止 type declaration）
- `int`/`double`/`char`/`byte`/`float`/`long`/`short` 等是关键字，不能做变量名
- `pop()` 返回 `T | undefined`，需显式处理 undefined 分支
- stdlib 已含 `Box` 等常见类名，避免冲突
- 不支持数字/布尔字面量类型（仅支持字符串字面量类型）
- 非 boolean 条件在 if/while/for 中 → 当前版本因 Extended Conditional Expressions 允许通过（§8.5/8.7/8.8），但 spec 标注 "to be deprecated"
- break/continue 在循环外 → compile-time error
- throw 非 Error 类型（null/undefined/string/number/boolean 等） → compile-time error
- try 必须至少有 catch 或 finally（两者均无可选），否则 compile-time error
- catch 语法为 `catch(e)` 无类型标注，`catch(e: Error)` 已过时（ESE33781）
- 逗号表达式仅限 for 循环的 init 和 update 部分，其余地方使用产生 ESY133681
- 整数除法 int/int = int（截断），非浮点除法
- 类型收窄使用 `if (x !== null)` 或 `if (x instanceof T)`
- forInit 中声明的变量作用域限定在 for 循环内（包括 condition 和 update）
- switch 中 case 值必须为 compile-time constant
- const 声明的数组/对象：引用不可变但元素/属性可修改
- 标签（label）不能在 lambda 表达式内部被 break/continue 引用
