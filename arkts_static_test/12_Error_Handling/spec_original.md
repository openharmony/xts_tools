# 12 Error Handling - Spec Extract

Source: ArkTS static language specification, chapter 12 Error Handling (errors.md), §7 throw/try statements (statements.md).

## 12.1 Errors

- `Error` is the base class of all error situations.
- Built-in subclasses: `RangeError` (standard library).
- User-defined error classes: extend `Error`.
- Errors raised by runtime system, standard library, or `throw` statements.
- Errors handled by `try` statements.

### throw Statement

Syntax:
```
throwStatement: 'throw' expression
```

- Expression must be assignable to `Error`. Otherwise compile-time error.
- `null` and `undefined` cannot be thrown.
- If no `try` statement catches the thrown value, `UncaughtExceptionError` is raised.

### try Statement

Syntax:
```
tryStatement: 'try' block catchClause? finallyClause?
```

- Must contain: `catch` clause, `finally` clause, or both.
- Otherwise compile-time error.

### catch Clause

- Catch identifier provides access to the thrown error.
- Type of catch identifier inside block is `Error`.
- If `try` block completes normally, `catch` block is not executed.
- If error thrown in `try` block, control transfers to `catch` clause.

### finally Clause

- `finally` block always executes regardless of normal or abrupt completion.
- Useful for cleanup actions.
- If `finally` completes abruptly, the entire `try` statement also completes abruptly.

### try Statement Execution

1. Try block + entire try statement complete normally if no catch executed.
2. If error thrown in try block and catch present, try statement completes normally after catch body.
3. If no catch clause, error propagated to surrounding/caller scopes.
4. If finally completes abruptly, try statement completes abruptly.
