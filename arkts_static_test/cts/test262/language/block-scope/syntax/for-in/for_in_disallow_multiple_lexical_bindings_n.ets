/*
 * Copyright (c) 2026 Hunan OpenValley Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * http://www.apache.org/licenses/LICENSE-2.0
 */
/*---
desc: for-in declarations cannot contain multiple lexical bindings
tags: [compile-only, negative]
expected_out_1: [
    "Syntax error ESY0211: Invalid left-hand side in 'for' statement: must have a single binding.",
    "Syntax error ESY6987: 'for ... in' loop is not supported, please use regular 'for' or 'for ... of ...' loop to
    iterate through arrays and iterable objects.",
]
---*/
for (let x: int, y: int in {}) { }
