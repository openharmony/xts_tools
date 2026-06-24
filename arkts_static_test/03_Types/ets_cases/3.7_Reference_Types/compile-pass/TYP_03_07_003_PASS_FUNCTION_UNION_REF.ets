/**
 * @id TYP_03_07_003_PASS_FUNCTION_UNION_REF
 * @expect compile-pass
 * @section 3.7
 * @design Function Types / Union Types 是引用类型
 * @note 正向用例：函数类型与联合类型
 */
function testFunctionUnionRef(): void {
  let f: (x: int) => int = (x: int): int => { return x }
  let u: int | string = 1
}