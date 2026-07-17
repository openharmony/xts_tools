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
 * @id CON_06_02_023_RUNTIME_CLASS_TOSTRING_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design 引用类型 string 转换运行时行为：class 实例通过 toString() 方法转换
 * @note 运行时用例：实际执行验证对象实例 → toString() 结果
 */
class Container {
  value: int
  constructor(v: int) {
    this.value = v
  }
}

function main(): void {
  let c: Container = new Container(42)
  let r1: string = "container: " + c
  let prefix: string = "container: "
  if (r1.substring(0, prefix.length) != prefix) {
    throw new Error("assertion failed: expected prefix 'container: ', got '" + r1 + "'")
  }

  console.log('Class toString conversion verified')
}
