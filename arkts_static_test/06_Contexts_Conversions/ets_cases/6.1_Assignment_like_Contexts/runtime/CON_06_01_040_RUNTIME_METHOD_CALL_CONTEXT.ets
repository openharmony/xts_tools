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
 * @id CON_06_01_040_RUNTIME_METHOD_CALL_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 方法调用上下文运行时行为：方法参数正确传递给方法体
 * @note 运行时用例：实际执行验证方法调用参数赋值语义
 */
class Multiplier {
  factor: int = 0

  constructor(f: int) {
    this.factor = f
  }

  multiply(val: int): int {
    return val * this.factor
  }

  describe(label: string, count: int): string {
    return label + count
  }
}

function main(): void {
  let m: Multiplier = new Multiplier(5)
  let result: int = m.multiply(6)
  if (result != 30) {
    throw new Error("assertion failed: multiply(6) expected 30, got " + result)
  }

  let desc: string = m.describe("count:", 10)
  if (desc != "count:10") {
    throw new Error("assertion failed: describe expected 'count:10', got " + desc)
  }

  console.log('Method call context verified')
}
