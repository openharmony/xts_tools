/*
 * Copyright (c) 2026 Hunan OpenValley Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// arktsid: try_throw_finally_return
// description: A return in finally overrides an earlier async throw

async function resolving(message: string): Promise<string> {
    return message;
}

async function f(): Promise<string> {
    try {
        throw new Error('early-throw');
    } finally {
        return await resolving('override');
    }
}

function main(): void {
    f().then((value: string): void => {
        arktest.assertEQ(value, 'override');
    }, (_: Error): void => {
        arktest.assertTrue(false);
    });
}
