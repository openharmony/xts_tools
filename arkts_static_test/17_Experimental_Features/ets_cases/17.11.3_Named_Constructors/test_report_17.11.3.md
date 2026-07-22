# 17.11.3 Named Constructors - 测试报告

## 测试概要

| 项目 | 数值 |
|------|------|
| 测试章节 | 17.11.3 Named Constructors |
| 编译器 | es2panda (static_core) |
| 运行时 | ark (static_core) |
| 总用例数 | 15 |
| 通过数 | 15 |
| 失败数 | 0 |
| 通过率 | 100.0% |

## 分类统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime | 5 | 5 | 0 | 100% |

---

## compile-pass 用例详情

### EXP2_17_11_3_001_PASS_NAMED_CTOR_DECLARE
- **测试点**: 命名构造函数基本声明
- **状态**: PASS
- **编译输出**: 无错误，exit 0
- **说明**: `constructor Name(params)` 语法声明成功，通过 overload constructor 块纳入重载集合

### EXP2_17_11_3_002_PASS_NAMED_CTOR_MULTI
- **测试点**: 多个命名构造函数通过参数类型区分
- **状态**: PASS
- **编译输出**: 无错误，exit 0
- **说明**: FromInt(int), FromString(string), FromBool(boolean) 通过参数类型区分，overload 块包含全部三个

### EXP2_17_11_3_003_PASS_NAMED_AND_UNNAMED_CTOR
- **测试点**: 匿名构造函数与命名构造函数共存
- **状态**: PASS
- **编译输出**: 无错误，exit 0
- **说明**: 匿名构造函数 `constructor()` + 命名构造函数 FromKey/FromEnv 共存，overload 块列出命名构造函数

### EXP2_17_11_3_004_PASS_NAMED_CTOR_OVERLOAD_BLOCK
- **测试点**: overload constructor 块声明
- **状态**: PASS
- **编译输出**: 无错误，exit 0
- **说明**: `overload constructor { Default, WithTag }` 语法正确，将命名构造函数纳入重载集合

### EXP2_17_11_3_005_PASS_NAMED_CTOR_COMPLEX_PARAMS
- **测试点**: 命名构造函数接受多个参数
- **状态**: PASS
- **编译输出**: 无错误，exit 0
- **说明**: FromPoints(4个int参数) 和 FromSize(2个int参数) 通过参数个数区分

---

## compile-fail 用例详情

### EXP2_17_11_3_006_FAIL_CTOR_NAME_AS_REF
- **测试点**: 构造函数名作为属性引用
- **状态**: PASS (按预期编译失败)
- **编译输出**:
  ```
  ESE0087: Property 'Bar' does not exist on type 'Foo'
  ```
  Exit: 1
- **说明**: `Foo.Bar` 被视为对类静态属性的访问，Bar 不是 Foo 的属性，正确报错 ESE0087

### EXP2_17_11_3_007_FAIL_TWO_OVERLOAD_BLOCKS
- **测试点**: 两个 overload constructor 块
- **状态**: PASS (按预期编译失败)
- **编译输出**:
  ```
  ESE0351: Variable 'constructor' has already been declared.
  ```
  Exit: 1
- **说明**: 每个类只能有一个 overload constructor 声明

### EXP2_17_11_3_008_FAIL_NO_MATCHING_CTOR
- **测试点**: 调用参数不匹配任何命名构造函数
- **状态**: PASS (按预期编译失败)
- **编译输出**:
  ```
  ESE0127: No matching construct signature for Foo(Boolean)
  ESE0046: Type 'Boolean' is not compatible with type 'String' at index 1
  ```
  Exit: 1
- **说明**: `new Foo(true)` 无法匹配 int 或 string 参数的构造函数

### EXP2_17_11_3_009_FAIL_ALL_NAMED_WRONG_ARGS
- **测试点**: 全命名构造函数且参数不匹配
- **状态**: PASS (按预期编译失败)
- **编译输出**:
  ```
  ESE0124: Expected 1 arguments, got 0.
  ESE0127: No matching construct signature for Foo()
  ```
  Exit: 1
- **说明**: 类中只有需要参数的命名构造函数时，无参调用 `new Foo()` 失败

### EXP2_17_11_3_010_FAIL_DUPLICATE_SAME_PARAMS
- **测试点**: 同名命名构造函数且参数完全相同
- **状态**: PASS (按预期编译失败)
- **编译输出**:
  ```
  ESE0130: Function Dup is already declared.
  W2323: The order of entities in an overload set implies that the overloaded entity
  with the signature '(n: Int) => undefined' will never be selected for a call,
  as the preceding entity with the signature '(n: Int) => undefined' prevails.
  ```
  Exit: 1
- **说明**: 两个 `constructor Dup(n: int)` 导致 ESE0130 重复声明错误，另附 W2323 警告

---

## runtime 用例详情

### EXP2_17_11_3_011_RUNTIME_NAMED_CTOR_CREATE
- **测试点**: 命名构造函数创建正确对象
- **状态**: PASS
- **运行时输出**: `verified`, exit 0
- **说明**: `new Point(5, 10)` 调用 FromXY 设置 x=5, y=10; `new Point()` 调用 Origin 设置 x=0, y=0; 断言全部通过

### EXP2_17_11_3_012_RUNTIME_NAMED_ANONYMOUS_COEXIST
- **测试点**: 匿名+命名构造函数共存并正确解析
- **状态**: PASS
- **运行时输出**: `verified`, exit 0
- **说明**: `new User()` -> 匿名构造函数 -> name="unknown", age=0; `new User("Alice")` -> WithName -> name="Alice"; `new User("Bob", 30)` -> Full -> name="Bob", age=30

### EXP2_17_11_3_013_RUNTIME_MULTI_NAMED_RESOLUTION
- **测试点**: 多个命名构造函数重载解析验证
- **状态**: PASS
- **运行时输出**: `verified`, exit 0
- **说明**: int 参数 -> FromInt(result=5); double 参数 -> FromDouble(result=7); string 参数 -> FromString(result=100)

### EXP2_17_11_3_014_RUNTIME_ALL_NAMED_RESOLUTION
- **测试点**: 全命名构造函数对象创建验证
- **状态**: PASS
- **运行时输出**: `verified`, exit 0
- **说明**: `new Color(255, 0, 0)` -> RGB 设置 (255,0,0); `new Color("#FFFFFF")` -> Hex 设置 (255,255,255)

### EXP2_17_11_3_015_RUNTIME_OVERLOAD_ORDER
- **测试点**: overload 解析顺序验证
- **状态**: PASS
- **编译警告**: `W2323: overloaded entity with signature '(n: Int) => undefined' will never be selected`
- **运行时输出**: `verified`, exit 0
- **说明**: Broad 在 overload 列表中排在 Narrow 前面，`new Selector(42)` 正确选择了 Broad (tag="Broad")

---

## 错误代码汇总

| 错误代码 | 含义 | 触发用例 |
|----------|------|----------|
| ESE0087 | 属性不存在于类型上 | 006 |
| ESE0351 | 变量已声明 | 007 |
| ESE0127 | 无匹配构造签名 | 008, 009 |
| ESE0046 | 类型不兼容 | 008 |
| ESE0124 | 参数数量不匹配 | 009 |
| ESE0130 | 函数已声明（重复声明） | 010 |
| W2323 | 重载集合中实体始终不会被选中 | 010, 015 |

---

## 关键编译器发现

### Spec 不一致 1: `new Class.Name()` 调用语法不支持
Spec 描述命名构造函数可以通过 `new Temperature.Celsius(0)` 调用。当前 es2panda 实现不支持此语法，编译器将 `Class.Name` 解释为类型引用（ESE0070: type does not exist）。命名构造函数只能通过 overload 解析（`new ClassName(args)` 参数类型匹配）来间接调用。构造函数的"名称"实际上充当重载标识符。

### Spec 不一致 2: 全命名构造函数的类仍可用 `new X(args)` 调用
Spec 规定如果所有构造函数都有名称，则 `new X(1)` 应为编译时错误。当前实现中，只要参数类型匹配重载集中的某个命名构造函数，`new X(args)` 即可编译通过。行为取决于重载解析而非构造函数命名状态。

### Spec 不一致 3: 重复命名构造函数仅产生警告
Spec 规定同一构造函数名称不能在同一类中出现两次。当前实现对相同签名的命名构造函数产生 ESE0130 错误（函数重复声明），但对相同名称不同参数的命名构造函数允许编译通过（仅 W2323 重载警告），与 spec "same constructor name used twice" 的严格描述存在差异。

### 命名构造函数的实际行为总结
在当前 ArkTS 实现中，命名构造函数的"名称"充当重载标识符。多个不同名称的构造函数被视为重载集中的不同成员，通过参数类型在编译时解析。运行时通过重载解析选择合适的构造函数。没有独立的 `new Class.Name()` 调用路径。

---

## 测试文件清单
```
17.11.3_Named_Constructors/
  compile-pass/
    EXP2_17_11_3_001_PASS_NAMED_CTOR_DECLARE.ets
    EXP2_17_11_3_002_PASS_NAMED_CTOR_MULTI.ets
    EXP2_17_11_3_003_PASS_NAMED_AND_UNNAMED_CTOR.ets
    EXP2_17_11_3_004_PASS_NAMED_CTOR_OVERLOAD_BLOCK.ets
    EXP2_17_11_3_005_PASS_NAMED_CTOR_COMPLEX_PARAMS.ets
  compile-fail/
    EXP2_17_11_3_006_FAIL_CTOR_NAME_AS_REF.ets
    EXP2_17_11_3_007_FAIL_TWO_OVERLOAD_BLOCKS.ets
    EXP2_17_11_3_008_FAIL_NO_MATCHING_CTOR.ets
    EXP2_17_11_3_009_FAIL_ALL_NAMED_WRONG_ARGS.ets
    EXP2_17_11_3_010_FAIL_DUPLICATE_SAME_PARAMS.ets
  runtime/
    EXP2_17_11_3_011_RUNTIME_NAMED_CTOR_CREATE.ets
    EXP2_17_11_3_012_RUNTIME_NAMED_ANONYMOUS_COEXIST.ets
    EXP2_17_11_3_013_RUNTIME_MULTI_NAMED_RESOLUTION.ets
    EXP2_17_11_3_014_RUNTIME_ALL_NAMED_RESOLUTION.ets
    EXP2_17_11_3_015_RUNTIME_OVERLOAD_ORDER.ets
```
