/**
 * @id TYP_03_01_039_FAIL_FLOAT_INCOMPATIBLE
 * @expect compile-fail
 * @section 3.1
 * @design 浮点类型与不兼容类型赋值
 * @note 反向用例：验证 float/double 与 string/boolean 不兼容
 */
function testFloatIncompatibleFail(): void {
  let f: float = 3.14f

  // string 不能赋值给 float
  let s: string = "3.14"
  let f2: float = s

  // boolean 不能赋值给 double
  let b: boolean = true
  let d: double = b

  // float 不能直接赋值给 string
  let str: string = f
}