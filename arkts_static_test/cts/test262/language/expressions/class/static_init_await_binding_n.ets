/* Licensed under the Apache License, Version 2.0 */
/*---
desc: The `await` keyword is disallowed as a BindingIdentifier
tags: [compile-only, negative]
expected_out_1: |-
    Syntax error ESY0040: Illegal start of CLASS expression.
    Syntax error ESY0316: Hard keyword 'await' cannot be used as identifier
    Syntax error ESY0224: Identifier expected, got 'await'.
---*/

// Conversion notes: static 块内 `class await` 绑定（await 硬关键字 ESY0316）
class C {
    static {
        class await {
        }
    }
}

