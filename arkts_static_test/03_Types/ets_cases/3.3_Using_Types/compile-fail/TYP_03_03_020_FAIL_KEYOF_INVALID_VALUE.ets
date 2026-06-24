/**
 * @id TYP_03_03_020_FAIL_KEYOF_INVALID_VALUE
 * @expect compile-fail
 * @section 3.3
 * @design keyof T 生成 union of 字段名字面量，赋值非字段名应失败
 * @note 反向用例：keyof C 不接受不存在的属性名
 */
class C20 {
  name: string = ""
  age: int = 0
}

function testKeyofInvalidFail(): void {
  let k: keyof C20 = "nonExistentField"
  let k2: keyof C20 = "wrong"
}