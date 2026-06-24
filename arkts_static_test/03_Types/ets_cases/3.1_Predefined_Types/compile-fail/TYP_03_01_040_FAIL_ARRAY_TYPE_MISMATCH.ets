/**
 * @id TYP_03_01_040_FAIL_ARRAY_TYPE_MISMATCH
 * @expect compile-fail
 * @section 3.1
 * @design 数组元素类型不匹配
 * @note 反向用例：验证数组字面量元素类型必须一致
 */
function testArrayTypeMismatchFail(): void {
  // int[] 不能接受 string 元素
  let arr1: int[] = [1, 2, "three"]

  // string[] 不能接受 number 元素
  let arr2: string[] = ["a", "b", 3]

  // boolean[] 不能接受 string
  let arr3: boolean[] = [true, false, "yes"]
}