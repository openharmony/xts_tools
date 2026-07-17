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
 * @id CON_06_01_041_RUNTIME_CONSTRUCTOR_CALL_CONTEXT
 * @expect runtime
 * @section 6.1
 * @design 构造器调用上下文运行时行为：构造器参数正确赋值给字段
 * @note 运行时用例：实际执行验证构造器调用参数赋值语义
 */
class Vector {
  x: int
  y: int
  z: int

  constructor(px: int, py: int, pz: int) {
    this.x = px
    this.y = py
    this.z = pz
  }

  sum(): int {
    return this.x + this.y + this.z
  }
}

function main(): void {
  let v: Vector = new Vector(1, 2, 3)
  if (v.x != 1) {
    throw new Error("assertion failed: v.x expected 1, got " + v.x)
  }
  if (v.y != 2) {
    throw new Error("assertion failed: v.y expected 2")
  }
  if (v.z != 3) {
    throw new Error("assertion failed: v.z expected 3")
  }

  let total: int = v.sum()
  if (total != 6) {
    throw new Error("assertion failed: v.sum() expected 6, got " + total)
  }

  console.log("Constructor call context verified")
}
