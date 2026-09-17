/*
 * Copyright (c) 2026 Hunan OpenValley Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// arktsid: nan_left_operand_is_false
// description: Greater-than is false when the left operand is NaN

function main(): void {
    arktest.assertFalse(Number.NaN > 0);
    arktest.assertFalse(Number.NaN > 1.1);
    arktest.assertFalse(Number.NaN > -1.1);
    arktest.assertFalse(Number.NaN > Number.NaN);
    arktest.assertFalse(Number.NaN > Number.POSITIVE_INFINITY);
    arktest.assertFalse(Number.NaN > Number.NEGATIVE_INFINITY);
    arktest.assertFalse(Number.NaN > Number.MAX_VALUE);
    arktest.assertFalse(Number.NaN > Number.MIN_VALUE);
}
