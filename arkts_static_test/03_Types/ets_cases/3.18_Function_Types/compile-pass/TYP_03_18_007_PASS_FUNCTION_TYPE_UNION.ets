/**
 * @id TYP_03_18_007_PASS_FUNCTION_TYPE_UNION
 * @expect compile-pass
 * @section 3.18
 * @design 函数类型在联合类型中使用（需括号包裹）
 * @note 正向用例：验证函数类型在联合类型中正确使用括号包裹
 */
type StringOrFunc = string | ((x: int) => int)
type NullableFunc = ((x: int) => int) | undefined
type MultiUnion = int | ((x: int) => int) | string

function testFunctionTypeUnion(): void {
  let a: StringOrFunc = "hello"
  let b: StringOrFunc = (x: int): int => { return x + 1 }
  let c: NullableFunc = (x: int): int => { return x * 2 }
  let d: NullableFunc = undefined
  let e: MultiUnion = 42
  let f: MultiUnion = (x: int): int => { return x }
  let g: MultiUnion = "world"
}