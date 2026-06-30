# 02 Lexical Elements Examples

Minimal ArkTS examples illustrating normative rules and expected diagnostics.

## 2.1 Unicode Characters

```typescript
// Valid: BMP char literal
let a: char = c'A'
// Valid: Supplementary plane char literal
let b: char = c'\u{1F600}'
// Valid: Unicode escape in identifier
let \u0041BC: number = 1  // Identifies as "ABC"
// Valid: char relational operations (per spec)
let r: boolean = c'A' < c'B'
// Valid: char-number comparison (per spec)
let e: boolean = c'A' == 65
// Error: out-of-range char literal (U+10FFFF+)
// let x: char = c'\u{FFFFF}'  // compile-fail
```

## 2.2 Lexical Input Elements

```typescript
// Valid: tokens separated by whitespace
let x: number = 1
// Valid: tokens separated by comment
let y/*comment*/: number = 2
```

## 2.3 White Spaces

```typescript
// Valid: TAB, NBSP, ZWNBSP as token separators
let	t: number = 1  // TAB
// ZWNBSP at file start acts as BOM
```

## 2.4 Line Separators

```typescript
// Valid: LF, CR, CRLF as line terminators
let a: number = 1
let b: number = 2
// Valid: CRLF treated as single separator
```

## 2.5 Tokens

```typescript
// Valid: longest match rule
let x: number = 1
x >>>= 2  // single >>>= token
```

## 2.6 Identifiers

```typescript
// Valid identifier forms
let myVar: number = 1
let _private: number = 2
let $special: number = 3
let 你好: number = 4
// Error: keyword as identifier
// let class: number = 1  // compile-fail
```

## 2.7 Keywords

```typescript
// Valid: soft keyword as identifier
let type: string = "hello"  // 'type' is soft keyword
// Error: hard keyword as identifier
// let let: number = 1  // compile-fail
```

## 2.8 Operators and Punctuators

```typescript
// Valid operators
let sum: number = 1 + 2
let inc: number = 1
inc++
let and: boolean = true && false
// Error: ??= not yet implemented
// x ??= 5  // compile-fail (ISSUE-009)
```

## 2.9 Literals

```typescript
// Numeric: 42, 0xFF, 0o77, 0b11, 1_000
// Integer: 42 (int), 42L (long)
// Float: 3.14 (double), 3.14f (float), 1.5e10
// BigInt: 123n
// String: "hello", 'world'
// Multiline: `line1
//   line2`
// Boolean: true, false
// Null: null
// Undefined: undefined
```

## 2.10 Comments

```typescript
// Single-line
/* Multi-line */
/** Doc comment */
// Error: nested multi-line
/* outer /* inner */ outer */  // compile-fail
```

## 2.11 Semicolons

```typescript
// Both forms valid
let a: number = 1    // inferred
let b: number = 2;   // explicit
```