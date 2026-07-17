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
 * @id CON_06_01_039_RUNTIME_FIELD_DECLARATION_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 字段声明上下文运行时行为：类字段初始值正确设置
 * @note 运行时用例：实际执行验证字段声明赋值语义
 */
class Counter {
  start: int = 0
  step: int = 1
  label: string = "count"
}

function main(): void {
  let c: Counter = new Counter()
  if (c.start != 0) {
    throw new Error("assertion failed: c.start expected 0, got " + c.start)
  }
  if (c.step != 1) {
    throw new Error("assertion failed: c.step expected 1")
  }
  if (c.label != "count") {
    throw new Error("assertion failed: c.label expected 'count'")
  }

  console.log("Field declaration context verified")
}
