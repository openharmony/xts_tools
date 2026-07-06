# 09 类 - 规范摘录

**来源：** ArkTS 静态语言规范，第 09 章 类（Classes）（§9.1-§9.10）
**版本：** Release 1.2.1-alpha TECHNICAL PREVIEW 10
**提取日期：** 2026-06-22

## Scope

本章覆盖 Class 类声明、抽象类、extends/implements 子句、类成员、访问修饰符、字段声明、方法声明、访问器声明、构造器声明和继承机制。

## 子章节覆盖

| 章节 | 标题 | 核心内容 |
|------|------|---------|
| 9.1 | Class Declarations | classDeclaration 语法；classModifier? 'class' identifier typeParameters? extendsClause? implementsClause? classMembers；泛型类；final/sealed 为实验特性 |
| 9.1.1 | Abstract Classes | abstract 修饰符；不可实例化；含抽象方法+具体方法；非抽象子类必须实现所有抽象方法；abstract+final/override 禁止 |
| 9.2 | Class Extension Clause | extends typeReference 语法；仅继承类类型（非接口/枚举/union）；不可访问类禁止；Object 无 extends；循环继承禁止；隐式 extends Object |
| 9.3 | Class Implementation Clause | implements interfaceTypeList 语法；不可访问接口禁止；重复接口忽略；同泛型不同实例化禁止；字段方法同名冲突；非抽象类必须实现所有接口方法 |
| 9.3.1 | Implementing Required Interface Properties | 必需属性实现方式矩阵（field→field/getter+setter；readonly→readonly field/field/getter/getter+setter）；隐式生成 getter/setter；接口引用访问→调用 accessor |
| 9.3.2 | Implementing Optional Interface Properties | 可选属性可不实现（默认 undefined）；optional 字段实现；accessor 实现；隐式 accessor 覆盖接口 accessor |
| 9.4 | Class Members | 字段/方法/访问器/构造器/静态初始化块；static vs instance；同 scope 同名冲突；继承成员 vs 声明成员；private 不继承 |
| 9.5 | Access Modifiers | private/protected/public 三种；默认 public；语法 |
| 9.5.1 | Private Access Modifier | 仅类内可访问；子类不可访问 private 成员；子类可重用 private 名称（独立成员） |
| 9.5.2 | Protected Access Modifier | 类内+子类可访问；外部不可访问 |
| 9.5.3 | Public Access Modifier | 处处可访问；无修饰符默认 public |
| 9.6 | Field Declarations | classFieldDeclaration 语法；? optional / ! late init；重复修饰符禁止；字段方法同名冲突；接口属性类型一致性 |
| 9.6.1 | Static and Instance Fields | static 字段不属于实例；类名访问；泛型参数禁止作为 static 类型；instance 字段属于每个实例 |
| 9.6.2 | Readonly Constant Fields | readonly 修饰符；初始化后不可修改；static+readonly |
| 9.6.3 | Optional Fields | f?: T 等效 T | undefined；无初始化器默认 undefined |
| 9.6.4 | Field Initialization | 默认值或初始化器；初始化器中使用 this/super → compile-time warning；运行时可能出错 |
| 9.6.5 | Fields with Late Initialization | f!: T 等效 T | undefined 但行为如 T；仅 instance；不得 readonly/optional/含初始化器；读取时检查初始化 |
| 9.6.6 | Override Fields | override 同名同类型字段；可改变初始化器；override 不必须；override+static 禁止；类型/修饰符必须一致；必须显式初始化 |
| 9.7 | Method Declarations | classMethodDeclaration 语法；修饰符约束（abstract/static/final/override/native/async）；方法/字段名冲突；方法/setter 名冲突 |
| 9.7.1 | Static Methods | static 修饰符约束（不得与 abstract/final/override/native/async 组合）；this/super 禁止；类名访问；不继承 |
| 9.7.2 | Instance Methods | 非静态方法；this 访问字段/方法；虚分派；同类私有成员访问 |
| 9.7.3 | Abstract Methods | abstract 修饰符约束（不得 private/static/final/native/async）；空体；必须在抽象类；子类必须实现 |
| 9.7.4 | Async Methods | async 修饰符；返回 Promise<T>；不得与 abstract/native 组合；await 挂起表达式 |
| 9.7.5 | Overriding Methods | override 修饰符（可选但推荐）；必须覆盖父类方法；override+static 禁止；默认参数一致 |
| 9.7.6 | Native Methods | native 修饰符；空体（分号）；不得与 abstract 组合 |
| 9.7.7 | Method Body | 块体 vs 空体分号；abstract/native 空体；非 abstract/native 必须有体；非 void 全路径返回 |
| 9.7.8 | Methods Returning this | this 作为返回类型；仅返回 this 或 this 返回方法结果；override 也必须返回 this |
| 9.8 | Class Accessor Declarations | getter（无参+返回类型）；setter（单参数+无返回）；getter+setter 修饰符一致；override 协变/逆变 |
| 9.9 | Constructor Declaration | 构造器语法；命名构造器（实验）；native 构造器无体；访问修饰符 |
| 9.9.1 | Constructor Body | super() 根语句；参数不得用 this/super；不得返回值；不得自调用循环；字段初始化顺序 |
| 9.9.2 | Explicit Constructor Call | super(args)/this(args) 显式委托；命名构造器（实验/不支持）；根语句要求 |
| 9.9.3 | Default Constructor | 隐式：public + 无参 + super() + 字段初始化器；父类必须有无参构造器 |
| 9.10 | Inheritance | extends 单继承；继承所有非静态可访问成员；抽象方法必须实现；构造器不继承 |

## 已知 Spec 与实现差异

详见 [issue_report.md](issue_report.md) 中的 CLS-G1 ~ CLS-G6 和 CLS-D1。

### 编译器待完善项（Spec 要求但 es2panda 暂未检查）

- **CLS-G1**（MEDIUM）：getter/setter 修饰符不匹配，es2panda 未检查（§9.8）
- **CLS-G2**（MEDIUM）：override 默认参数不一致，es2panda 未检查（§9.7.5）
- **CLS-G3**（LOW）：native+static 修饰符组合，es2panda 未报错（§9.7.1）

### D 类差异点（Spec 与实现不一致）

- **CLS-G4** ⭐⭐（§9.2）：显式 extends Object — es2panda 允许通过，Java 也允许，spec 可能需要更新
- **CLS-G5** ⭐⭐（§9.6.4）：字段初始化器中使用 this — spec 要求 warning，es2panda 无任何提示；Swift 禁止（compile error）
- **CLS-G6** ⭐⭐（§9.6.5）：late init + optional 组合 — spec 规定不得 optional/readonly，es2panda 未检查

### 实验特性差异点

- **CLS-D1**（§9.9.2）：命名构造器为实验特性，es2panda 不支持


## 章节文件目录

```
ets_cases/
├── 9.1_Class_Declarations/                       # 12 用例: 5P+4F+3R
├── 9.1.1_Abstract_Classes/                       # 12 用例: 4P+5F+3R
├── 9.2_Class_Extension_Clause/                   # 13 用例: 4P+6F+3R ⚠️CLS-G4
├── 9.3_Class_Implementation_Clause/              # 10 用例: 4P+4F+2R
├── 9.3.1_Implementing_Required_Interface_Properties/ # 17 用例: 7P+7F+3R
├── 9.3.2_Implementing_Optional_Interface_Properties/ # 9 用例: 5P+1F+3R
├── 9.4_Class_Members/                            # 10 用例: 5P+3F+2R
├── 9.5_Access_Modifiers/                         # 4 用例: 2P+1F+1R
├── 9.5.1_Private_Access_Modifier/                # 9 用例: 3P+4F+2R
├── 9.5.2_Protected_Access_Modifier/              # 7 用例: 2P+3F+2R
├── 9.5.3_Public_Access_Modifier/                 # 4 用例: 2P+1F+1R
├── 9.6_Field_Declarations/                       # 8 用例: 3P+3F+2R
├── 9.6.1_Static_and_Instance_Fields/             # 7 用例: 3P+2F+2R
├── 9.6.2_Readonly_Constant_Fields/               # 6 用例: 2P+2F+2R
├── 9.6.3_Optional_Fields/                        # 5 用例: 2P+1F+2R
├── 9.6.4_Field_Initialization/                   # 6 用例: 2P+2F+2R ⚠️CLS-G5
├── 9.6.5_Fields_with_Late_Initialization/        # 9 用例: 2P+5F+2R ⚠️CLS-G6
├── 9.6.6_Override_Fields/                        # 12 用例: 4P+6F+2R
├── 9.7_Method_Declarations/                      # 8 用例: 3P+3F+2R
├── 9.7.1_Static_Methods/                         # 18 用例: 3P+10F+5R ⚠️CLS-G3
├── 9.7.2_Instance_Methods/                       # 12 用例: 7P+2F+3R
├── 9.7.3_Abstract_Methods/                       # 17 用例: 4P+8F+5R
├── 9.7.4_Async_Methods/                          # 21 用例: 6P+9F+6R
├── 9.7.5_Overriding_Methods/                     # 9 用例: 4P+2F+3R ⚠️CLS-G2
├── 9.7.6_Native_Methods/                         # 3 用例: 2P+1F+0R
├── 9.7.7_Method_Body/                            # 13 用例: 4P+7F+2R
├── 9.7.8_Methods_Returning_this/                 # 8 用例: 2P+3F+3R
├── 9.8_Class_Accessor_Declarations/              # 31 用例: 11P+14F+6R ⚠️CLS-G1
├── 9.9_Constructor_Declaration/                  # 10 用例: 4P+3F+3R
├── 9.9.1_Constructor_Body/                       # 18 用例: 3P+9F+6R
├── 9.9.2_Explicit_Constructor_Call/              # 9 用例: 2P+6F+1R
├── 9.9.3_Default_Constructor/                    # 9 用例: 3P+3F+3R
└── 9.10_Inheritance/                             # 41 用例: 12P+14F+15R
```
