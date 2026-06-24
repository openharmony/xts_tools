/**
 * @id TYP_03_09_005_PASS_OBJECT_ARRAY
 * @expect compile-pass
 * @section 3.9
 * @design Object[] 接受异构元素
 * @note 正向用例
 */
function testObjectArray(): void {
  let arr: Object[] = [1, "x", true, 3.14]
  let arr2: Array<Object> = [new Object(), [1, 2]]
}