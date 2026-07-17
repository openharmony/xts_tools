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
 * @id CON_06_01_042_RUNTIME_ALL_CONTEXTS_INTEGRATION
 * @expect runtime
 * @section 6.1
 * @design 所有赋值类上下文集成运行时行为：声明、赋值、调用、返回、复合字面量联合验证
 * @note 运行时用例：实际执行综合验证各赋值上下文的协同行为
 */
class Accumulator {
  total: int = 0

  constructor(initial: int) {
    this.total = initial
  }

  add(value: int): int {
    let temp: int = this.total + value
    this.total = temp
    return temp
  }
}

function buildMessage(prefix: string, value: int): string {
  return prefix + value
}

function main(): void {
  let acc: Accumulator = new Accumulator(10)
  if (acc.total != 10) {
    throw new Error("assertion failed: constructor init expected 10")
  }

  let afterAdd: int = acc.add(5)
  if (afterAdd != 15) {
    throw new Error("assertion failed: add(5) result expected 15, got " + afterAdd)
  }
  if (acc.total != 15) {
    throw new Error("assertion failed: field updated expected 15")
  }

  let msg: string = buildMessage("value:", acc.total)
  if (msg != "value:15") {
    throw new Error("assertion failed: message expected 'value:15', got " + msg)
  }

  let info: string[] = ["ok", "pass", msg]
  if (info.length != 3) {
    throw new Error("assertion failed: array length expected 3")
  }
  if (info[2] != "value:15") {
    throw new Error("assertion failed: composite literal element mismatch")
  }

  console.log('All assignment-like contexts integration verified')
}
