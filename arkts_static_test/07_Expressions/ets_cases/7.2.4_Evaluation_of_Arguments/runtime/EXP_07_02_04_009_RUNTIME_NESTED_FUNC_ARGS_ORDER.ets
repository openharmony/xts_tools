/*
* Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/
/**
 * @id EXP_07_02_04_009_RUNTIME_NESTED_FUNC_ARGS_ORDER
 * @expect runtime
 * @section 7.2.4
 * @design 嵌套函数调用作为参数时的求值顺序：第一参数内部包含子函数调用，验证其参数表达式先于第二参数求值
 * @note 运行时用例：验证嵌套函数调用参数仍保持左到右求值顺序
 */
let trace: string = ''

function track(label: string): int {
  trace = trace + label
  return 1
}

function wrap(x: int): int {
  trace = trace + 'W'
  return x * 10
}

function test(a: int, b: int, c: int): void {
  // 到达此处时，所有参数已求值完毕
  // 期望 trace = "IWOC"（inner→wrap→outer→c）
  if (trace != 'IWOC') {
    throw new Error('nested args order fail: ' + trace)
  }
  if (a + b + c != 10 + 1 + 1) {
    throw new Error('nested args value fail')
  }
}

function main(): void {
  // 第一参数: wrap(track("I")) + track("W") — 但实际上 + 是二元运算，会先求值左再右
  // 更准确：第一参数是 wrap(track("I"))，内部先求值 track("I") 再 wrap
  // 但这样可以：
  // test(wrap(track("I")), track("O"), track("C"))
  // 求值顺序:
  //   Arg1: wrap(track("I")) → 先 track("I") 追加 "I"，再 wrap 追加 "W"
  //   Arg2: track("O") → 追加 "O"
  //   Arg3: track("C") → 追加 "C"
  // trace = "IWOC"
  test(wrap(track('I')), track('O'), track('C'))
  console.log('verified')
}
