/**
 * @id TYP_03_12_011_PASS_NULL_ARRAY_ELEMENT
 * @expect compile-pass
 * @section 3.12
 * @design 数组元素类型为 T | null，数组中包含 null
 * @note 正向用例：验证 null 可作为数组元素
 */
function testNullArrayElement(): void {
  let arr: (string | null)[] = [null, "a", null, "b"]
  let arr2: (int | null)[] = [null, 1, null, 2]
}