/* Licensed under the Apache License, Version 2.0 */
/*---
desc: >
tags: [compile-only, negative]
expected_out_1: ["Syntax error ESY0145: Cannot be used as user-defined type."]
---*/

// Conversion notes: class-expr→声明；类名 `yield` 测早期错误
class yield {
}

