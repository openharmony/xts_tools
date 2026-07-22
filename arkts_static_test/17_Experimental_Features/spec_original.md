# 17 Experimental Features - Spec Extract

Source: ArkTS static language specification, Chapter 17. Experimental Features (Release 1.2.1-alpha TECHNICAL PREVIEW 10)

## Subchapters

### 17.1 Type `char`
- Values: 16-bit Unicode code units (U+0000 to U+FFFF)
- Class type, subtype of Object
- `let a_char: char = c'a'`; `let o: Object = a_char` // OK

### 17.1.1 `char` Literals
- Syntax: `c'X'` — 16-bit Unicode code unit
- Valid: `c'a'`, `c'\n'`, `c'\x7F'`
- Error if > 16-bit: `c'\u{FFFFF}'`

### 17.1.2 `char` Operations
- Equality/relational: char×char, char×numeric
- char×char: unsigned 16-bit integer comparison

### 17.2 Fixed-Size Array Types
- `FixedArray<T>`, length immutable, no methods, not compatible with Array

### 17.2.1 Fixed-Size Array Creation
- Array Literal or `constructor(len: int, elem: T)`

### 17.3 Value Array Types
- `ValueArray<T>`, T must be value type, primitive storage

### 17.4 Resizable Array Creation
- `new arrayElementType[dimension](element)`

### 17.5 Indexable Types
- `$_get`/`$_set` methods enable `x[i]` / `x[i] = v` syntax

### 17.6 Iterable Types
- `$_iterator(): Iterator<T>` enables for-of

### 17.7 Callable Types
- Static `$_invoke` or `$_instantiate` makes class callable via `C()`

### 17.8.1 For-of Explicit Type Annotation
- `for (let x: Type of iterable)`

### 17.9 Explicit Overload Declarations
- `overload` keyword — compile-time ordered overload set

### 17.10 Native Functions/Methods/Constructors
- `native` keyword, no body, platform-dependent implementation

### 17.11 Classes Experimental
- `final` class/method, named constructors

### 17.12 Default Interface Method Declarations
- Interface methods with body (default implementation)

### 17.13 Functions with Receiver
- First param `this: Type`, two call syntaxes

### 17.14 Trailing Lambdas
- *Trailing lambda*: special notation when the last parameter of a function/method is of function type, and the argument is passed as a lambda using Block notation
- Syntax: `trailingLambda: 'async'? block`
- The modifier `async` marks async lambdas
- A compile-time error occurs if the last parameter is not of function type or if there are multiple trailing lambda arguments

### 17.15 Accessor Declarations
- Accessor: a top-level or namespace-level getter/setter declaration with predefined signatures
- Syntax: `native? ('get' identifier '(' ')' returnType? block? | 'set' identifier '(' requiredParameter ')' block?)`
- A non-native accessor must have a body; a native accessor must NOT have a body (compile-time error otherwise)
- Accessor name conflict with another entity in scope → compile-time error
- Accessors valid at all places where top-level declarations are allowed

### 17.16 Pattern Matching
- *Pattern Matching* checks a value against a pattern and executes a matching action; a successful match can deconstruct a value into constituent parts
- ArkTS currently supports only *destructuring assignment*; other features to be added in future spec revisions

### 17.16.1 Destructuring Assignment
- Extracts values from arrays or tuples into distinct variables
- Syntax: `destructuringAssignment: '[' lhsExpression? (',' lhsExpression?)* ']' '=' rhsExpression`
- `rhsExpression` must be of array type or tuple type; otherwise compile-time error
- Equivalent to a compact form of sequential assignments by element index
