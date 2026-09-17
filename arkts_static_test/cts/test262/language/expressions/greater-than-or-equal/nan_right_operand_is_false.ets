/*
 * Copyright (c) 2026 Hunan OpenValley Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// arktsid: nan_right_operand_is_false
// description: Greater-than-or-equal is false when the right operand is NaN

function main(): void {
    arktest.assertFalse(0 >= Number.NaN);
    arktest.assertFalse(1.1 >= Number.NaN);
    arktest.assertFalse(-1.1 >= Number.NaN);
    arktest.assertFalse(Number.NaN >= Number.NaN);
    arktest.assertFalse(Number.POSITIVE_INFINITY >= Number.NaN);
    arktest.assertFalse(Number.NEGATIVE_INFINITY >= Number.NaN);
    arktest.assertFalse(Number.MAX_VALUE >= Number.NaN);
    arktest.assertFalse(Number.MIN_VALUE >= Number.NaN);
}
