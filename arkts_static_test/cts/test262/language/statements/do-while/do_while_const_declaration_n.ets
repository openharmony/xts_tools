/*
 * Copyright (c) 2026 Hunan OpenValley Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*---
desc: A const declaration is not allowed as a do-while body
tags: [compile-only, negative]
expected_out_1: "Syntax error ESY0175: Lexical declaration is not allowed in single statement context."
---*/

do const x: int = 0; while (false);

function main(): void {
}
