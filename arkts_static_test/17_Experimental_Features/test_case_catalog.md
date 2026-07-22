# 17 实验特性 - 测试用例目录

**最后编译验证：** 2026-06-26（es2panda `--extension=ets`，Linux native）
**总用例数：** 570（254P + 173F + 143R）
**命名规范：** 遵守 03_Types 规范 `EXP2_17_<节>_<子节>_<序号>_<分类>_<描述>`（规则23）
**编译实测：** 异常 17 项，详见 [issue_report.md](issue_report.md)。
---

## 子章节用例分布

| 章节 | compile-pass | compile-fail | runtime | 合计 |
|------|:---:|:---:|:---:|:---:|
| §17.1.1 | 5 | 5 | 5 | 15 |
| §17.1.2 | 6 | 5 | 5 | 16 |
| §17.10.1 | 5 | 5 | 3 | 13 |
| §17.10.2 | 8 | 5 | 3 | 16 |
| §17.10.3 | 5 | 5 | 3 | 13 |
| §17.10 | 6 | 3 | 3 | 12 |
| §17.11.1 | 5 | 5 | 3 | 13 |
| §17.11.2 | 5 | 5 | 4 | 14 |
| §17.11.3 | 5 | 5 | 5 | 15 |
| §17.11 | 5 | 3 | 3 | 11 |
| §17.12 | 5 | 5 | 4 | 14 |
| §17.13.1 | 7 | 4 | 4 | 15 |
| §17.13.2 | 6 | 5 | 3 | 14 |
| §17.13.3 | 6 | 4 | 3 | 13 |
| §17.13.4 | 6 | 4 | 3 | 13 |
| §17.13.5 | 5 | 4 | 3 | 12 |
| §17.13 | 6 | 4 | 3 | 13 |
| §17.14 | 6 | 4 | 4 | 14 |
| §17.15 | 6 | 5 | 4 | 15 |
| §17.16.1 | 5 | 5 | 4 | 14 |
| §17.16 | 4 | 4 | 4 | 12 |
| §17.1 | 5 | 5 | 3 | 13 |
| §17.2.1 | 7 | 4 | 4 | 15 |
| §17.2 | 7 | 5 | 5 | 17 |
| §17.3 | 10 | 5 | 5 | 20 |
| §17.4.1 | 3 | 2 | 7 | 12 |
| §17.4 | 9 | 7 | 5 | 21 |
| §17.5 | 8 | 4 | 3 | 15 |
| §17.6 | 9 | 3 | 3 | 15 |
| §17.7.1 | 8 | 3 | 3 | 14 |
| §17.7.2 | 6 | 4 | 4 | 14 |
| §17.7 | 7 | 4 | 6 | 17 |
| §17.8.1 | 7 | 3 | 3 | 13 |
| §17.8 | 10 | 2 | 3 | 15 |
| §17.9.1 | 7 | 7 | 3 | 17 |
| §17.9.2 | 8 | 7 | 3 | 18 |
| §17.9.3 | 6 | 3 | 1 | 10 |
| §17.9.4 | 6 | 4 | 2 | 12 |
| §17.9.5 | 7 | 3 | 2 | 12 |
| §17.9 | 7 | 4 | 2 | 13 |
| **合计** | **254** | **173** | **143** | **570** |
---

## 完整用例清单

### §17.1.1 char_Literals（5P + 5F + 5R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_01_01_001_PASS_ASCII_CHAR_LITERAL | compile-pass | 基本 ASCII 字符字面量：验证 c'X' 语法声明各项可打印 ASCII 字符 |
| EXP2_17_01_01_002_PASS_ESCAPE_SEQUENCE | compile-pass | 转义序列字面量：验证 c'\n', c'\t', c'\r', c'\\', c'\'' 等转义序列 |
| EXP2_17_01_01_003_PASS_HEX_ESCAPE | compile-pass | 十六进制转义字面量：验证 c'\xHH' 格式的十六进制转义序列 |
| EXP2_17_01_01_004_PASS_UNICODE_ESCAPE | compile-pass | Unicode 转义字面量：验证 c'A' 格式的 Unicode 转义序列（A = 'A'） |
| EXP2_17_01_01_005_PASS_BOUNDARY_VALUES | compile-pass | 边界值字面量：验证 U+0000 和 U+FFFF 边界值的 char 字面量 |
| EXP2_17_01_01_006_FAIL_EMPTY_CHAR_LITERAL | compile-fail | 空 char 字面量 c'' 应产生编译时错误 |
| EXP2_17_01_01_007_FAIL_MULTI_CHAR_LITERAL | compile-fail | 多字符 char 字面量 c'ab' 应产生编译时错误（只能包含单个 UTF-16 符号） |
| EXP2_17_01_01_008_FAIL_OUT_OF_RANGE_UNICODE | compile-fail | 超出 16 位范围的 Unicode 字面量应产生编译时错误：c'\u{FFFFF}' 超过 U+FFFF |
| EXP2_17_01_01_009_FAIL_INVALID_ESCAPE | compile-fail | 非法转义序列 c'\q' 应产生编译时错误（spec: char 字面量只支持有效的转义序列） |
| EXP2_17_01_01_010_FAIL_INVALID_HEX | compile-fail | 非法十六进制转义 c'\xGG' 应产生编译时错误（G 不是有效十六进制数字） |
| EXP2_17_01_01_011_RUNTIME_ASCII_VALUE_VERIFY | runtime | ASCII char 字面量值验证：验证 c'a' 等于 0x61，c'0' 等于 0x30 |
| EXP2_17_01_01_012_RUNTIME_ESCAPE_VALUE_VERIFY | runtime | 转义序列字面量值验证：验证 c'\n' 等于 0x0A，c'\t' 等于 0x09 |
| EXP2_17_01_01_013_RUNTIME_HEX_VALUE_VERIFY | runtime | 十六进制转义字面量值验证：验证 c'\x41' 等于 c'A' |
| EXP2_17_01_01_014_RUNTIME_UNICODE_VALUE_VERIFY | runtime | Unicode 转义字面量值验证：验证 c'A' 等于 c'A' |
| EXP2_17_01_01_015_RUNTIME_BOUNDARY_VALUE_VERIFY | runtime | 边界值字面量验证：验证 c'' (U+0000) == 0, c'￿' (U+FFFF) == 65535 |

### §17.1.2 char_Operations（6P + 5F + 5R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_01_02_001_PASS_CHAR_EQUALITY | compile-pass | char 与 char 相等运算：验证 char == char 和 char != char 操作符 |
| EXP2_17_01_02_002_PASS_CHAR_RELATIONAL | compile-pass | char 与 char 关系运算：验证 char < char, char > char, char <= char, char >= ch |
| EXP2_17_01_02_003_PASS_CHAR_STRICT_EQUAL | compile-pass | char 严格相等运算：验证 char === char 操作符 |
| EXP2_17_01_02_004_PASS_CHAR_EQ_INT | compile-pass | char 与 int 相等运算：验证 char == int 和 char != int（比较为数值类型的整数） |
| EXP2_17_01_02_005_PASS_CHAR_LT_INT | compile-pass | char 与 int 关系运算：验证 char < int, char > int, char <= int, char >= int |
| EXP2_17_01_02_006_PASS_CHAR_GT_DOUBLE | compile-pass | char 与 double 关系运算：验证 char > double（spec 示例: c > 3.14） |
| EXP2_17_01_02_007_FAIL_CHAR_EQ_STRING | compile-fail | char 与 string 的比较应产生编译时错误（spec: 不兼容的类型比较） |
| EXP2_17_01_02_008_FAIL_CHAR_EQ_BOOLEAN | compile-fail | char 与 boolean 的比较应产生编译时错误 |
| EXP2_17_01_02_009_FAIL_CHAR_ADD_CHAR | compile-fail | char + char 算术运算应产生编译时错误（char 不支持算术运算） |
| EXP2_17_01_02_010_FAIL_CHAR_SUB_INT | compile-fail | char - int 算术运算应产生编译时错误（char 不支持算术运算） |
| EXP2_17_01_02_011_FAIL_CHAR_MUL | compile-fail | char * int 乘法运算应产生编译时错误（char 不支持算术运算） |
| EXP2_17_01_02_012_RUNTIME_CHAR_EQ_INT_VERIFY | runtime | 验证 char == int 比较：c'a' == 0x61 为 true（spec 示例） |
| EXP2_17_01_02_013_RUNTIME_CHAR_LT_CHAR_VERIFY | runtime | 验证 char < char 比较：c'a' < c'b' 为 true（spec 示例：c < c1） |
| EXP2_17_01_02_014_RUNTIME_CHAR_GT_DOUBLE_VERIFY | runtime | 验证 char > double 比较：c'a' > 3.14 为 true（spec 示例） |
| EXP2_17_01_02_015_RUNTIME_UNSIGNED_COMPARE | runtime | 验证 char 无符号 16 位整数比较语义：c'￿' (U+FFFF=65535) > c'' (U+0000=0) |
| EXP2_17_01_02_016_RUNTIME_STRICT_EQ_VERIFY | runtime | 验证 char === char 严格相等：相同值返回 true，不同值返回 false |

### §17.10 Native_Functions_and_Methods（6P + 3F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_10_001_COMPILE_PASS_NATIVE_FUNC_DECL | compile-pass | 验证 native 函数声明（无 body）编译通过 |
| EXP2_17_10_002_COMPILE_PASS_NATIVE_METHOD_DECL | compile-pass | 验证 native 方法声明（无 body）编译通过 |
| EXP2_17_10_003_COMPILE_PASS_NATIVE_CTOR_EMPTY | compile-pass | 验证 native 构造器声明（无 body）编译通过 |
| EXP2_17_10_004_COMPILE_PASS_NATIVE_FUNC_PARAMS | compile-pass | 验证带参数的 native 函数声明编译通过 |
| EXP2_17_10_005_COMPILE_PASS_NATIVE_METHOD_RETURN | compile-pass | 验证 native 方法带返回类型编译通过 |
| EXP2_17_10_006_COMPILE_PASS_NATIVE_MULTI_DECL | compile-pass | 验证多个 native 声明编译通过 |
| EXP2_17_10_011_COMPILE_FAIL_NATIVE_FUNC_BODY | compile-fail | 验证 native 函数不能有 body——应报编译错误 |
| EXP2_17_10_012_COMPILE_FAIL_NATIVE_ABSTRACT | compile-fail | 验证 native + abstract 方法组合——应报编译错误 |
| EXP2_17_10_013_COMPILE_FAIL_NATIVE_CTOR_BODY | compile-fail | 验证 native 构造器不能有非空 body——应报编译错误 |
| EXP2_17_10_021_RUNTIME_NATIVE_FUNC_CALL | runtime | 运行时验证 native 函数调用行为 |
| EXP2_17_10_022_RUNTIME_NATIVE_METHOD_CALL | runtime | 运行时验证 native 方法调用行为 |
| EXP2_17_10_023_RUNTIME_NATIVE_CTOR_CALL | runtime | 运行时验证 native 构造器调用行为 |

### §17.10.1 Native_Functions（5P + 5F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_10_01_001_PASS_BASIC_NATIVE_FUNC | compile-pass | 基本原生函数声明：验证使用 native 关键字声明的无函数体原生函数可以编译通过 |
| EXP2_17_10_01_002_PASS_NATIVE_FUNC_WITH_PARAMS | compile-pass | 带参数和返回类型的原生函数声明：验证 native function 可以有多个参数和显式返回类型 |
| EXP2_17_10_01_003_PASS_MULTIPLE_NATIVE_FUNCS | compile-pass | 多个原生函数声明：验证可以同时声明多个具有不同签名的原生函数 |
| EXP2_17_10_01_004_PASS_NATIVE_FUNC_GENERIC | compile-pass | 原生函数使用泛型类型参数：验证 native function 可以带有泛型类型参数 |
| EXP2_17_10_01_005_PASS_EXPORT_NATIVE_FUNC | compile-pass | 导出的原生函数：验证 export 和 native 修饰符可以组合使用 |
| EXP2_17_10_01_006_FAIL_NATIVE_WITH_BLOCK_BODY | compile-fail | 原生函数不能有函数体（block body）：验证 native function 带 block body 产生编译错误 ESE0083 |
| EXP2_17_10_01_007_FAIL_NATIVE_WITH_EXPR_BODY | compile-fail | 原生函数不能有表达式体：验证 native function 带 expression body (= expr) 产生语法错误 |
| EXP2_17_10_01_008_FAIL_NATIVE_ASYNC_COMBINATION | compile-fail | native 与 async 不能组合使用：验证 native async function 产生编译错误 ESY0203 |
| EXP2_17_10_01_009_FAIL_NATIVE_WITHOUT_RETURN_TYPE | compile-fail | 原生函数必须有显式返回类型：验证 native function 无显式返回类型产生编译错误 ESE0018 |
| EXP2_17_10_01_010_FAIL_NATIVE_RETURN_TYPE_MISMATCH | compile-fail | 原生函数返回类型不匹配：验证将 native function 返回值赋给不兼容类型产生编译错误 ESE0318 |
| EXP2_17_10_01_011_RUNTIME_NATIVE_FUNC_PRESENT | runtime | 原生函数声明存在性验证：声明 native function 后，不调用它，程序可正常编译并运行 |
| EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR | runtime | 调用未实现的原生函数触发链接错误：验证调用无实现的 native function 会在运行时抛出 LinkerUnresolvedMeth |
| EXP2_17_10_01_013_RUNTIME_NATIVE_AND_NORMAL_FUNC | runtime | 原生函数与普通函数共存：验证 native function 可以与普通函数在同一模块中声明，普通函数正常执行 |

### §17.10.2 Native_Methods（8P + 5F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_10_02_001_PASS_BASIC_NATIVE_METHOD | compile-pass | class 中基本原生方法声明：验证在类中使用 native 关键字声明无方法体的原生方法可以编译通过 |
| EXP2_17_10_02_002_PASS_NATIVE_METHOD_WITH_PARAMS | compile-pass | 原生方法带多种参数类型和返回类型：验证 native method 支持多种参数类型和不同的返回类型 |
| EXP2_17_10_02_003_PASS_STATIC_NATIVE_METHOD | compile-pass | 静态原生方法：验证 static 和 native 修饰符可以组合使用 |
| EXP2_17_10_02_004_PASS_PRIVATE_NATIVE_METHOD | compile-pass | 私有原生方法：验证 private 和 native 修饰符可以组合使用 |
| EXP2_17_10_02_005_PASS_MULTIPLE_NATIVE_METHODS | compile-pass | 多个原生方法共存：验证一个类中可以包含多个原生方法，不同签名 |
| EXP2_17_10_02_006_PASS_NATIVE_METHOD_GENERIC | compile-pass | 原生方法使用泛型类型参数：验证 native method 可以带有泛型类型参数 |
| EXP2_17_10_02_007_PASS_NATIVE_METHOD_SEMICOLON | compile-pass | 原生方法使用分号作为方法体：验证 native method 可以用分号终结（与无分号同样有效） |
| EXP2_17_10_02_008_PASS_OVERRIDE_NATIVE_METHOD | compile-pass | 子类覆盖父类的原生方法：验证 override 可以将父类的 native method 重写为普通方法 |
| EXP2_17_10_02_009_FAIL_NATIVE_METHOD_BLOCK_BODY | compile-fail | 原生方法不能有 block body：验证 native method 带 { } 函数体产生编译错误 ESE0083 |
| EXP2_17_10_02_010_FAIL_NATIVE_ABSTRACT_COMBINATION | compile-fail | native 与 abstract 不能组合使用：验证 native abstract 方法产生编译错误 ESE0047 |
| EXP2_17_10_02_011_FAIL_NATIVE_IN_INTERFACE | compile-fail | interface 中不能使用 native 方法：验证 interface 中使用 native 关键字产生语法错误 ESY0224 |
| EXP2_17_10_02_012_FAIL_NATIVE_METHOD_NO_RETURN_TYPE | compile-fail | 原生方法必须有显式返回类型：验证 native method 无显式返回类型产生编译错误 ESE0018 |
| EXP2_17_10_02_013_FAIL_NATIVE_METHOD_TYPE_MISMATCH | compile-fail | 原生方法返回类型不匹配：验证将 native method 返回值赋给不兼容类型产生编译错误 ESE0318 |
| EXP2_17_10_02_014_RUNTIME_NATIVE_METHOD_CLASS_INSTANTIATE | runtime | 包含原生方法的类实例化与普通方法调用：验证含有 native method 的类可以被实例化，其普通方法可以正常调用 |
| EXP2_17_10_02_015_RUNTIME_NATIVE_METHOD_CALL_ERROR | runtime | 调用未实现的原生方法触发链接错误：验证调用无实现的 native method 会在运行时抛出 LinkerUnresolvedMethod |
| EXP2_17_10_02_016_RUNTIME_OVERRIDE_NATIVE_METHOD | runtime | 子类覆盖原生方法后正常调用：验证 override 将父类 native method 重写为普通方法后，调用执行正常 |

### §17.10.3 Native_Constructors（5P + 5F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_10_03_001_PASS_NATIVE_CONSTRUCTOR_NO_PARAMS | compile-pass | 无参数 native 构造函数声明：验证 native constructor() 声明的编译 |
| EXP2_17_10_03_002_PASS_NATIVE_CONSTRUCTOR_WITH_PARAMS | compile-pass | 带参数 native 构造函数声明：验证 native constructor(x: int, y: double) 声明的编译 |
| EXP2_17_10_03_003_PASS_NATIVE_CONSTRUCTOR_IN_SUBCLASS | compile-pass | 子类中 native 构造函数声明：验证 extends 的派生类中可以声明 native constructor |
| EXP2_17_10_03_004_PASS_NATIVE_AND_REGULAR_CONSTRUCTOR | compile-pass | native 构造函数与普通构造函数共存（重载）：验证一个类中可以有 native constructor 和普通 constructor |
| EXP2_17_10_03_005_PASS_NATIVE_CONSTRUCTOR_TYPE_USAGE | compile-pass | native 构造函数类作为类型使用：验证包含 native constructor 的类可以用作类型注解、函数参数类型 |
| EXP2_17_10_03_006_FAIL_NATIVE_CONSTRUCTOR_NONEMPTY_BODY | compile-fail | native 构造函数不能有非空函数体：验证 native constructor() { console.log("x") } 应产生编译 |
| EXP2_17_10_03_007_FAIL_NATIVE_CONSTRUCTOR_EMPTY_BODY | compile-fail | native 构造函数不能有任何函数体（包括空 body `{}`）：验证即使是空 body 也会产生编译时错误 |
| EXP2_17_10_03_008_FAIL_NATIVE_CONSTRUCTOR_BODY_WITH_EXPR | compile-fail | native 构造函数 body 不能包含表达式语句：验证 body 含表达式语句时产生编译时错误 |
| EXP2_17_10_03_009_FAIL_NATIVE_CONSTRUCTOR_BODY_WITH_RETURN | compile-fail | native 构造函数 body 不能包含 return 语句：验证 body 含 return 时产生编译时错误 |
| EXP2_17_10_03_010_FAIL_NATIVE_CONSTRUCTOR_PARAMS_WITH_BODY | compile-fail | 带参数的 native 构造函数也不能有 body：验证 native constructor(x: int) { ... } 产生编译时错 |
| EXP2_17_10_03_011_RUNTIME_NATIVE_CONSTRUCTOR_TYPE_REFERENCE | runtime | native 构造函数类作为类型引用的运行时验证：验证包含 native constructor 的类可在运行时用作类型声明 |
| EXP2_17_10_03_012_RUNTIME_NATIVE_AND_REGULAR_CONSTRUCTOR | runtime | native 与普通构造函数共存的类运行时验证：通过普通构造函数实例化，验证属性和方法访问 |
| EXP2_17_10_03_013_RUNTIME_NATIVE_CONSTRUCTOR_CLASS_METHODS | runtime | native 构造函数类的方法运行时验证：验证类方法（非 native）可正常声明和调用 |

### §17.10 Native_Functions_and_Methods（0P + 0F + 0R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|

### §17.11 Classes_Experimental（5P + 3F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_11_001_COMPILE_PASS_FINAL_CLASS_DECL | compile-pass | 验证 final 类声明编译通过 |
| EXP2_17_11_002_COMPILE_PASS_FINAL_CLASS_INST | compile-pass | 验证 final 类实例化编译通过 |
| EXP2_17_11_003_COMPILE_PASS_FINAL_METHOD_DECL | compile-pass | 验证 non-final 类中的 final 方法编译通过 |
| EXP2_17_11_004_COMPILE_PASS_FINAL_AS_TYPE | compile-pass | 验证 final 类作为类型注解编译通过 |
| EXP2_17_11_005_COMPILE_PASS_FINAL_HIERARCHY | compile-pass | 验证多个 final 类独立声明编译通过 |
| EXP2_17_11_011_COMPILE_FAIL_EXTENDS_FINAL | compile-fail | 验证 extends final 类——应报编译错误 |
| EXP2_17_11_012_COMPILE_FAIL_FINAL_ABSTRACT | compile-fail | 验证 final + abstract 方法组合——应报编译错误 |
| EXP2_17_11_013_COMPILE_FAIL_OVERRIDE_FINAL | compile-fail | 验证重写 final 方法——应报编译错误 |
| EXP2_17_11_021_RUNTIME_FINAL_INSTANCEOF | runtime | 运行时验证 final 类 instanceof 检查 |
| EXP2_17_11_022_RUNTIME_FINAL_METHOD_DISPATCH | runtime | 运行时验证 final 方法调用 |
| EXP2_17_11_023_RUNTIME_FINAL_CLASS_CAST | runtime | 运行时验证 final 类对象类型转换 |

### §17.11.1 Final_Classes（5P + 5F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_11_01_001_PASS_FINAL_CLASS_DECLARATION | compile-pass | 基本 final 类声明：验证 `final class C {}` 声明可编译通过 |
| EXP2_17_11_01_002_PASS_FINAL_CLASS_INSTANTIATION | compile-pass | final 类实例化：验证 final 类可以通过 new 正常实例化 |
| EXP2_17_11_01_003_PASS_FINAL_CLASS_IMPLEMENTS_INTERFACE | compile-pass | final 类实现接口：验证 final 类可以实现接口（extends = 继承被禁止，但 implements = 实现接口不受限） |
| EXP2_17_11_01_004_PASS_FINAL_CLASS_WITH_FINAL_METHOD | compile-pass | final 类中的 final 方法声明：验证 final 类中可以声明 final 方法，且编译通过 |
| EXP2_17_11_01_005_PASS_FINAL_CLASS_TYPE_ANNOTATION | compile-pass | final 类作为类型注解：验证 final 类可以用作变量类型、函数参数类型、返回值类型 |
| EXP2_17_11_01_006_FAIL_EXTENDS_FINAL_CLASS | compile-fail | final 类不能被继承：验证普通类 extends final 类应产生编译时错误 |
| EXP2_17_11_01_007_FAIL_FINAL_EXTENDS_FINAL | compile-fail | final 类不能继承另一个 final 类：验证 final class extends final class 应产生编译时错误 |
| EXP2_17_11_01_008_FAIL_DEEP_EXTENDS_FINAL | compile-fail | 深层继承链中包含 final 类：验证 extends 关系中任何一环是 final 类都应产生编译时错误 |
| EXP2_17_11_01_009_FAIL_FINAL_CLASS_AS_SUPERTYPE | compile-fail | final 类不能作为父类（supertype）：验证任何类试图以 final 类作为 super 类型时应产生编译时错误 |
| EXP2_17_11_01_010_FAIL_OVERRIDE_FINAL_METHOD_IN_NONFINAL | compile-fail | 非 final 类中的 final 方法不能被重写：验证子类试图重写父类的 final 方法时应产生编译时错误 |
| EXP2_17_11_01_011_RUNTIME_FINAL_CLASS_INSTANTIATION | runtime | final 类实例化与属性访问运行时验证：验证 final 类可以正常实例化、属性访问和方法调用 |
| EXP2_17_11_01_012_RUNTIME_FINAL_CLASS_INTERFACE_DISPATCH | runtime | final 类通过接口引用进行方法调度：验证 final 类实现接口后，通过接口引用调用方法的运行时行为 |
| EXP2_17_11_01_013_RUNTIME_FINAL_CLASS_METHOD_DISPATCH | runtime | final 类方法调度运行时验证：验证 final 类中声明的方法可直接调用和间接调用 |

### §17.11.2 Final_Methods（5P + 5F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_11_2_001_PASS_FINAL_METHOD_BASIC | compile-pass | final 方法基本声明：验证 final 实例方法可以正常声明，包括无返回值和有返回值的方法 |
| EXP2_17_11_2_002_PASS_FINAL_METHOD_RETURN | compile-pass | final 方法带参数和返回值：验证 final 方法可以有参数和返回值 |
| EXP2_17_11_2_003_PASS_FINAL_METHOD_MULTI | compile-pass | 多个 final 方法共存：验证一个类中可以声明多个 final 方法，且可以与普通方法共存 |
| EXP2_17_11_2_004_PASS_FINAL_METHOD_DEEP_INHERIT | compile-pass | 多层继承中 final 方法传递：验证 final 方法在多层级继承链中可以被继承但不能被重写 |
| EXP2_17_11_2_005_PASS_FINAL_METHOD_STRING_PARAM | compile-pass | final 方法接受字符串字面量类型参数：验证 final 方法可以接受字符串类型参数 |
| EXP2_17_11_2_006_FAIL_FINAL_METHOD_OVERRIDE | compile-fail | 子类重写父类的 final 方法：验证子类重写 final 方法应产生编译时错误 |
| EXP2_17_11_2_007_FAIL_ABSTRACT_FINAL | compile-fail | abstract + final 组合：验证 abstract 和 final 不能同时修饰一个方法 |
| EXP2_17_11_2_008_FAIL_STATIC_FINAL | compile-fail | static + final 组合：验证 static 和 final 不能同时修饰一个方法 |
| EXP2_17_11_2_009_FAIL_DEEP_OVERRIDE_FINAL | compile-fail | 多层继承中底层类重写顶层 final 方法：验证底层类不能重写继承链上的 final 方法 |
| EXP2_17_11_2_010_FAIL_FINAL_IN_INTERFACE | compile-fail | 接口中声明 final 方法：验证接口方法不能使用 final 修饰符 |
| EXP2_17_11_2_011_RUNTIME_FINAL_METHOD_CALL | runtime | 调用 final 方法验证行为：验证声明为 final 的方法可以在运行时正确调用并返回期望值 |
| EXP2_17_11_2_012_RUNTIME_FINAL_INHERIT_CALL | runtime | 子类继承并调用 final 方法：验证子类不重写 final 方法时，可以继承并正确调用 |
| EXP2_17_11_2_013_RUNTIME_FINAL_METHOD_STATE | runtime | final 方法修改和读取实例状态：验证 final 方法可以正确修改和读取对象字段 |
| EXP2_17_11_2_014_RUNTIME_FINAL_METHOD_RETURN | runtime | final 方法返回值计算验证：验证 final 方法的计算逻辑在运行时正确执行 |

### §17.11.3 Named_Constructors（5P + 5F + 5R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_11_3_001_PASS_NAMED_CTOR_DECLARE | compile-pass | 命名构造函数基本声明：验证 constructor Name(params) 语法可以正常声明 |
| EXP2_17_11_3_002_PASS_NAMED_CTOR_MULTI | compile-pass | 多个命名构造函数通过参数类型区分：验证多个命名构造函数可以通过不同参数类型区分 |
| EXP2_17_11_3_003_PASS_NAMED_AND_UNNAMED_CTOR | compile-pass | 匿名构造函数与命名构造函数共存：验证类中可以同时有匿名构造函数和命名构造函数 |
| EXP2_17_11_3_004_PASS_NAMED_CTOR_OVERLOAD_BLOCK | compile-pass | overload constructor 块声明：验证 overload constructor { ... } 语法正确声明 |
| EXP2_17_11_3_005_PASS_NAMED_CTOR_COMPLEX_PARAMS | compile-pass | 命名构造函数接受多个参数：验证命名构造函数可以接受多个不同类型参数 |
| EXP2_17_11_3_006_FAIL_CTOR_NAME_AS_REF | compile-fail | 构造函数名作为属性引用：验证将命名构造函数名作为属性引用产生编译错误 |
| EXP2_17_11_3_007_FAIL_TWO_OVERLOAD_BLOCKS | compile-fail | 两个 overload constructor 块：验证同一个类中声明两个 overload constructor 块产生编译错误 |
| EXP2_17_11_3_008_FAIL_NO_MATCHING_CTOR | compile-fail | 调用参数不匹配任何命名构造函数：验证 new Class(args) 参数不匹配时产生编译错误 |
| EXP2_17_11_3_009_FAIL_ALL_NAMED_WRONG_ARGS | compile-fail | 全命名构造函数且参数不匹配：验证类只有命名构造函数时，无参调用产生编译错误 |
| EXP2_17_11_3_010_FAIL_DUPLICATE_SAME_PARAMS | compile-fail | 同名命名构造函数且参数完全相同：验证两个命名构造函数同名同参产生编译错误 |
| EXP2_17_11_3_011_RUNTIME_NAMED_CTOR_CREATE | runtime | 命名构造函数创建正确对象：验证通过 overload 解析调用命名构造函数创建的对象具有正确的状态 |
| EXP2_17_11_3_012_RUNTIME_NAMED_ANONYMOUS_COEXIST | runtime | 匿名构造函数与命名构造函数共存并正确解析：验证匿名和命名构造函数分别正确解析 |
| EXP2_17_11_3_013_RUNTIME_MULTI_NAMED_RESOLUTION | runtime | 多个命名构造函数重载解析验证：验证编译器根据参数类型选择正确的命名构造函数 |
| EXP2_17_11_3_014_RUNTIME_ALL_NAMED_RESOLUTION | runtime | 全命名构造函数对象创建验证：验证类中只有命名构造函数时，通过 overload 解析正确调用 |
| EXP2_17_11_3_015_RUNTIME_OVERLOAD_ORDER | runtime | overload 解析顺序验证：验证当多个构造函数可匹配时，优先选择第一个匹配的（overload 列表顺序） |

### §17.11 Classes_Experimental（0P + 0F + 0R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|

### §17.12 Default_Interface_Method_Declarations（5P + 5F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_12_001_PASS_DEFAULT_METHOD_BASIC | compile-pass | 接口中声明带方法体的默认方法，类实现该接口但不重写该方法，验证类实例可调用该默认方法 |
| EXP2_17_12_002_PASS_MULTIPLE_DEFAULTS | compile-pass | 接口中声明多个默认方法（含不同参数和返回类型），类实现该接口，验证所有默认方法均可被调用 |
| EXP2_17_12_003_PASS_PRIVATE_DEFAULT | compile-pass | 接口中声明私有默认方法，在公开的默认方法中调用该私有方法，类实现接口并调用公开默认方法 |
| EXP2_17_12_004_PASS_DEFAULT_WITH_PARAMS | compile-pass | 默认方法声明多种参数类型（int, string, boolean）和返回值类型，类实现接口并调用 |
| EXP2_17_12_005_PASS_DEFAULT_THIS_PROP | compile-pass | 默认方法中使用 `this` 访问接口中声明的属性，类实现该接口并提供属性值，验证默认方法可正确引用实例属性 |
| EXP2_17_12_010_FAIL_PRIVATE_CALLED_EXTERNALLY | compile-fail | 接口中声明私有默认方法，在实现类外部（main函数中）直接调用该私有方法，应产生编译错误 |
| EXP2_17_12_011_FAIL_RETURN_TYPE_MISMATCH | compile-fail | 类重写接口默认方法时，返回类型不兼容（接口要求 int，类返回 string），应产生编译错误 |
| EXP2_17_12_012_FAIL_NONEXISTENT_METHOD | compile-fail | 实现接口的类实例上调用接口中不存在的方法，应产生编译错误 |
| EXP2_17_12_013_FAIL_DUPLICATE_DEFAULT | compile-fail | 接口中重复声明同名的默认方法（相同签名），应产生编译错误 |
| EXP2_17_12_014_FAIL_INVALID_SYNTAX | compile-fail | 默认方法声明语法不完整（方法体缺少闭合大括号），应产生语法错误 |
| EXP2_17_12_020_RUNTIME_DEFAULT_INVOKED | runtime | 接口声明默认方法，类不重写，运行时验证默认方法确实被调用并产生预期输出 |
| EXP2_17_12_021_RUNTIME_OVERRIDE_PRECEDENCE | runtime | 类重写接口默认方法，运行时验证重写的方法被调用而非默认实现 |
| EXP2_17_12_022_RUNTIME_PRIVATE_DEFAULT | runtime | 接口声明私有默认方法，在公开默认方法中调用，运行时验证调用链正确且私有方法产生预期结果 |
| EXP2_17_12_023_RUNTIME_COMPLEX_LOGIC | runtime | 默认方法包含条件分支、循环、this属性访问等复杂逻辑，运行时验证所有逻辑正确执行 |

### §17.13.1 Functions_with_Receiver（7P + 4F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_13_1_001_PASS_METHOD_CALL_SYNTAX | compile-pass | 基本接收者函数通过方法调用语法调用：顶层接收者函数可通过 receiver.funcName(args) 调用 |
| EXP2_17_13_1_002_PASS_ORDINARY_CALL_SYNTAX | compile-pass | 接收者函数通过普通函数调用语法调用：funcName(receiver, args) |
| EXP2_17_13_1_003_PASS_GENERIC_RECEIVER_FUNCTION | compile-pass | 泛型接收者函数：接收者类型为泛型类，函数也是泛型 |
| EXP2_17_13_1_004_PASS_ACCESS_PUBLIC_MEMBER | compile-pass | 接收者函数通过 this 访问公有成员变量 |
| EXP2_17_13_1_005_PASS_ADDITIONAL_PARAMETERS | compile-pass | 接收者函数带有额外参数：this 作为第一个参数后还可有其余参数 |
| EXP2_17_13_1_006_PASS_NAMESPACE_RECEIVER | compile-pass | 命名空间中的接收者函数：在命名空间中定义接收者函数，通过普通调用语法使用 |
| EXP2_17_13_1_007_PASS_MULTIPLE_TYPES_RECEIVER | compile-pass | 为不同类型定义不同的接收者函数，各自独立工作 |
| EXP2_17_13_1_008_FAIL_ACCESS_PRIVATE_MEMBER | compile-fail | 接收者函数只能访问公有成员，访问私有成员应编译失败 |
| EXP2_17_13_1_009_FAIL_THIS_NOT_FIRST_PARAM | compile-fail | 接收者函数的 this 参数必须是第一个参数，否则编译失败 ESY0158 |
| EXP2_17_13_1_010_FAIL_MISSING_THIS_PARAM | compile-fail | 使用 this 但函数没有定义为接收者函数时应编译失败 ESE0203 |
| EXP2_17_13_1_011_FAIL_WRONG_THIS_NAME | compile-fail | 接收者参数名称必须是 "this"，使用其余名称应编译失败（self 不会被视为接收者） |
| EXP2_17_13_1_012_RUNTIME_METHOD_CALL_VERIFY | runtime | 运行时验证：方法调用语法 receiver.funcName(args) 正确执行并返回预期结果 |
| EXP2_17_13_1_013_RUNTIME_ORDINARY_CALL_VERIFY | runtime | 运行时验证：普通函数调用语法 funcName(receiver, args) 正确执行并返回预期结果 |
| EXP2_17_13_1_014_RUNTIME_THIS_BINDING_VERIFY | runtime | 运行时验证：this 绑定正确——方法调用和普通调用指向同一个接收者对象 |
| EXP2_17_13_1_015_RUNTIME_GENERIC_RECEIVER_VERIFY | runtime | 运行时验证：泛型接收者函数在运行时正确执行 |

### §17.13.2 Receiver_Type（6P + 5F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_13_2_001_PASS_CLASS_RECEIVER_TYPE | compile-pass | 类类型作为接收者类型：合法接收者类型 |
| EXP2_17_13_2_002_PASS_INTERFACE_RECEIVER_TYPE | compile-pass | 接口类型作为接收者类型：合法接收者类型 |
| EXP2_17_13_2_003_PASS_ARRAY_RECEIVER_TYPE | compile-pass | 数组类型作为接收者类型 (number[])：合法接收者类型。使用 for..of 避免索引类型问题 |
| EXP2_17_13_2_004_PASS_ARRAY_RECEIVER_OPERATIONS | compile-pass | 数组接收者进行操作：为数组类型添加多个接收者函数 |
| EXP2_17_13_2_005_PASS_GENERIC_CLASS_RECEIVER | compile-pass | 泛型类作为接收者类型：合法接收者类型 |
| EXP2_17_13_2_006_PASS_GENERIC_INTERFACE_RECEIVER | compile-pass | 泛型接口作为接收者类型：合法接收者类型 |
| EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER | compile-fail | 原始类型 int 不能作为接收者类型 — spec 要求产生编译错误 |
| EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER | compile-fail | 原始类型 string 不能作为接收者类型 — spec 要求产生编译错误 |
| EXP2_17_13_2_009_FAIL_UNION_TYPE_RECEIVER | compile-fail | 联合类型不能作为接收者类型 — 会产生 ESE0082 |
| EXP2_17_13_2_010_FAIL_FUNCTION_TYPE_RECEIVER | compile-fail | 函数类型不能作为接收者类型 — 会产生 ESE0082 |
| EXP2_17_13_2_011_FAIL_ENUM_TYPE_RECEIVER | compile-fail | 枚举类型不能作为接收者类型 — 会产生 ESE0082 |
| EXP2_17_13_2_012_RUNTIME_ARRAY_RECEIVER_VERIFY | runtime | 运行时验证：数组接收者函数正确执行数组操作 |
| EXP2_17_13_2_013_RUNTIME_CLASS_RECEIVER_VERIFY | runtime | 运行时验证：类类型接收者函数正确执行 |
| EXP2_17_13_2_014_RUNTIME_INTERFACE_RECEIVER_VERIFY | runtime | 运行时验证：接口类型接收者函数通过实现类正确执行 |

### §17.13.3 Function_Types_with_Receiver（6P + 4F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_13_3_001_PASS_FUNCTION_TYPE_WITH_RECEIVER | compile-pass | 带接收者的函数类型声明：使用 (this: Type, params?) => ReturnType 语法声明类型别名 |
| EXP2_17_13_3_002_PASS_VARIABLE_FUNCTION_TYPE_RECEIVER | compile-pass | 变量使用带接收者函数类型：声明变量时指定带接收者的函数类型，通过普通调用使用 |
| EXP2_17_13_3_003_PASS_GENERIC_FUNCTION_TYPE_RECEIVER | compile-pass | 泛型接收者函数类型：类型参数出现在接收者类型和参数/返回值中 |
| EXP2_17_13_3_004_PASS_ASSIGN_LAMBDA_TO_RECEIVER_FUNC_TYPE | compile-pass | 将带接收者的lambda赋值给带接收者的函数类型变量，通过普通调用使用 |
| EXP2_17_13_3_005_PASS_CALL_VIA_FUNC_TYPE_VARIABLE | compile-pass | 通过函数类型变量以普通调用语法使用接收者函数 |
| EXP2_17_13_3_006_PASS_FUNC_TYPE_RECEIVER_AS_PARAM | compile-pass | 带接收者的函数类型作为另一个函数的参数类型 |
| EXP2_17_13_3_007_FAIL_NON_RECEIVER_TO_RECEIVER_FUNC_TYPE | compile-fail | 非接收者函数赋值给带接收者的函数类型应编译失败 ESE0318 |
| EXP2_17_13_3_008_FAIL_INCOMPATIBLE_RECEIVER_TYPE_ASSIGN | compile-fail | 接收者类型不匹配的lambda赋值给函数类型变量应编译失败 ESE0318 |
| EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT | compile-fail | 参数数量不匹配的lambda赋值给函数类型变量应编译失败 |
| EXP2_17_13_3_010_FAIL_NO_RECEIVER_METHOD_CALL | compile-fail | 无接收者的函数类型不能通过方法调用语法调用 — ESE0087 |
| EXP2_17_13_3_011_RUNTIME_FUNC_TYPE_RECEIVER_INVOKE | runtime | 运行时验证：函数类型变量通过普通调用语法正确执行 |
| EXP2_17_13_3_012_RUNTIME_GENERIC_FUNC_TYPE_RECEIVER | runtime | 运行时验证：泛型接收者函数类型变量正确执行 |
| EXP2_17_13_3_013_RUNTIME_ASSIGN_AND_CALL_VARIABLE | runtime | 运行时验证：通过函数类型变量赋值和调用完整流程 |

### §17.13.4 Lambda_Expressions_with_Receiver（6P + 4F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_13_4_001_PASS_BASIC_LAMBDA_WITH_RECEIVER | compile-pass | 基本带接收者的lambda表达式定义，通过普通调用语法使用 |
| EXP2_17_13_4_002_PASS_LAMBDA_METHOD_CALL | compile-pass | 带接收者的lambda通过普通调用语法调用：lambda(receiver, args) |
| EXP2_17_13_4_003_PASS_LAMBDA_ORDINARY_CALL | compile-pass | 带接收者的lambda通过普通调用语法调用：lambda(receiver) 形式 |
| EXP2_17_13_4_004_PASS_LAMBDA_ACCESS_RECEIVER_MEMBERS | compile-pass | lambda内通过this访问接收者的公有成员 |
| EXP2_17_13_4_005_PASS_LAMBDA_ADDITIONAL_PARAMS | compile-pass | 带接收者的lambda带有额外参数 |
| EXP2_17_13_4_006_PASS_LAMBDA_ASSIGN_TO_VARIABLE | compile-pass | 带接收者的lambda赋值给变量，通过普通调用使用 |
| EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER | compile-fail | lambda使用非法接收者类型（原始类型number）应编译失败 |
| EXP2_17_13_4_008_FAIL_OUTER_THIS_IN_RECEIVER_LAMBDA | compile-fail | 接收者lambda内部this绑定到接收者，不能引用外围类的this — ESE0202 |
| EXP2_17_13_4_009_FAIL_RECEIVER_LAMBDA_NON_RECEIVER_CONTEXT | compile-fail | 带接收者lambda赋值给无接收者的函数类型变量应编译失败 ESE0318 |
| EXP2_17_13_4_010_FAIL_INVALID_LAMBDA_RECEIVER_SYNTAX | compile-fail | 无效lambda接收者语法：this参数未放在lambda参数列表第一个位置 — ESY0158 |
| EXP2_17_13_4_011_RUNTIME_LAMBDA_RECEIVER_EXECUTION | runtime | 运行时验证：带接收者的lambda通过普通调用正确执行 |
| EXP2_17_13_4_012_RUNTIME_LAMBDA_THIS_BINDING | runtime | 运行时验证：lambda接收者内this正确绑定到接收者对象 |
| EXP2_17_13_4_013_RUNTIME_LAMBDA_BOTH_CALL_SYNTAX | runtime | 运行时验证：带接收者lambda通过普通调用语法执行，同时验证顶层接收者函数的方法调用语法 |

### §17.13.5 Implicit_this_in_Lambda_with_Receiver_Body（5P + 4F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_13_5_001_PASS_EXPLICIT_THIS_MEMBER_ACCESS | compile-pass | 显式 this 访问接收者成员：在接收者lambda体内使用 this.field 访问成员 |
| EXP2_17_13_5_002_PASS_EXPLICIT_THIS_IN_RECEIVER_FUNC | compile-pass | 接收者函数中使用显式 this. 访问成员 |
| EXP2_17_13_5_003_PASS_EXPLICIT_THIS_MULTIPLE_MEMBERS | compile-pass | 显式this同时访问多个接收者成员 |
| EXP2_17_13_5_004_PASS_EXPLICIT_THIS_CHAINED_CALL | compile-pass | 通过显式this调用接收者的方法并访问成员 |
| EXP2_17_13_5_005_PASS_RECEIVER_FUNC_THIS_ACCESS | compile-pass | 顶层接收者函数中使用显式 this 访问成员并通过方法调用语法调用 |
| EXP2_17_13_5_006_FAIL_AMBIGUOUS_RECEIVER_AND_OUTER | compile-fail | 接收者lambda中省略this访问与外部同名的成员应产生编译错误（使用隐式this需要编译器支持） |
| EXP2_17_13_5_007_FAIL_NONEXISTENT_MEMBER_IMPLICIT | compile-fail | 隐式访问不存在的成员应编译失败 — ESE0143 |
| EXP2_17_13_5_008_FAIL_IMPLICIT_PRIVATE_MEMBER | compile-fail | 通过 this 访问私有成员应编译失败 — ESE0293 |
| EXP2_17_13_5_009_FAIL_AMBIGUITY_RECEIVER_VS_LOCAL | compile-fail | 接收者函数中this绑定到非接收者类型 — ESE0201 |
| EXP2_17_13_5_010_RUNTIME_EXPLICIT_THIS_RESOLVE | runtime | 运行时验证：显式 this 正确解析到接收者成员并产生正确结果 |
| EXP2_17_13_5_011_RUNTIME_THIS_ACCESS_CONSISTENCY | runtime | 运行时验证：顶层接收者函数的方法调用和普通调用产生相同结果 |
| EXP2_17_13_5_012_RUNTIME_RECEIVER_FUNC_COUNT_VERIFY | runtime | 运行时验证：接收者函数中this.count自增正确反映接收者状态 |

### §17.13 Adding_Functionality_to_Existing_Types（4P + 2F + 2R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_13_001_PASS_BASIC_CLASS_RECEIVER | compile-pass | 基本类接收者函数：为类类型定义顶层接收者函数，通过方法调用语法和普通函数调用语法使用 |
| EXP2_17_13_002_PASS_INTERFACE_RECEIVER | compile-pass | 接口类型接收者函数：为接口类型定义接收者函数，实现该接口的类实例均可使用方法调用语法 |
| EXP2_17_13_003_PASS_MULTIPLE_RECEIVER_FUNCTIONS | compile-pass | 同一类型的多个接收者函数：为同一类型定义多个不同的顶层接收者函数，均可通过方法调用语法使用 |
| EXP2_17_13_004_PASS_ORDINARY_CALL_SYNTAX | compile-pass | 接收者函数的普通函数调用语法：接收者作为第一个参数传递，效果等同方法调用语法 |
| EXP2_17_13_005_FAIL_INCOMPATIBLE_RECEIVER_TYPE | compile-fail | 接收者类型不兼容：方法调用语法的接收者类型与函数定义的 this 类型不匹配 |
| EXP2_17_13_006_FAIL_ORDINARY_CALL_WRONG_RECEIVER | compile-fail | 普通调用语法传入错误的接收者类型应编译失败 |
| EXP2_17_13_007_RUNTIME_CLASS_RECEIVER_INVOCATION | runtime | 运行时验证：接收者函数通过方法调用语法和普通调用语法均正确执行 |
| EXP2_17_13_008_RUNTIME_INTERFACE_RECEIVER | runtime | 运行时验证：接口类型接收者函数通过实现类实例正确执行 |

### §17.14 Trailing_Lambdas（6P + 4F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_14_001_PASS_SIMPLE_TRAILING | compile-pass | 函数仅有一个函数类型参数，使用 trailing lambda 语法调用 |
| EXP2_17_14_002_PASS_METHOD_TRAILING | compile-pass | 类方法调用使用 trailing lambda 语法：obj.method() { body } |
| EXP2_17_14_003_PASS_MULTI_PARAM_TRAILING | compile-pass | 多个普通参数在前，最后一个参数为函数类型，使用 trailing lambda 语法调用 |
| EXP2_17_14_004_PASS_NESTED_TRAILING | compile-pass | 外层和内层函数调用都使用 trailing lambda 语法，形成嵌套 trailing lambda |
| EXP2_17_14_005_PASS_RETURN_VALUE | compile-pass | Trailing lambda 包含 return 语句返回 int 值 |
| EXP2_17_14_006_PASS_STRING_PARAM_TRAILING | compile-pass | 前置参数为 string 类型，最后一个参数为函数类型，使用 trailing lambda 语法调用 |
| EXP2_17_14_007_FAIL_NOT_FUNCTION_TYPE | compile-fail | 最后一个参数不是函数类型时，使用 trailing lambda 语法应编译失败 |
| EXP2_17_14_008_FAIL_SEMICOLON_BEFORE_BLOCK | compile-fail | 分号出现在调用和 block 之间时，block 不是 trailing lambda |
| EXP2_17_14_009_FAIL_MULTIPLE_TRAILING | compile-fail | 一次调用后出现多个 trailing block 应编译失败 |
| EXP2_17_14_010_FAIL_OPTIONAL_BEFORE_TRAILING | compile-fail | 函数类型参数前有可选参数，可选参数在函数类型参数前时 spec 允许跳过 |
| EXP2_17_14_010_RUNTIME_EXECUTION | runtime | 通过全局标志验证 trailing lambda 实际被执行 |
| EXP2_17_14_011_RUNTIME_RETURN_VALUE | runtime | 验证 trailing lambda 的返回值被正确接收 |
| EXP2_17_14_012_RUNTIME_MULTI_PARAM | runtime | 验证有前置参数时 trailing lambda 的参数正确传递 |
| EXP2_17_14_013_RUNTIME_NESTED | runtime | 验证嵌套 trailing lambda 按正确顺序执行 |

### §17.15 Accessor_Declarations（6P + 5F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_15_001_PASS_GETTER_COMPUTED | compile-pass | 顶层 getter 声明，返回计算值 |
| EXP2_17_15_002_PASS_SETTER_ASSIGN | compile-pass | 顶层 setter 声明，赋值给 backing 变量 |
| EXP2_17_15_003_PASS_GETTER_SETTER_PAIR | compile-pass | 顶层 getter 和 setter 配对声明，共享 backing 变量 |
| EXP2_17_15_004_PASS_NAMESPACE_GETTER | compile-pass | 命名空间内声明 getter，使用 export 导出 |
| EXP2_17_15_005_PASS_NAMESPACE_SETTER | compile-pass | 命名空间内声明 setter，使用 export 导出 |
| EXP2_17_15_006_PASS_GETTER_INFER | compile-pass | Getter 省略返回类型声明，从函数体推断返回类型为 int |
| EXP2_17_15_007_FAIL_GETTER_AS_CALL | compile-fail | Getter 作为调用表达式使用（getter()），应编译失败 |
| EXP2_17_15_008_FAIL_SETTER_OPTIONAL_PARAM | compile-fail | Setter 参数使用可选类型声明（v?: int），应编译失败 |
| EXP2_17_15_009_FAIL_GETTER_WITH_PARAM | compile-fail | Getter 声明包含形式参数，应编译失败 |
| EXP2_17_15_010_FAIL_NATIVE_GETTER_BODY | compile-fail | Native getter 声明包含函数体，应编译失败 |
| EXP2_17_15_011_FAIL_NONNATIVE_NO_BODY | compile-fail | 非原生 getter 声明缺少函数体，应编译失败 |
| EXP2_17_15_012_RUNTIME_GETTER_VALUE | runtime | 验证 getter 返回正确的计算值 |
| EXP2_17_15_013_RUNTIME_SETTER_UPDATE | runtime | 验证 setter 正确更新 backing 变量状态 |
| EXP2_17_15_014_RUNTIME_PAIR_INTERACTION | runtime | 验证 getter+setter 配对交互：setter 更新后 getter 返回新值 |
| EXP2_17_15_015_RUNTIME_NAMESPACE | runtime | 验证命名空间内 getter+setter 的读写交互 |

### §17.16.1 Destructuring_Assignment（5P + 5F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_16_1_001_PASS_ARRAY_DESTRUCTURING | compile-pass | 基本数组解构声明——let [a, b] = arr 从数组提取值 |
| EXP2_17_16_1_002_PASS_ARRAY_SKIP | compile-pass | 数组解构跳过元素——let [a, , b] = arr 跳过中间元素 |
| EXP2_17_16_1_003_PASS_TUPLE_DESTRUCTURING | compile-pass | 元组解构声明——let [num, str] = tup 从元组提取不同类型元素 |
| EXP2_17_16_1_004_PASS_LITERAL_RHS | compile-pass | 解构声明的 RHS 为数组字面量——let [a, b] = [1, 2] 直接解构字面量 |
| EXP2_17_16_1_005_PASS_SINGLE_ELEMENT | compile-pass | 单元数组解构——let [a] = arr 从单元素数组提取值 |
| EXP2_17_16_1_010_FAIL_NON_ARRAY_RHS | compile-fail | 解构非数组/元组 RHS——let [a, b] = 42 应触发编译错误 ESY0049 |
| EXP2_17_16_1_011_FAIL_DUPLICATE_BINDING | compile-fail | 解构中重复绑定同一变量——let [a, a] = arr 应触发 ESE0351 |
| EXP2_17_16_1_012_FAIL_MORE_LHS_THAN_TUPLE | compile-fail | 元组解构时 LHS 元素数超过元组长度——let [a, b, c] = tup_2 应触发 ESY82935 |
| EXP2_17_16_1_013_FAIL_REST_ELEMENT | compile-fail | 解构中的 rest 元素——let [a, ...rest] = arr 触发 ESY165518 |
| EXP2_17_16_1_014_FAIL_TYPE_ANNOTATION_IN_PATTERN | compile-fail | 解构模式内的类型注释——let [a: int, b: int] = arr 触发 ESY0229 |
| EXP2_17_16_1_020_RUNTIME_ARRAY_VALUES | runtime | 运行时验证数组解构提取的值正确 |
| EXP2_17_16_1_021_RUNTIME_SKIP_ELEMENT | runtime | 运行时验证解构跳过元素功能——中间元素被忽略 |
| EXP2_17_16_1_022_RUNTIME_TUPLE_VALUES | runtime | 运行时验证元组解构提取的值正确（含不同类型） |
| EXP2_17_16_1_023_RUNTIME_STRING_ARRAY | runtime | 运行时验证字符串数组解构——验证不同元素类型的解构行为 |

### §17.16 Pattern_Matching（4P + 4F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_16_001_PASS_INSTANCEOF_STRING | compile-pass | 使用 instanceof 进行类型测试——Object 变量检查是否为 String 类型 |
| EXP2_17_16_002_PASS_INSTANCEOF_CLASS | compile-pass | 使用 instanceof 检查用户自定义类的继承层次 |
| EXP2_17_16_003_PASS_INSTANCEOF_BRANCH | compile-pass | 基于 instanceof 的条件分支——模拟模式匹配的类型分发 |
| EXP2_17_16_004_PASS_INSTANCEOF_MULTI | compile-pass | 多个 instanceof 检查组合使用——验证在多种类型间进行识别 |
| EXP2_17_16_010_FAIL_IS_OPERATOR | compile-fail | spec 提到的 is 运算符——ArkTS 当前实现不支持 is 运算符 |
| EXP2_17_16_011_FAIL_TYPE_PREDICATE | compile-fail | 类型谓词函数签名中的 is——ArkTS 不支持类型谓词 |
| EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH | compile-fail | instanceof 检查互不兼容的类型——编译期可确定始终为 false |
| EXP2_17_16_013_FAIL_WRONG_TYPE_CONTEXT | compile-fail | 类型名在错误上下文中使用——instanceof 右侧必须为类型引用 |
| EXP2_17_16_020_RUNTIME_INSTANCEOF_STRING | runtime | 运行时验证 instanceof String 的行为——Object 持有字符串时的类型检查 |
| EXP2_17_16_021_RUNTIME_INSTANCEOF_CLASS | runtime | 运行时验证 instanceof 对用户自定义类的层次检查 |
| EXP2_17_16_022_RUNTIME_INSTANCEOF_BRANCH | runtime | 运行时验证 instanceof 多分支类型分发 |
| EXP2_17_16_023_RUNTIME_INSTANCEOF_NULL | runtime | 运行时验证 instanceof 对 null 和不同对象类型的处理 |

### §17.1 Type_char（5P + 5F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_01_001_PASS_CHAR_DECLARE_INIT | compile-pass | char 类型变量声明与初始化：验证 char 类型变量可以正确声明并用 char 字面量初始化 |
| EXP2_17_01_002_PASS_CHAR_ASSIGN_TO_OBJECT | compile-pass | char 是 Object 的子类型：char 变量可以赋值给 Object 类型变量 |
| EXP2_17_01_003_PASS_CHAR_FUNC_PARAM_RETURN | compile-pass | char 作为函数参数类型和返回类型：char 可以用于函数签名中 |
| EXP2_17_01_004_PASS_CHAR_CLASS_FIELD | compile-pass | char 作为类字段类型：char 可以用于类的属性声明 |
| EXP2_17_01_005_PASS_CHAR_GENERIC_ARRAY | compile-pass | char 作为泛型类型参数：char 可以用于数组和泛型容器类型 |
| EXP2_17_01_006_FAIL_INT_ASSIGN_TO_CHAR | compile-fail | int 类型值不能隐式赋值给 char 类型，需要显式转换 |
| EXP2_17_01_007_FAIL_CHAR_ASSIGN_TO_INT | compile-fail | char 类型值不能隐式赋值给 int 类型，需要显式转换 |
| EXP2_17_01_008_FAIL_STRING_ASSIGN_TO_CHAR | compile-fail | string 类型不能赋值给 char 类型 |
| EXP2_17_01_009_FAIL_BOOLEAN_ASSIGN_TO_CHAR | compile-fail | boolean 类型不能赋值给 char 类型 |
| EXP2_17_01_010_FAIL_CHAR_AS_VAR_NAME | compile-fail | char 是关键字，不能用作变量名 |
| EXP2_17_01_011_RUNTIME_CHAR_VALUE_VERIFY | runtime | char 变量值验证：验证 char 字面量对应的 Unicode 码点值 |
| EXP2_17_01_012_RUNTIME_CHAR_OBJECT_INSTANCEOF | runtime | char 赋值给 Object 后 instanceof 检查：验证 char 是 Object 的子类型 |
| EXP2_17_01_013_RUNTIME_CHAR_ARRAY_OPS | runtime | char 数组操作：验证 char[] 的创建、索引访问和迭代 |

### §17.2.1 Fixed_Size_Array_Creation（7P + 4F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_02_01_001_PASS_CONSTRUCTOR_INT | compile-pass | FixedArray 构造函数创建 int 类型元素数组：验证 new FixedArray<int>(len, elem) 正确编译 |
| EXP2_17_02_01_002_PASS_CONSTRUCTOR_STRING | compile-pass | FixedArray 构造函数创建 string 类型元素数组：验证 new FixedArray<string>(len, elem) 正 |
| EXP2_17_02_01_003_PASS_CONSTRUCTOR_FLOAT | compile-pass | FixedArray 构造函数创建浮点数类型元素数组：验证 new FixedArray<number>(len, elem) 及 floa |
| EXP2_17_02_01_004_PASS_LITERAL_TYPE_ANNOTATION | compile-pass | FixedArray 通过 Array Literal 创建（显式类型注解）：验证 let a: FixedArray<T> = [...] |
| EXP2_17_02_01_005_PASS_LITERAL_TYPE_INFERENCE | compile-pass | FixedArray Array Literal 类型推断：验证将字面量传递给 FixedArray<T> 形参时编译器可推断正确类型 |
| EXP2_17_02_01_006_PASS_INDEX_READ_WRITE | compile-pass | FixedArray 下标读写访问：验证 a[idx] 读和 a[idx] = val 写操作正确编译 |
| EXP2_17_02_01_007_PASS_LENGTH_PROPERTY | compile-pass | FixedArray length 属性访问：验证 a.length 正确编译，无论通过构造函数还是字面量创建 |
| EXP2_17_02_01_010_FAIL_TYPE_ERASURE | compile-fail | FixedArray 元素类型 T 未被类型擦除保留：构造函数中使用类型参数 T 作为元素类型应产生编译时错误 |
| EXP2_17_02_01_011_FAIL_UNION_TYPE_ERASURE | compile-fail | FixedArray 联合类型含类型参数不被类型擦除保留：FixedArray<T | number> 中 T 为类型参数时应产生编译时错误 |
| EXP2_17_02_01_012_FAIL_WRONG_ARG_COUNT | compile-fail | FixedArray 构造函数参数数量错误：构造函数 constructor(len: int, elem: T) 要求恰好两个参数，传参不 |
| EXP2_17_02_01_013_FAIL_NON_INT_LENGTH | compile-fail | FixedArray 构造函数第一个参数长度必须为 int 类型：传入非 int 类型（如 float）应产生编译时错误 |
| EXP2_17_02_01_020_RUNTIME_ELEMENT_COUNT | runtime | 运行时验证 FixedArray 构造函数创建正确数量的元素 |
| EXP2_17_02_01_021_RUNTIME_ELEMENTS_INITIALIZED | runtime | 运行时验证 FixedArray 构造函数将所有元素初始化为给定值 |
| EXP2_17_02_01_022_RUNTIME_OUT_OF_BOUNDS | runtime | 运行时验证 FixedArray 越界下标访问抛出运行时错误 |
| EXP2_17_02_01_023_RUNTIME_LENGTH_AFTER_CREATION | runtime | 运行时验证 FixedArray 创建后 length 属性正确 |

### §17.2 Fixed_Size_Array_Types（7P + 5F + 5R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_02_001_PASS_FIXED_ARRAY_INT | compile-pass | FixedArray<int> 基本声明与数组字面量初始化 |
| EXP2_17_02_002_PASS_FIXED_ARRAY_DOUBLE | compile-pass | FixedArray<double> 声明与数组字面量初始化 |
| EXP2_17_02_003_PASS_FIXED_ARRAY_STRING | compile-pass | FixedArray<string> 声明与数组字面量初始化 |
| EXP2_17_02_004_PASS_FIXED_ARRAY_ELEMENT_ACCESS | compile-pass | FixedArray 元素读写访问 |
| EXP2_17_02_005_PASS_FIXED_ARRAY_LENGTH | compile-pass | FixedArray length 属性读取 |
| EXP2_17_02_006_PASS_FIXED_ARRAY_TYPE_ERASURE | compile-pass | FixedArray 类型擦除保留（泛型上下文） |
| EXP2_17_02_007_PASS_FIXED_ARRAY_BOOLEAN | compile-pass | FixedArray<boolean> 声明与数组字面量初始化 |
| EXP2_17_02_010_FAIL_FIXED_TO_RESIZABLE | compile-fail | FixedArray 赋值给 ResizableArray 编译错误 |
| EXP2_17_02_011_FAIL_RESIZABLE_TO_FIXED | compile-fail | ResizableArray 赋值给 FixedArray 编译错误 |
| EXP2_17_02_012_FAIL_FIXED_ARRAY_NO_METHODS | compile-fail | 对 FixedArray 调用方法编译错误 |
| EXP2_17_02_013_FAIL_FIXED_ARRAY_PARAM_MISMATCH | compile-fail | FixedArray 传递给期望 ResizableArray 的函数参数编译错误 |
| EXP2_17_02_014_FAIL_RESIZABLE_ARRAY_PARAM_MISMATCH | compile-fail | ResizableArray 传递给期望 FixedArray 的函数参数编译错误 |
| EXP2_17_02_020_RUNTIME_FIXED_ARRAY_LENGTH | runtime | FixedArray length 属性值验证 |
| EXP2_17_02_021_RUNTIME_FIXED_ARRAY_READ | runtime | FixedArray 边界内元素读访问验证 |
| EXP2_17_02_022_RUNTIME_FIXED_ARRAY_WRITE | runtime | FixedArray 边界内元素写后读访问验证 |
| EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS | runtime | FixedArray 越界访问抛出错误 |
| EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE | runtime | FixedArray length 属性不可重新赋值 |

### §17.3 Value_Array_Types（10P + 5F + 5R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_03_001_PASS_VALUEARRAY_INT_LITERAL | compile-pass | ValueArray<int> 使用数组字面量创建：验证 int 值类型数组声明和初始化 |
| EXP2_17_03_002_PASS_VALUEARRAY_LONG_LITERAL | compile-pass | ValueArray<long> 使用数组字面量创建：验证 long 值类型数组声明和初始化 |
| EXP2_17_03_003_PASS_VALUEARRAY_FLOAT_LITERAL | compile-pass | ValueArray<float> 使用数组字面量创建：验证 float 值类型数组声明和初始化 |
| EXP2_17_03_004_PASS_VALUEARRAY_DOUBLE_LITERAL | compile-pass | ValueArray<double> 使用数组字面量创建：验证 double 值类型数组声明和初始化 |
| EXP2_17_03_005_PASS_VALUEARRAY_CHAR_LITERAL | compile-pass | ValueArray<char> 使用数组字面量创建：验证 char 值类型数组声明和初始化 |
| EXP2_17_03_006_PASS_VALUEARRAY_BOOLEAN_LITERAL | compile-pass | ValueArray<boolean> 使用数组字面量创建：验证 boolean 值类型数组声明和初始化 |
| EXP2_17_03_007_PASS_VALUEARRAY_BYTE_LITERAL | compile-pass | ValueArray<byte> 使用数组字面量创建：验证 byte 值类型数组声明和初始化 |
| EXP2_17_03_008_PASS_VALUEARRAY_SHORT_LITERAL | compile-pass | ValueArray<short> 使用数组字面量创建：验证 short 值类型数组声明和初始化 |
| EXP2_17_03_009_PASS_VALUEARRAY_CONSTRUCTOR_INT | compile-pass | ValueArray<int> 使用构造函数创建：new ValueArray<int>(5, 0) 创建含 5 个零元素的数组 |
| EXP2_17_03_010_PASS_VALUEARRAY_CONSTRUCTOR_DOUBLE | compile-pass | ValueArray<double> 使用构造函数创建：new ValueArray<double>(3, 7.) 创建含 3 个 7.0  |
| EXP2_17_03_011_FAIL_VALUEARRAY_STRING | compile-fail | ValueArray<string> 编译错误：string 不是值类型，ValueArray 的类型参数必须是值类型（byte/short |
| EXP2_17_03_012_FAIL_VALUEARRAY_UNION_TYPE | compile-fail | ValueArray<int|undefined> 编译错误：联合类型不是值类型，ValueArray 的类型参数必须是单一值类型 |
| EXP2_17_03_013_FAIL_VALUEARRAY_OBJECT | compile-fail | ValueArray<Object> 编译错误：Object 不是值类型，ValueArray 的类型参数必须是原始值类型 |
| EXP2_17_03_014_FAIL_VALUEARRAY_TYPE_PARAMETER | compile-fail | ValueArray<T> 编译错误：ValueArray 不是泛型类型，不能使用类型参数 T，必须使用具体值类型 |
| EXP2_17_03_015_FAIL_VALUEARRAY_SUBTYPE | compile-fail | ValueArray<int> 赋值给 ValueArray<long> 编译错误：ValueArray 类型之间不存在子类型关系，除非类型 |
| EXP2_17_03_020_RUNTIME_ELEMENT_VALUES | runtime | 运行时验证 ValueArray<int> 字面量创建后元素值正确 |
| EXP2_17_03_021_RUNTIME_LENGTH | runtime | 运行时验证 ValueArray 的 length 属性正确反映数组元素数量 |
| EXP2_17_03_022_RUNTIME_ELEMENT_MUTATION | runtime | 运行时验证 ValueArray 元素可通过索引修改，且修改后值正确持久化 |
| EXP2_17_03_023_RUNTIME_OUT_OF_BOUNDS | runtime | 运行时验证 ValueArray 越界索引访问的行为（应抛出异常或返回 undefined） |
| EXP2_17_03_024_RUNTIME_CONSTRUCTOR_VALUES | runtime | 运行时验证构造函数创建的 ValueArray 元素值和 length 正确 |

### §17.4.1 Runtime_Evaluation_of_Array_Creation_Expressions（3P + 2F + 7R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_04_01_001_PASS_BASIC_INT_ARRAY_CREATION | compile-pass | 基本 int 数组创建表达式：验证 new int[5] (42) 语法编译通过 |
| EXP2_17_04_01_002_PASS_VARIABLE_DIMENSION | compile-pass | 变量维度数组创建表达式：验证使用变量作为维度参数的数组创建编译通过 |
| EXP2_17_04_01_003_PASS_TYPE_ALIAS_ARRAY_CREATION | compile-pass | type alias 数组创建表达式：验证使用 type alias 作为元素类型的数组创建编译通过 |
| EXP2_17_04_01_010_FAIL_CONST_NEGATIVE_DIM | compile-fail | 常量负维度表达式：验证编译期常量负维度产生 compile-time error |
| EXP2_17_04_01_011_FAIL_FLOAT_DIMENSION | compile-fail | float 维度表达式：验证 float 类型维度表达式产生 compile-time error |
| EXP2_17_04_01_020_RUNTIME_POSITIVE_DIM_CORRECT_LENGTH_AND_ELEMENTS | runtime | 正维度数组创建：验证 new int[5] (42) 创建的数组长度为 5，且所有元素值为 42 |
| EXP2_17_04_01_021_RUNTIME_ZERO_DIM_EMPTY_ARRAY | runtime | 零维度数组创建：验证 new int[0] (0) 创建空数组，长度为 0 |
| EXP2_17_04_01_022_RUNTIME_NEGATIVE_DIM_NEGATIVE_ARRAY_SIZE_ERROR | runtime | 运行时负维度：验证当维度变量为负数时抛出 NegativeArraySizeError |
| EXP2_17_04_01_023_RUNTIME_DIM_EVALUATED_ONCE_SIDE_EFFECT | runtime | 维度表达式仅求值一次：验证维度表达式（含副作用）在数组创建中被求值恰好一次 |
| EXP2_17_04_01_024_RUNTIME_LARGE_DIMENSION | runtime | 大维度数组创建：验证 new int[1000] (0) 创建长度为 1000 的数组 |
| EXP2_17_04_01_025_RUNTIME_DIM_COMPUTATION | runtime | 维度表达式带计算：验证 new int[2+3] (1) 维度计算结果为 5，数组长度正确 |
| EXP2_17_04_01_026_RUNTIME_DIM_EVALUATED_BEFORE_ELEMENT | runtime | 求值顺序：验证维度表达式在元素表达式之前被求值 |

### §17.4 Resizable_Array_Creation_Expressions（9P + 7F + 5R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_04_001_PASS_NUMBER_ARRAY_CREATION | compile-pass | 基本 number 数组创建：验证 new number[3](7) 语法正确编译，创建包含 3 个元素均为 7 的数组 |
| EXP2_17_04_002_PASS_INT_ARRAY_CREATION | compile-pass | int 类型数组创建：验证 new int[5](0) 创建 int 数组，所有元素初始化为 0 |
| EXP2_17_04_003_PASS_STRING_ARRAY_CREATION | compile-pass | string 类型数组创建：验证 new string[3]("hello") 创建 string 数组，所有元素初始化为 "hello" |
| EXP2_17_04_004_PASS_DOUBLE_ARRAY_CREATION | compile-pass | double 类型数组创建：验证 new double[4](3.14) 创建 double 数组，所有元素初始化为 3.14 |
| EXP2_17_04_005_PASS_BOOLEAN_ARRAY_CREATION | compile-pass | boolean 类型数组创建：验证 new boolean[2](true) 创建 boolean 数组，所有元素初始化为 true |
| EXP2_17_04_006_PASS_UNION_TYPE_ARRAY | compile-pass | 联合类型数组创建：验证 new (Object|undefined)[5](undefined) 创建联合类型数组 |
| EXP2_17_04_007_PASS_FUNCTION_TYPE_ARRAY | compile-pass | 函数类型数组创建：type Functor = () => void; new Functor[3]((): void => {}) 创建函 |
| EXP2_17_04_008_PASS_VARIABLE_DIMENSION | compile-pass | 变量维度：维度表达式为 int 类型变量，验证编译通过 |
| EXP2_17_04_009_PASS_EXPRESSION_DIMENSION | compile-pass | 表达式维度：维度为 int 算术表达式（计算结果为正），验证编译通过 |
| EXP2_17_04_010_FAIL_NEGATIVE_CONSTANT_DIMENSION | compile-fail | 负常量维度：new number[-3](0) 维度为编译时可确定的负值，应产生编译时错误 |
| EXP2_17_04_011_FAIL_FLOAT_DIMENSION | compile-fail | 浮点维度：new number[3.14](0) 维度为 double 字面量，不可赋值给 int，应产生编译时错误 |
| EXP2_17_04_012_FAIL_TYPE_PARAMETER_ELEMENT_TYPE | compile-fail | 类型参数作为元素类型：new T[2](element) 在泛型上下文使用类型参数作为数组元素类型，应产生编译时错误 |
| EXP2_17_04_013_FAIL_ELEMENT_TYPE_MISMATCH | compile-fail | 元素类型不匹配：new int[3]("string") 中 string 不可赋值给 int，应产生编译时错误 |
| EXP2_17_04_014_FAIL_STRING_DIMENSION | compile-fail | 字符串维度：new number["hello"](0) 维度为 string 类型，不可赋值给 int，应产生编译时错误 |
| EXP2_17_04_015_FAIL_BOOLEAN_DIMENSION | compile-fail | 布尔维度：new number[true](0) 维度为 boolean 类型，不可赋值给 int，应产生编译时错误 |
| EXP2_17_04_016_FAIL_NULL_DIMENSION | compile-fail | null 维度：new number[null](0) 维度为 null 类型，不可赋值给 int，应产生编译时错误 |
| EXP2_17_04_020_RUNTIME_ARRAY_LENGTH_CHECK | runtime | 数组长度验证：验证通过 array creation expression 创建的数组具有正确的长度 |
| EXP2_17_04_021_RUNTIME_ELEMENT_INIT_CHECK | runtime | 元素初始化验证：验证 array creation expression 中所有元素均被正确初始化为指定值 |
| EXP2_17_04_022_RUNTIME_UNION_TYPE_ARRAY | runtime | 联合类型数组运行时验证：验证 new (Object|undefined)[5](undefined) 在运行时正确创建 |
| EXP2_17_04_023_RUNTIME_FUNCTION_TYPE_ARRAY | runtime | 函数类型数组运行时验证：验证函数类型数组在运行时正确创建且元素可调用 |
| EXP2_17_04_024_RUNTIME_NEGATIVE_DIMENSION_ERROR | runtime | 运行时负维度错误：维度表达式在运行时计算为负值时，应抛出 NegativeArraySizeError |

### §17.5 Indexable_Types（8P + 4F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_05_001_PASS_BASIC_GET_SET | compile-pass | 类声明 $_get 和 $_set 方法，使用 int 类型索引进行读写。验证基本的索引语法编译通过 |
| EXP2_17_05_002_PASS_GET_ONLY | compile-pass | 类仅声明 $_get（无 $_set），启用只读索引。验证读操作可用 |
| EXP2_17_05_003_PASS_SET_ONLY | compile-pass | 类仅声明 $_set（无 $_get），启用只写索引。验证写操作可用 |
| EXP2_17_05_004_PASS_INTERFACE_IMPL | compile-pass | 接口声明抽象的 $_get 和 $_set，实现类提供具体方法体。验证接口中定义索引方法的编译通过 |
| EXP2_17_05_005_PASS_OVERRIDE | compile-pass | 父类定义 $_get，子类重写（override）$_get 提供不同实现 |
| EXP2_17_05_006_PASS_GENERIC_CLASS | compile-pass | 泛型类中使用 $_get/$_set，类型参数 T 用于索引返回值和方法参数 |
| EXP2_17_05_007_PASS_STRING_INDEX | compile-pass | 使用 string 类型作为索引参数。验证 x["key"] 语法编译通过 |
| EXP2_17_05_008_PASS_OVERLOAD | compile-pass | $_get 重载：使用抽象类声明多个 $_get 签名，子类实现。验证索引方法重载语法 |
| EXP2_17_05_010_FAIL_ASYNC_GET | compile-fail | $_get 方法标记为 async 应产生编译时错误 |
| EXP2_17_05_011_FAIL_ASYNC_SET | compile-fail | $_set 方法标记为 async 应产生编译时错误 |
| EXP2_17_05_012_FAIL_READ_ONLY_WRITE | compile-fail | 类仅声明 $_get（无 $_set），尝试通过索引写操作 x[i] = v 应产生编译错误 |
| EXP2_17_05_013_FAIL_WRITE_ONLY_READ | compile-fail | 类仅声明 $_set（无 $_get），尝试通过索引读操作 v = x[i] 应产生编译错误 |
| EXP2_17_05_020_RUNTIME_BASIC_INDEX | runtime | 运行时验证 $_get 和 $_set 实际被调用，索引读写返回正确值 |
| EXP2_17_05_021_RUNTIME_STRING_INDEX | runtime | 运行时验证字符串键索引，$_get/$_set 使用 string 索引参数 |
| EXP2_17_05_022_RUNTIME_GENERIC_INDEX | runtime | 运行时验证泛型类中的索引操作，使用 int 类型和 string 类型参数化 |

### §17.6 Iterable_Types（9P + 3F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_06_001_PASS_CLASS_IMPLEMENTS_ITERABLE | compile-pass | 类实现 Iterable<number> 接口，定义 $_iterator() 方法返回 Iterator<number> 子类型，编译器应 |
| EXP2_17_06_002_PASS_FOR_OF_CUSTOM_ITERABLE | compile-pass | 自定义 Iterable 类用于 for-of 语句，编译器应通过 |
| EXP2_17_06_003_PASS_FOR_OF_ARRAY_ITERABLE | compile-pass | 数组类型（T[]）是内置可迭代类型，可直接用于 for-of 语句，编译器应通过 |
| EXP2_17_06_004_PASS_FOR_OF_STRING_ITERABLE | compile-pass | 字符串类型是内置可迭代类型，可直接用于 for-of 语句，编译器应通过 |
| EXP2_17_06_005_PASS_INTERFACE_EXTENDS_ITERABLE | compile-pass | 接口可以扩展 Iterable<T>，在其中声明 $_iterator()，编译应通过 |
| EXP2_17_06_006_PASS_UNION_ITERABLE | compile-pass | 可迭代类型的联合类型也是可迭代的，编译器应通过 |
| EXP2_17_06_007_PASS_OVERRIDE_ITERATOR | compile-pass | 子类可以覆盖父类的 $_iterator() 方法，编译器应通过 |
| EXP2_17_06_008_PASS_GENERIC_ITERABLE | compile-pass | 泛型类实现泛型 Iterable<T>，编译器应通过 |
| EXP2_17_06_009_PASS_ABSTRACT_ITERATOR_INTERFACE | compile-pass | 接口中定义抽象 $_iterator() 方法，由实现类提供具体实现，编译器应通过 |
| EXP2_17_06_010_FAIL_ASYNC_ITERATOR | compile-fail | $_iterator() 方法标记为 async 应产生编译时错误（spec 规定 $_iterator 不能是 async） |
| EXP2_17_06_011_FAIL_ITERABLE_NO_ITERATOR | compile-fail | 类声明 implements Iterable<T> 但未定义 $_iterator() 方法，应产生编译时错误 |
| EXP2_17_06_012_FAIL_ITERATOR_WRONG_RETURN | compile-fail | $_iterator() 方法返回类型不是 Iterator<T> 的子类型，应产生编译时错误 |
| EXP2_17_06_013_RUNTIME_FOR_OF_ARRAY_VERIFY | runtime | 运行时验证 for-of 遍历数组类型（内置可迭代），验证元素值和迭代顺序 |
| EXP2_17_06_014_RUNTIME_FOR_OF_STRING_VERIFY | runtime | 运行时验证 for-of 遍历字符串类型（内置可迭代），验证每个字符 |
| EXP2_17_06_015_RUNTIME_FOR_OF_CUSTOM_VERIFY | runtime | 运行时验证自定义 Iterable 类的 for-of 迭代行为，验证迭代值和终止条件 |

### §17.7.1 Callable_Types_with_invoke_Method（8P + 3F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_07_01_001_PASS_SIMPLE_INVOKE_NO_PARAMS | compile-pass | 定义无参数的 static $_invoke 方法，使类成为可调用类型。短形式 ClassName() 和显式 ClassName.$_in |
| EXP2_17_07_01_002_PASS_INVOKE_WITH_PARAMS | compile-pass | 定义有参数有返回值的 static $_invoke 方法，验证类型调用表达式接受对应参数并返回值。包含 int 加法、string 拼接两 |
| EXP2_17_07_01_003_PASS_MULTIPLE_OVERLOADS | compile-pass | 定义多个不同签名的 static $_invoke 重载（不同参数数量、不同类型），验证编译器根据参数推断正确的重载。 |
| EXP2_17_07_01_004_PASS_EXPLICIT_CALL | compile-pass | 显式调用 ClassName.$_invoke(args)，验证与短形式 ClassName(args) 等价。同时验证两种形式可在同一文件 |
| EXP2_17_07_01_005_PASS_VOID_RETURN | compile-pass | 定义返回 void 的 static $_invoke 方法，验证 void 返回类型在类型调用表达式中的使用。 |
| EXP2_17_07_01_006_PASS_COMPLEX_PARAMS | compile-pass | 定义接受复杂参数类型（数组、boolean、多参数）的 static $_invoke 方法。 |
| EXP2_17_07_01_007_PASS_GENERIC_CLASS | compile-pass | 在泛型类中定义 static $_invoke 方法，但 $_invoke 不使用泛型类型参数（static 方法不能访问类型参数）。 |
| EXP2_17_07_01_008_PASS_INSTANCE_INVOKE_DEFINED | compile-pass | 在类中定义实例 $_invoke 方法（非 static）。根据 spec，实例 $_invoke 不会使类成为可调用类型，但定义本身合法。 |
| EXP2_17_07_01_009_FAIL_BOTH_INVOKE_AND_INSTANTIATE | compile-fail | 根据 spec，一个类不能同时定义 $_invoke 和 $_instantiate 方法。同时定义两者应产生编译时错误。 |
| EXP2_17_07_01_010_FAIL_INSTANCE_INVOKE_NOT_CALLABLE | compile-fail | 根据 spec，实例 $_invoke 方法不会使类成为可调用类型。尝试以 ClassName() 调用仅含实例 $_invoke 的类应产 |
| EXP2_17_07_01_011_FAIL_GENERIC_USE_TYPE_PARAM | compile-fail | 根据 spec，static $_invoke 不能访问泛型类型参数。在泛型类的 $_invoke 签名或实现中使用类型参数应产生编译时错误 |
| EXP2_17_07_01_012_RUNTIME_SHORT_FORM_CALL | runtime | 运行时验证：短形式 ClassName(args) 和显式 ClassName.$_invoke(args) 产生相同结果。通过 int 加 |
| EXP2_17_07_01_013_RUNTIME_OVERLOAD_SELECT | runtime | 运行时验证：多个 $_invoke 重载在运行时根据参数类型和数量选择正确的重载。包含无参、int、string、双 int 四种重载。 |
| EXP2_17_07_01_014_RUNTIME_NEW_VS_INVOKE | runtime | 运行时验证：new ClassName() 调用构造函数而非 $_invoke。使用计数器区分两种调用路径。 |

### §17.7.2 Callable_Types_with_instantiate_Method（6P + 4F + 4R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_07_02_001_PASS_BASIC_INSTANTIATE | compile-pass | 基本 $_instantiate 声明：静态方法，第一参数为工厂函数 () => ClassType，类有无参数构造函数以支持隐式工厂 |
| EXP2_17_07_02_002_PASS_ADDITIONAL_PARAMS | compile-pass | $_instantiate 带有额外参数：短格式 C("arg") 自动传递额外参数，第一参数工厂由编译器隐式提供 |
| EXP2_17_07_02_003_PASS_EXPLICIT_CALL | compile-pass | 显式调用 $_instantiate：C.$_instantiate(factory, ...) 显式传递自定义工厂函数 |
| EXP2_17_07_02_004_PASS_MULTIPLE_OVERLOADS | compile-pass | 多个 $_instantiate 声明（重载）：不同参数列表是合法的重载 |
| EXP2_17_07_02_005_PASS_VOID_RETURN | compile-pass | $_instantiate 返回 void：声明为 void 返回类型的 $_instantiate，短格式调用合法 |
| EXP2_17_07_02_006_PASS_GENERIC_CLASS | compile-pass | 泛型类中的 $_instantiate：静态方法不能引用类泛型类型参数，必须使用具体类型 |
| EXP2_17_07_02_007_FAIL_NO_FACTORY_PARAM | compile-fail | $_instantiate 第一参数必须为工厂函数 () => ClassType，第一参数不是工厂类型时短格式 C() 调用应产生编译时错 |
| EXP2_17_07_02_008_FAIL_NO_PARAMETERLESS_CONSTRUCTOR | compile-fail | 类没有无参数构造函数时，短格式 C() 调用因编译器无法生成隐式工厂而产生编译时错误 |
| EXP2_17_07_02_009_FAIL_SAME_PARAMS_DIFF_RETURN | compile-fail | 多个 $_instantiate 签名相同（相同参数列表）但返回类型不同时，应产生编译时错误 |
| EXP2_17_07_02_010_FAIL_GENERIC_TYPE_PARAM_ACCESS | compile-fail | $_instantiate 是静态方法，不能访问泛型类的类型参数。在 $_instantiate 签名中引用类泛型类型参数应编译失败 |
| EXP2_17_07_02_011_RUNTIME_BASIC_VERIFICATION | runtime | 运行时验证：$_instantiate 基本调用 C() 和 C.$_instantiate 返回正确实例 |
| EXP2_17_07_02_012_RUNTIME_ADDITIONAL_PARAMS | runtime | 运行时验证：$_instantiate 额外参数流正确，短格式 C("arg1", "arg2") 传递参数 |
| EXP2_17_07_02_013_RUNTIME_EXPLICIT_FACTORY | runtime | 运行时验证：显式工厂函数 vs 隐式工厂函数；自定义工厂在 $_instantiate 中以同等方式处理 |
| EXP2_17_07_02_014_RUNTIME_OVERLOAD_DISPATCH | runtime | 运行时验证：多个 $_instantiate 重载正确分发；不同参数调用分发到不同的 $_instantiate 版本 |

### §17.7 Callable_Types（7P + 4F + 6R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_07_001_PASS_BASIC_INVOKE_NOARGS | compile-pass | 类声明 static $_invoke(): int 后，类名可直接作为函数调用 C()，等价于 C.$_invoke() |
| EXP2_17_07_002_PASS_BASIC_INVOKE_WITH_ARGS | compile-pass | 类声明 static $_invoke(a: int, b: int): int，类名可直接作为带参函数调用 |
| EXP2_17_07_003_PASS_BASIC_INSTANTIATE_NOARGS | compile-pass | 类声明 static $_instantiate(f: () => Self): Self，类名可作为工厂函数调用 C() |
| EXP2_17_07_004_PASS_BASIC_INSTANTIATE_WITH_ARGS | compile-pass | 类声明 static $_instantiate(f: () => Self, name: string): Self，带参工厂调用 |
| EXP2_17_07_005_PASS_MULTIPLE_INVOKE_OVERLOADS | compile-pass | 类可拥有多个不同签名的 $_invoke 重载实现 |
| EXP2_17_07_006_PASS_MULTIPLE_INSTANTIATE_OVERLOADS | compile-pass | 类可拥有多个不同签名的 $_instantiate 重载实现，每个需带工厂参数 |
| EXP2_17_07_007_PASS_EXPLICIT_INVOKE_AND_INSTANTIATE | compile-pass | 显式调用形式 C.$_invoke() 和 C.$_instantiate() 也是合法调用 |
| EXP2_17_07_008_FAIL_BOTH_INVOKE_AND_INSTANTIATE | compile-fail | 一个类不能同时拥有 $_invoke 和 $_instantiate，应产生编译时错误 |
| EXP2_17_07_009_FAIL_INSTANCE_INVOKE_NOT_CALLABLE | compile-fail | 只有 static $_invoke 使类可调用；实例 $_invoke（非 static）不使类变为可调用 |
| EXP2_17_07_010_FAIL_STATIC_INVOKE_USES_GENERIC_T | compile-fail | 静态 $_invoke 不能访问泛型类的类型参数 T |
| EXP2_17_07_011_FAIL_NO_INVOKE_CLASS_NOT_CALLABLE | compile-fail | 没有声明 $_invoke 或 $_instantiate 的普通类不可作为函数调用 |
| EXP2_17_07_012_RUNTIME_INVOKE_RETURN_VALUE | runtime | 通过 C() 简写调用 $_invoke，返回值正确 |
| EXP2_17_07_013_RUNTIME_INSTANTIATE_RETURN_INSTANCE | runtime | 通过 C() 简写调用 $_instantiate(factory)，返回正确类实例 |
| EXP2_17_07_014_RUNTIME_INVOKE_OVERLOAD_RESOLUTION | runtime | 多个 $_invoke 重载根据参数正确分发 |
| EXP2_17_07_015_RUNTIME_NEW_VS_INVOKE | runtime | new C(args) 调用构造函数，而非 $_invoke/$_instantiate |
| EXP2_17_07_016_RUNTIME_EXPLICIT_VS_SHORT | runtime | 显式调用 C.$_invoke() 与简写 C() 行为一致 |
| EXP2_17_07_017_RUNTIME_INSTANTIATE_WITH_PARAMS | runtime | $_instantiate 带参工厂根据参数配置返回实例 |

### §17.8.1 For_of_Explicit_Type_Annotation（7P + 3F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_08_01_001_PASS_FOR_OF_INT_EXPLICIT_TYPE | compile-pass | for-of 循环变量显式标注 int 类型遍历 int[] 数组：验证标注类型与元素类型完全匹配时编译通过 |
| EXP2_17_08_01_002_PASS_FOR_OF_STRING_EXPLICIT_TYPE | compile-pass | for-of 循环变量显式标注 string 类型遍历 string[] 数组：验证标注类型与元素类型匹配 |
| EXP2_17_08_01_003_PASS_FOR_OF_NUMBER_ON_DOUBLE_ARRAY | compile-pass | for-of 循环变量显式标注 number 类型遍历 double[] 数组：number 是 double 的别名，类型兼容 |
| EXP2_17_08_01_004_PASS_FOR_OF_OBJECT_ON_INT_ARRAY | compile-pass | for-of 循环变量显式标注 Object 类型遍历 int[] 数组：int 可通过装箱赋值给 Object |
| EXP2_17_08_01_005_PASS_FOR_OF_ANY_ON_MIXED_ARRAY | compile-pass | for-of 循环变量显式标注 Any 类型遍历任意类型数组：Any 是顶类型，接受一切值 |
| EXP2_17_08_01_006_PASS_FOR_OF_UNION_TYPE | compile-pass | for-of 循环变量显式标注联合类型 int|string 遍历联合类型数组：标注类型与元素类型匹配 |
| EXP2_17_08_01_007_PASS_FOR_OF_STANDARD_NO_TYPE | compile-pass | 标准 for-of 循环无显式类型标注（对照）：验证标准 for-of 形式仍然正常工作 |
| EXP2_17_08_01_008_FAIL_FOR_OF_STRING_ON_INT_ARRAY | compile-fail | for-of 循环变量显式标注 string 类型遍历 int[] 数组：int 不能赋值给 string，应产生编译时错误 |
| EXP2_17_08_01_009_FAIL_FOR_OF_INT_ON_STRING_ARRAY | compile-fail | for-of 循环变量显式标注 int 类型遍历 string[] 数组：string 不能赋值给 int，应产生编译时错误 |
| EXP2_17_08_01_010_FAIL_FOR_OF_CHAR_ON_INT_ARRAY | compile-fail | for-of 循环变量显式标注 char 类型遍历 int[] 数组：char 与 int 不直接兼容（char 不能从 int 赋值），应 |
| EXP2_17_08_01_011_RUNTIME_FOR_OF_INT_EXPLICIT_ITERATE | runtime | for-of 显式 int 类型遍历 int[]：运行时验证每次迭代值和循环总次数 |
| EXP2_17_08_01_012_RUNTIME_FOR_OF_ANY_EXPLICIT_ITERATE | runtime | for-of 显式 Any 类型遍历混合数组：运行时验证不同类型的元素均能正确迭代 |
| EXP2_17_08_01_013_RUNTIME_FOR_OF_OBJECT_EXPLICIT_ITERATE | runtime | for-of 显式 Object 类型遍历 int[]：运行时验证 int 装箱为 Object，迭代正常 |

### §17.8 Statements（10P + 2F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_08_001_PASS_IF_ELSE | compile-pass | 验证 if / if-else / if-else if-else 多分支条件语句在 ArkTS 中编译通过 |
| EXP2_17_08_002_PASS_WHILE_LOOP | compile-pass | 验证 while 循环在 ArkTS 中编译通过 |
| EXP2_17_08_003_PASS_DO_WHILE_LOOP | compile-pass | 验证 do-while 循环在 ArkTS 中编译通过 |
| EXP2_17_08_004_PASS_FOR_LOOP | compile-pass | 验证标准 for 循环在 ArkTS 中编译通过 |
| EXP2_17_08_005_PASS_FOR_OF_ARRAY | compile-pass | 验证 for-of 遍历数组在 ArkTS 中编译通过 |
| EXP2_17_08_006_PASS_FOR_OF_STRING | compile-pass | 验证 for-of 遍历字符串在 ArkTS 中编译通过 |
| EXP2_17_08_007_PASS_SWITCH_STATEMENT | compile-pass | 验证 switch 语句（整数匹配、字符串匹配、含 default、含 break）在 ArkTS 中编译通过 |
| EXP2_17_08_008_PASS_BREAK_CONTINUE | compile-pass | 验证 break 和 continue 在循环中正常编译通过 |
| EXP2_17_08_009_PASS_RETURN_STATEMENT | compile-pass | 验证 return 语句在 ArkTS 中编译通过 |
| EXP2_17_08_010_PASS_TRY_CATCH_FINALLY | compile-pass | 验证 try-catch-finally 异常处理在 ArkTS 中编译通过 |
| EXP2_17_08_011_FAIL_BREAK_OUTSIDE_LOOP | compile-fail | break 只能在循环（while/do-while/for/for-of/for-in）或 switch 中使用，在循环和 switch  |
| EXP2_17_08_012_FAIL_CONTINUE_OUTSIDE_LOOP | compile-fail | continue 只能在循环体（while/do-while/for/for-of/for-in）中使用，在循环外使用应产生编译错误 |
| EXP2_17_08_013_RUNTIME_LOOP_EXECUTION | runtime | 验证 for/while/do-while 循环的运行时执行行为 |
| EXP2_17_08_014_RUNTIME_FOR_OF_ITERATION | runtime | 验证 for-of 遍历数组和字符串的运行时行为 |
| EXP2_17_08_015_RUNTIME_SWITCH_FLOW | runtime | 验证 switch 语句和条件分支的运行时行为 |

### §17.9.1 Explicit_Function_Overload（7P + 7F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_09_1_001_PASS_FUNCOVERLOAD_BASICTYPES | compile-pass | overload 函数重载：不同参数类型(int/string/boolean/double) |
| EXP2_17_09_1_002_PASS_FUNCOVERLOAD_DIFFERENTPARAMCOUNT | compile-pass | overload 函数重载：不同参数数量(0/1/2/3 参数) |
| EXP2_17_09_1_003_PASS_FUNCOVERLOAD_EXPORT | compile-pass | 导出 overload：所有重载函数必须导出 |
| EXP2_17_09_1_004_PASS_FUNCOVERLOAD_GENERIC | compile-pass | overload 中包含泛型函数 |
| EXP2_17_09_1_005_PASS_FUNCOVERLOAD_MULTIOVERLOAD | compile-pass | 一个函数可以出现在多个 overload 声明中 |
| EXP2_17_09_1_006_PASS_FUNCOVERLOAD_NAMESAMEASFUNC | compile-pass | overload 名与某个重载函数同名（该函数在列表中） |
| EXP2_17_09_1_007_PASS_FUNCOVERLOAD_RETURNTYPEDIFF | compile-pass | overload 函数可以有不同返回类型 |
| EXP2_17_09_1_008_FAIL_FUNCOVERLOAD_ASFUNCREF | compile-fail | overload 名不在 Function Reference 中考虑 |
| EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY | compile-fail | overload 声明的函数列表不能为空 |
| EXP2_17_09_1_010_FAIL_FUNCOVERLOAD_EXPORTNOTALL | compile-fail | 导出 overload 但某个重载函数未导出 — 编译错误 |
| EXP2_17_09_1_011_FAIL_FUNCOVERLOAD_NAMECONFLICT | compile-fail | overload 名与函数名相同但函数不在列表中 — 编译错误（另一变体） |
| EXP2_17_09_1_012_FAIL_FUNCOVERLOAD_NAMESAMENOTINLIST | compile-fail | overload 名与函数名相同但该函数不在列表中 — 编译错误 |
| EXP2_17_09_1_013_FAIL_FUNCOVERLOAD_NOACCESSIBLEFUNC | compile-fail | overload identifier 引用不存在的函数 — 编译错误 |
| EXP2_17_09_1_014_FAIL_FUNCOVERLOAD_WRONGPARAMTYPE | compile-fail | 调用 overload 但参数类型不匹配任何重载 — 编译错误 |
| EXP2_17_09_1_015_RUNTIME_FUNCOVERLOAD_DIFFPARAMCOUNT | runtime | overload 按参数数量区分 |
| EXP2_17_09_1_016_RUNTIME_FUNCOVERLOAD_ORDERDISPATCH | runtime | overload 按声明顺序匹配，第一个匹配签名的候选胜出 |
| EXP2_17_09_1_017_RUNTIME_FUNCOVERLOAD_RETURNVALUE | runtime | overload 调用返回正确值 |

### §17.9.2 Explicit_Class_Method_Overload（8P + 7F + 3R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_09_2_001_PASS_METHODOVERLOAD_ASYNC | compile-pass | async overload 包含 async 方法 |
| EXP2_17_09_2_002_PASS_METHODOVERLOAD_BASIC | compile-pass | 类方法 overload 基本声明和调用 |
| EXP2_17_09_2_003_PASS_METHODOVERLOAD_MULTIOVERLOAD | compile-pass | 同一个类中可以有多个 overload 声明 |
| EXP2_17_09_2_004_PASS_METHODOVERLOAD_OVERRIDEADD | compile-pass | 子类覆盖 overload 时可添加新方法 |
| EXP2_17_09_2_005_PASS_METHODOVERLOAD_OVERRIDE | compile-pass | 子类覆盖父类 overload，必须列出所有父类方法 |
| EXP2_17_09_2_006_PASS_METHODOVERLOAD_PUBLICACCESS | compile-pass | public overload → 所有方法必须 public |
| EXP2_17_09_2_007_PASS_METHODOVERLOAD_SPECIALNAMES | compile-pass | overload 可包含 $_get, $_set 等特殊名称方法 |
| EXP2_17_09_2_008_PASS_METHODOVERLOAD_STATIC | compile-pass | static overload 包含 static 方法 |
| EXP2_17_09_2_009_FAIL_METHODOVERLOAD_ACCESSMISMATCH | compile-fail | protected overload 不能包含 private 方法 — 编译错误 |
| EXP2_17_09_2_010_FAIL_METHODOVERLOAD_ASYNCMISMATCH | compile-fail | async overload 不能包含非 async 方法 — 编译错误 |
| EXP2_17_09_2_011_FAIL_METHODOVERLOAD_INSTANCEMISMATCH | compile-fail | 实例 overload 不能包含 static 方法 — 编译错误 |
| EXP2_17_09_2_012_FAIL_METHODOVERLOAD_NAMECONFLICT | compile-fail | overload 名与方法同名但方法不在列表中 — 编译错误 |
| EXP2_17_09_2_013_FAIL_METHODOVERLOAD_OVERRIDEMISSING | compile-fail | 子类覆盖 overload 但缺少父类方法 — 编译错误 |
| EXP2_17_09_2_014_FAIL_METHODOVERLOAD_STATICMISMATCH | compile-fail | static overload 不能包含非 static 方法 — 编译错误 |
| EXP2_17_09_2_015_FAIL_METHODOVERLOAD_SYNCASYNCMISMATCH | compile-fail | 非 async overload 不能包含 async 方法 |
| EXP2_17_09_2_016_RUNTIME_METHODOVERLOAD_INSTANCEDISPATCH | runtime | 类实例方法 overload 运行时调度 |
| EXP2_17_09_2_017_RUNTIME_METHODOVERLOAD_OVERRIDEDISPATCH | runtime | 子类覆盖 overload 后运行时调用子类方法 |
| EXP2_17_09_2_018_RUNTIME_METHODOVERLOAD_STATICDISPATCH | runtime | static overload 运行时调度 |

### §17.9.3 Explicit_Interface_Method_Overload（6P + 3F + 1R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_09_3_001_PASS_INTERFACEOVERLOAD_ABSTRACTCLASS | compile-pass | 抽象类实现接口但声明为 abstract，不实现方法 |
| EXP2_17_09_3_002_PASS_INTERFACEOVERLOAD_ADDMETHOD | compile-pass | override 接口 overload 时可添加新方法 |
| EXP2_17_09_3_003_PASS_INTERFACEOVERLOAD_BASIC | compile-pass | 接口中 overload 声明 |
| EXP2_17_09_3_004_PASS_INTERFACEOVERLOAD_IMPLEMENTS | compile-pass | 实现类 override 接口 overload，包含所有方法 |
| EXP2_17_09_3_005_PASS_INTERFACEOVERLOAD_INHERIT | compile-pass | 实现类不 override，继承接口 overload |
| EXP2_17_09_3_006_PASS_INTERFACEOVERLOAD_MULTIPLEINTERFACES | compile-pass | 实现多个接口，各有不同的 overload |
| EXP2_17_09_3_007_FAIL_INTERFACEOVERLOAD_DUPLICATEOVERLOAD | compile-fail | 多接口继承同名 overload 但实现类未 override — 编译错误 |
| EXP2_17_09_3_008_FAIL_INTERFACEOVERLOAD_NOTIMPLEMENTALL | compile-fail | 实现接口 overload 但未实现该方法 — 编译错误 |
| EXP2_17_09_3_009_FAIL_INTERFACEOVERLOAD_OVERRIDEMISSING | compile-fail | 实现类 override 接口 overload 但缺少方法 — 编译错误 |
| EXP2_17_09_3_010_RUNTIME_INTERFACEOVERLOAD_DISPATCH | runtime | 通过接口类型调用 overload |

### §17.9.4 Explicit_Overload_Name_Same_As_Method_Name（5P + 2F + 1R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_09_4_001_PASS_NAMECONFLICT_CROSSINHERITANCE | compile-pass | overload 名与父类方法同名，跨继承层次工作 |
| EXP2_17_09_4_002_PASS_NAMECONFLICT_METHODREF | compile-pass | overload 名与实际方法名共存，可分别使用 |
| EXP2_17_09_4_003_PASS_NAMECONFLICT_NOAMBIGUITY | compile-pass | overload 名不在 overriding 中考虑，不产生歧义 |
| EXP2_17_09_4_004_PASS_NAMECONFLICT_OVERLOADNAMESAMEASMETHOD | compile-pass | overload 名与某个方法名相同（该方法在列表中） |
| EXP2_17_09_4_005_PASS_NAMECONFLICT_SAMENAMEINTERFACE | compile-pass | 接口中 overload 名与接口方法同名 |
| EXP2_17_09_4_006_FAIL_NAMECONFLICT_CROSSINHERITANCEFAIL | compile-fail | 跨继承层次，父类方法不在子类 overload 列表中 — 编译错误 |
| EXP2_17_09_4_007_FAIL_NAMECONFLICT_METHODNOTINLIST | compile-fail | 同名方法存在但不在 overload 列表中 — 编译错误 |
| EXP2_17_09_4_008_RUNTIME_NAMECONFLICT_DISPATCH | runtime | overload 名与方法同名时不产生歧义，运行时正确分发 |

### §17.9.5 Explicit_Constructor_Overload（7P + 3F + 2R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_09_5_001_PASS_CTOROVERLOAD_ANONYMOUSIMPLICITFIRST | compile-pass | 匿名构造函数隐式放在列表首位 |
| EXP2_17_09_5_002_PASS_CTOROVERLOAD_BASIC | compile-pass | 构造函数 overload 基本声明（命名构造函数在列表中，匿名构造函数隐式优先） |
| EXP2_17_09_5_003_PASS_CTOROVERLOAD_DIFFERENTPARAMCOUNT | compile-pass | 多个构造函数按参数数量区分 |
| EXP2_17_09_5_004_PASS_CTOROVERLOAD_DIFFERENTPARAMTYPES | compile-pass | 多个构造函数按参数类型区分 |
| EXP2_17_09_5_005_PASS_CTOROVERLOAD_GENERICCLASS | compile-pass | 泛型类中的 overload constructor |
| EXP2_17_09_5_006_PASS_CTOROVERLOAD_INHERITANCE | compile-pass | 子类继承父类，子类自身有 overload constructor |
| EXP2_17_09_5_007_PASS_CTOROVERLOAD_NAMEDCONSTRUCTORS | compile-pass | overload constructor 包含命名构造函数 |
| EXP2_17_09_5_008_FAIL_CTOROVERLOAD_EMPTYLIST | compile-fail | overload constructor 列表不能为空 |
| EXP2_17_09_5_009_FAIL_CTOROVERLOAD_NOMATCHINGCTOR | compile-fail | 调用 constructor overload 但无匹配签名 — 编译错误 |
| EXP2_17_09_5_010_FAIL_CTOROVERLOAD_TWODECLARATIONS | compile-fail | 每个类只能有一个显式 constructor overload — 编译错误 |
| EXP2_17_09_5_011_RUNTIME_CTOROVERLOAD_ORDERPRIORITY | runtime | 匿名构造函数隐式放在列表首位，声明顺序决定匹配优先级 |
| EXP2_17_09_5_012_RUNTIME_CTOROVERLOAD_RESOLUTION | runtime | constructor overload 运行时解析到正确构造函数 |

### §17.9 Explicit_Overload_Declarations（5P + 2F + 1R）

| 用例 ID | 分类 | 测试内容 |
|---------|------|---------|
| EXP2_17_09_001_PASS_OVERLOAD_BASICFUNC | compile-pass | 基本 overload 函数声明 — 编译时多态 |
| EXP2_17_09_002_PASS_OVERLOAD_EXPLICITIMPLICIT | compile-pass | 可结合显式和隐式重载 |
| EXP2_17_09_003_PASS_OVERLOAD_GENERIC | compile-pass | overload 可使用泛型实体，显式类型参数可缩小候选范围 |
| EXP2_17_09_004_PASS_OVERLOAD_MULTIENTITY | compile-pass | 一个实体可出现在多个 overload 声明中 |
| EXP2_17_09_005_PASS_OVERLOAD_ORDERED | compile-pass | overload 按声明顺序检查匹配 |
| EXP2_17_09_006_FAIL_OVERLOAD_NOMATCHINGSIGNATURE | compile-fail | 调用 overload 但无匹配签名 — 编译时错误 |
| EXP2_17_09_007_FAIL_OVERLOAD_SYNTAXERROR | compile-fail | overload 声明语法错误 |
| EXP2_17_09_008_RUNTIME_OVERLOAD_ORDERRESOLUTION | runtime | overload 在运行时按声明顺序解析 |

---
## 命名规范
前缀 `EXP2_`；格式 `EXP2_17_<节>_<子节>_<序号>_<PASS|FAIL|RUNTIME>_<描述>`；子章节内连续编号（pass 001起 → fail 接续 → runtime 接续）。
