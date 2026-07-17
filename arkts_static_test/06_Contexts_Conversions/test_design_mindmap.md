# 06 Contexts and Conversions Test Design Mindmap

## 覆盖汇总

- 总用例数：263（111P + 60F + 92R）
- 覆盖章节：6.1 ~ 6.5 全部上下文与转换规则
- 测试类别：compile-pass / compile-fail / runtime

## Subtopics

### 6.1 Assignment-like Contexts
- declaration contexts: variable / const / field
- assignment contexts: variable / field
- call contexts: function / method / constructor
- return contexts
- composite literal contexts: array / object
- widening pass and narrowing fail
- runtime integration

### 6.2 String Operator Contexts
- string + integer / float / boolean / null / undefined
- enum string conversion and non-string enum toString
- reference toString conversion
- union nullish conversion
- invalid non-string `+` combinations
- runtime string value verification

### 6.3 Numeric Operator Contexts
- unary / exponentiation / multiplicative / additive / shift
- relational / equality / bitwise / logical / conditional contexts
- enum numeric context
- invalid string/boolean/string-enum numeric operations
- compound assignment and runtime value checks

### 6.3.1 Numeric Conversions for Relational and Equality Operands
- int/long/double/short combinations
- enum relational and equality
- negative/boundary values
- all relational operators
- invalid nonnumeric comparisons

### 6.3.2 char Conversions for Relational and Equality Operands
- char with byte/int/long/double/char
- char boundary and negative comparisons
- invalid char with nonnumeric/nonchar targets

### 6.4 Implicit Conversions
- widening numeric
- enum to numeric/string
- widening to union
- conversion chains
- nullish/boolean string conversions
- invalid narrowing / wrong-context conversions

### 6.4.1 Widening Numeric Conversions
- byte -> short/int/long/float/double
- short -> int/long/float/double
- int -> long/float/double
- long -> float/double
- float -> double
- invalid narrowing paths

### 6.4.2 Widening Numeric to a Union Type
- literal inference before widening
- subtyping before widening
- unique larger member conversion
- call/return/assignment contexts
- ambiguous or no-candidate failures

### 6.4.3 Enumeration to Numeric Type Conversion
- int enum to int/long/double/number/union
- double enum to double
- enum in call/return/arithmetic contexts
- invalid string enum to numeric

### 6.4.4 Enumeration to string Type Conversion
- string enum to string / string union
- call/return/assignment contexts
- invalid numeric/string enum target combinations

### 6.5 Numeric Casting Conversions
- `.toInt()` / `.toLong()` / `.toFloat()` / `.toDouble()` / `.toByte()`
- double -> int round-toward-zero
- integer truncation
- chained conversions
- invalid nonnumeric `.toXxx()`

## 当前未解决问题

详见 `issue_report.md`，主要集中在 float literal、numeric `as` cast、void string conversion、union widening 规则、char/string-enum 语义边界。
