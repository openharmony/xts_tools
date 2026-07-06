# 09 类 - 测试设计思维导图（章节级）

**生成日期：** 2026-06-22（2026-06-26 更新：9.7–9.10 自审修复）
**本章目标：** 覆盖 ArkTS §9.1-§9.10 全部规范约束
**当前覆盖：** §9.1-§9.10（387 用例：130P+155F+102R）
**最后编译验证：** 2026-06-26，es2panda `--extension=ets`（Linux native）；9.7–9.10 四节 90 用例全量实测

---

## 一、测试分类策略

### 1.1 编译期通过（compile-pass）
- 合法声明的通过验证
- 修饰符合法组合
- 参数默认值、返回类型兼容
- 继承/重写/实现正确用法

### 1.2 编译期失败（compile-fail）
- 修饰符冲突（static+abstract、native+async 等）
- 方法签名不匹配（override 错误、返回类型不协变）
- 参数不合法（this/super 在 static 中、无效默认值）
- 访问修饰符违规（private 成员外部访问）
- 字段同名冲突、类型不匹配

### 1.3 运行时（runtime）
- 方法派发（虚方法、override 动态绑定）
- 继承链（多层继承、super 调用、instanceof）
- 异步（async/await 挂起恢复、链式调用）
- 构造器（字段初始化、构造器链、默认参数）
- 接口实现运行时行为

---

## 二、子章节覆盖详情（§9.1 → §9.10）

### §9.1 Class Declarations（12 用例：5P+4F+3R）
- ✅ 空类声明、含字段/方法/构造器的类
- ✅ 泛型类声明
- ❌ 重复类修饰符 → 编译错误
- ❌ extends 自身循环 → 编译错误
- ❌ 类名为关键字 → 编译错误
- ❌ extends 接口 → 编译错误
- ✅ 实例创建+字段访问、泛型实例化、方法调用

### §9.1.1 Abstract Classes（12 用例：4P+5F+3R）
- ✅ abstract 类声明、含具体方法、抽象子类继承抽象类
- ✅ 非抽象子类继承抽象类
- ❌ 实例化抽象类 → 编译错误
- ❌ 非抽象类含抽象方法 → 编译错误
- ❌ abstract+final/override → 编译错误
- ❌ 非抽象子类未实现抽象方法 → 编译错误
- ✅ 抽象类→子类派发、抽象类构造器执行、多层抽象继承

### §9.2 Class Extension Clause（13 用例：4P+6F+3R）⚠️CLS-G4
- ✅ extends 合法类、多层继承、默认继承 Object
- ✅ 继承可访问类
- ❌ extends 接口/枚举 → 编译错误
- ❌ extends 循环/不可访问类 → 编译错误
- ❌ 显式 extends Object → ⚠️SPEC不一致（es2panda 允许通过）
- ❌ extends union类型 → 编译错误
- ✅ 继承链实例化、instanceof Object、继承方法调用

### §9.3 Class Implementation Clause（10 用例：4P+4F+2R）
- ✅ 单接口/多接口实现、实现所有接口方法
- ✅ 重复接口被忽略
- ❌ 不可访问接口 → 编译错误
- ❌ 同泛型不同实例化 → 编译错误
- ❌ 字段方法同名冲突、未实现接口方法 → 编译错误
- ✅ 接口方法派发、多接口调用

### §9.3.1 Implementing Required Interface Properties（17 用例：7P+7F+3R）
- ✅ 字段实现接口属性、readonly字段实现readonly属性
- ✅ getter+setter 实现属性、getter 实现 readonly 属性
- ✅ writeable 字段实现 readonly 属性
- ✅ getter+setter不同类型用accessor pair实现
- ❌ readonly 字段实现 writeable 属性 → 编译错误
- ❌ getter-only/setter-only 实现 writeable 属性 → 编译错误
- ❌ setter-only实现readonly属性 → 编译错误
- ❌ getter+setter不同类型用field实现 → 编译错误
- ❌ 无实现必需属性、覆盖超类字段→accessor → 编译错误
- ✅ 字段实现运行时、接口引用隐式 getter、readonly 属性运行时

### §9.3.2 Implementing Optional Interface Properties（9 用例：5P+1F+3R）
- ✅ 不实现可选属性（默认 undefined）
- ✅ optional 字段实现、accessor 实现可选属性
- ✅ 只有getter/setter实现可选属性
- ❌ 非可选字段实现可选属性 → 编译错误
- ✅ optional 字段运行时、默认 accessor 返回 undefined
- ✅ 不实现可选属性后set → runtime error

### §9.4 Class Members（10 用例：5P+3F+2R）
- ✅ static/instance 同名、含所有成员类型
- ✅ 继承 public/protected 成员
- ✅ 静态初始化块（static block）
- ✅ 方法重载（Explicit Method Overload）
- ❌ 同 scope 字段方法同名 → 编译错误
- ❌ 同 scope 两字段同名/同签名方法 → 编译错误
- ✅ static/instance 区分运行时、成员访问运行时

### §9.5 Access Modifiers（4 用例：2P+1F+1R）
- ✅ 默认 public、三种修饰符组合
- ❌ 类外访问 private → 编译错误
- ✅ public 运行时访问

### §9.5.1 Private Access Modifier（9 用例：3P+4F+2R）
- ✅ 类内访问 private、子类重用 private 名称
- ✅ private 构造器
- ❌ 类外访问 private 字段/方法 → 编译错误
- ❌ 子类访问 private 方法/字段 → 编译错误
- ✅ private 类内访问运行时、子类重用名称运行时

### §9.5.2 Protected Access Modifier（7 用例：2P+3F+2R）
- ✅ 类内访问 protected、子类访问 protected
- ❌ 外部访问 protected 字段/方法 → 编译错误
- ❌ protected构造器外部实例化 → 编译错误
- ✅ protected 子类访问运行时、protected 方法派发

### §9.5.3 Public Access Modifier（4 用例：2P+1F+1R）
- ✅ public 处处可访问、无修饰符默认 public
- ❌ public成员类型不可访问 → 编译错误
- ✅ public 运行时访问

### §9.6 Field Declarations（8 用例：3P+3F+2R）
- ✅ 基本字段声明、字段初始化器、static/instance 字段
- ❌ 重复字段修饰符 → 编译错误
- ❌ 字段方法同名 → 编译错误
- ❌ 接口属性类型不匹配 → 编译错误
- ✅ 字段访问运行时、初始化器执行运行时

### §9.6.1 Static and Instance Fields（7 用例：3P+2F+2R）
- ✅ static/instance 字段基本声明、类名访问 static
- ❌ static 使用泛型参数 → 编译错误
- ❌ 实例访问 static → 编译错误
- ✅ static 字段共享运行时、instance 字段独立运行时

### §9.6.2 Readonly Constant Fields（6 用例：2P+2F+2R）
- ✅ readonly 字段、static readonly
- ❌ readonly 重新赋值 → 编译错误
- ❌ static readonly 重新赋值 → 编译错误
- ✅ readonly 访问运行时、构造器初始化 readonly

### §9.6.3 Optional Fields（5 用例：2P+1F+2R）
- ✅ optional 无初始化器、optional 含初始化器
- ❌ optional 赋值给 non-nullish → 编译错误
- ✅ optional 默认 undefined、optional 赋值后访问

### §9.6.4 Field Initialization（6 用例：2P+2F+2R）⚠️CLS-G5
- ✅ 字段初始化器表达式、字段默认值
- ❌ this 在初始化器 → ⚠️SPEC不一致（spec 要求 warning，es2panda 无提示）
- ❌ super 在初始化器
- ✅ 字段初始化顺序运行时、初始化器求值运行时

### §9.6.5 Fields with Late Initialization（9 用例：2P+5F+2R）⚠️CLS-G6
- ✅ late init 字段、初始化后读取
- ❌ static late init → 编译错误
- ❌ readonly late init → 编译错误
- ❌ optional late init → ⚠️SPEC不一致（spec 禁止，es2panda 未检查）
- ❌ late init 含初始化器 → 编译错误
- ❌ late init 为 nullish 类型 → 编译错误
- ✅ 初始化后读取运行时、未初始化读取 runtime error

### §9.6.6 Override Fields（12 用例：4P+6F+2R）
- ✅ override 同类型字段、override 字段初始化器
- ✅ 构造器中初始化 override
- ✅ 泛型override field类型匹配
- ❌ override 类型不匹配/修饰符不匹配 → 编译错误
- ❌ static+override / override 不存在字段 → 编译错误
- ❌ override readonly加到非readonly → 编译错误
- ❌ override field覆盖getter/setter → 编译错误
- ✅ override 字段值运行时、override 字段初始化顺序

### §9.7 Method Declarations（8 用例：3P+3F+2R）
- ✅ 方法声明基本语法
- ✅ 合法/非法修饰符组合
- ✅ 方法/字段名冲突检测
- ✅ 方法调度运行时验证

### §9.7.1 Static Methods（18 用例：3P+10F+5R）⚠️CLS-G3
- ✅ static 基本语法 + 多参数
- ✅ static+abstract/this/super/final/native/async 非法
- ✅ 继承/覆盖冲突检查
- ✅ static 访问限制（private/protected）
- ❌ native+static 组合 → ⚠️SPEC不一致（es2panda 未报错）
- ✅ static 方法运行时调用

### §9.7.2 Instance Methods（12 用例：7P+2F+3R）
- ✅ 实例方法基本声明（void/参数/返回类型）
- ✅ 实例方法的 this 访问字段
- ✅ 实例方法 + override + 泛型
- ❌ 非 void 缺 return → 编译错误
- ✅ 实例方法重写派发运行时验证

### §9.7.3 Abstract Methods（17 用例：4P+8F+5R）
- ✅ abstract 合法用法（抽象类/接口实现）
- ✅ abstract+private/static/final/native/async 非法
- ✅ 非抽象类含抽象方法 → 编译错误
- ✅ 子类未实现抽象方法 → 编译错误
- ✅ 抽象方法与 override 协变
- ✅ 抽象类运行时派发

### §9.7.4 Async Methods（21 用例：6P+9F+6R）
- ✅ async 基本调用 + static async
- ✅ async 返回 Promise\<T\>/void 装箱
- ✅ final async 合法（CLS_09_07_060）
- ❌ async+abstract/native 非法
- ❌ async 重载不支持
- ❌ 非 Promise 返回 / Promise 签名不匹配
- ❌ override 时 async 修饰符缺失/不匹配
- ✅ await 解析、多挂起点、async 链式调用

### §9.7.5 Overriding Methods（9 用例：4P+2F+3R）⚠️CLS-G2
- ✅ override 方法基本声明
- ✅ override+final 合法
- ❌ override+static 非法
- ❌ 不同默认值 → ⚠️SPEC不一致（es2panda 未检查）
- ✅ 重写方法运行时派发、super 调用

### §9.7.6 Native Methods（3 用例：2P+1F+0R）
- ✅ native 方法声明（空体分号）
- ✅ native 方法在类中使用
- ❌ native+abstract 非法

### §9.7.7 Method Body（13 用例：4P+7F+2R）
- ✅ 多语句方法体、嵌套块
- ✅ 方法体中的变量声明与作用域
- ❌ 非 abstract/native 方法缺体 → 编译错误
- ❌ abstract/native 方法有体 → 编译错误
- ❌ 非 void 方法缺 return → 编译错误
- ✅ 运行时多语句执行

### §9.7.8 Methods Returning this（8 用例：2P+3F+3R）
- ✅ this 作为返回类型（builder pattern）
- ❌ 非 this 返回 + 非 this 返回类型 → 编译错误
- ❌ override 方法未返回 this → 编译错误
- ✅ builder 链式调用运行时、this 返回 + override 兼容

### §9.8 Class Accessor Declarations（31 用例：10P+15F+6R）⚠️CLS-G1
- ✅ getter/setter 基本语法
- ❌ getter/setter 修饰符不匹配 → ⚠️SPEC不一致（es2panda 未检查）
- ✅ getter/setter + override 协变/逆变
- ❌ getter 含参数 / setter 多参数 / 返回类型不匹配
- ❌ getter/setter 与字段/方法名冲突
- ✅ getter/setter 运行时读写验证

### §9.9 Constructor Declaration（10 用例：4P+3F+3R）
- ✅ 构造器基本声明 + 参数默认值
- ✅ 访问修饰符构造器（public/private）
- ❌ native 构造器有体 → 编译错误
- ❌ 非 native 构造器无体 → 编译错误
- ❌ 父类构造器不可访问 → 编译错误
- ✅ 字段初始化运行时、默认参数构造器链

### §9.9.1 Constructor Body（18 用例：3P+9F+6R）
- ✅ 构造器体基本语法 + super() 根语句
- ❌ 参数含 this/super、返回值、自调用循环
- ❌ super() 靶根语句、多个 super()/this()
- ❌ super() 参数类型不匹配
- ✅ 构造器字段顺序初始化、super() 运行时调用

### §9.9.2 Explicit Constructor Call（9 用例：2P+6F+1R）
- ✅ this() 多参数委托、super() 多参数委托
- ❌ 命名构造器（实验特性，es2panda 不支持）
- ❌ 委托调用参数类型不匹配
- ✅ super() 委托运行时链验证

### §9.9.3 Default Constructor（9 用例：3P+3F+3R）
- ✅ 默认无参构造器、字段初始化器
- ✅ 继承默认构造器链
- ❌ 父类缺无参构造器 → 编译错误
- ❌ 基类构造器不可访问 → 编译错误
- ✅ 默认构造器运行时字段初始化 + 继承链

### §9.10 Inheritance（41 用例：12P+14F+15R）
- ✅ 基本继承、多层继承、多接口
- ✅ override 协变/逆变
- ✅ 字段覆盖、protected 访问
- ❌ 抽象方法未实现、接口未实现
- ❌ 返回非协变、参数非逆变
- ❌ 构造器不继承、私有不继承
- ❌ 静态不继承、字段类型不匹配
- ✅ 继承链运行时、override 派发、instanceof 链
- ✅ super 方法/构造器调用、多层继承方法

---

## 三、待补充测试项

以下为 §9.7~§9.10 范围的遗漏项。

| ID | 章节 | 遗漏约束 | 类型建议 |
|----|------|---------|---------|
| CLS-T8 | §9.8 | getter 返回类型推断失败 → compile-time error | FAIL |
| CLS-T9 | §9.7.8 | return 其余方法调用的 this 结果 → OK | PASS |
| CLS-T10 | §9.9.1 | 构造器中 return 无表达式 → OK | PASS |
| CLS-T18 | §9.7 | 方法/setter 名冲突 → compile-time error | FAIL |

---

## 五、已知 Spec 不一致项汇总

| ID | 章节 | 问题 | 分类 | 跨语言验证 |
|----|------|------|------|-----------|
| CLS-G1 | §9.8 | getter/setter 修饰符不匹配 | 编译器待完善 | Java/Swift 均禁止 |
| CLS-G2 | §9.7.5 | override 默认参数不一致 | 编译器待完善 | — |
| CLS-G3 | §9.7.1 | native+static 组合 | 编译器待完善 | — |
| CLS-G4 ⭐⭐ | §9.2 | 显式 extends Object 允许通过 | D类 | Java 允许，Swift 无可比性 |
| CLS-G5 ⭐⭐ | §9.6.4 | this 在字段初始化器（无 warning） | D类 | Swift 禁止（error） |
| CLS-G6 ⭐⭐ | §9.6.5 | late init + optional 组合（未检查） | D类 | Java/Swift 有等效机制 |
| CLS-D1 | §9.9.2 | 命名构造器为实验特性 | 设计差异 | Java/Swift 不支持 |

---

## 六、章节执行统计

| 子章节 | P | F | R | 总计 | 差异标注 | 最近执行 |
|-------|---|---|------|------|---------|---------|
| 9.1 Class Declarations | 5 | 4 | 3 | 12 | — | 2026-06-22 |
| 9.1.1 Abstract Classes | 4 | 5 | 3 | 12 | — | 2026-06-22 |
| 9.2 Class Extension Clause | 4 | 6 | 3 | 13 | CLS-G4 ⭐⭐ | 2026-06-22 |
| 9.3 Class Implementation Clause | 4 | 4 | 2 | 10 | — | 2026-06-22 |
| 9.3.1 Implementing Required Interface Properties | 7 | 7 | 3 | 17 | — | 2026-06-22 |
| 9.3.2 Implementing Optional Interface Properties | 5 | 1 | 3 | 9 | — | 2026-06-22 |
| 9.4 Class Members | 5 | 3 | 2 | 10 | — | 2026-06-22 |
| 9.5 Access Modifiers | 2 | 1 | 1 | 4 | — | 2026-06-22 |
| 9.5.1 Private Access Modifier | 3 | 4 | 2 | 9 | — | 2026-06-22 |
| 9.5.2 Protected Access Modifier | 2 | 3 | 2 | 7 | — | 2026-06-22 |
| 9.5.3 Public Access Modifier | 2 | 1 | 1 | 4 | — | 2026-06-22 |
| 9.6 Field Declarations | 3 | 3 | 2 | 8 | — | 2026-06-22 |
| 9.6.1 Static and Instance Fields | 3 | 2 | 2 | 7 | — | 2026-06-22 |
| 9.6.2 Readonly Constant Fields | 2 | 2 | 2 | 6 | — | 2026-06-22 |
| 9.6.3 Optional Fields | 2 | 1 | 2 | 5 | — | 2026-06-22 |
| 9.6.4 Field Initialization | 2 | 2 | 2 | 6 | CLS-G5 ⭐⭐ | 2026-06-22 |
| 9.6.5 Fields with Late Initialization | 2 | 5 | 2 | 9 | CLS-G6 ⭐⭐ | 2026-06-22 |
| 9.6.6 Override Fields | 4 | 6 | 2 | 12 | — | 2026-06-22 |
| 9.7 Method Declarations | 3 | 3 | 2 | 8 | — | 2026-06-26 |
| 9.7.1 Static Methods | 3 | 10 | 5 | 18 | CLS-G3 | 2026-06-19 |
| 9.7.2 Instance Methods | 7 | 2 | 3 | 12 | — | 2026-06-19 |
| 9.7.3 Abstract Methods | 4 | 8 | 5 | 17 | — | 2026-06-19 |
| 9.7.4 Async Methods | 6 | 9 | 6 | 21 | — | 2026-06-19 |
| 9.7.5 Overriding Methods | 4 | 2 | 3 | 9 | CLS-G2 | 2026-06-19 |
| 9.7.6 Native Methods | 2 | 1 | 0 | 3 | — | 2026-06-19 |
| 9.7.7 Method Body | 4 | 7 | 2 | 13 | — | 2026-06-19 |
| 9.7.8 Methods Returning this | 2 | 3 | 3 | 8 | — | 2026-06-19 |
| 9.8 Class Accessor Declarations | 10 | 15 | 6 | 31 | CLS-G1 | 2026-06-26 |
| 9.9 Constructor Declaration | 4 | 3 | 3 | 10 | — | 2026-06-26 |
| 9.9.1 Constructor Body | 3 | 9 | 6 | 18 | — | 2026-06-19 |
| 9.9.2 Explicit Constructor Call | 2 | 6 | 1 | 9 | CLS-D1 | 2026-06-19 |
| 9.9.3 Default Constructor | 3 | 3 | 3 | 9 | — | 2026-06-19 |
| 9.10 Inheritance | 12 | 14 | 15 | 41 | — | 2026-06-26 |
| **总计** | **130** | **155** | **102** | **387** | **7项** | — |

*3 个 D 类 SPEC 不一致项（CLS-G4/G5/G6），用例保留并标注 ⚠️ SPEC 不一致
*3 个编译器待完善项（CLS-G1/G2/G3），1 个实验特性差异点（CLS-D1）
