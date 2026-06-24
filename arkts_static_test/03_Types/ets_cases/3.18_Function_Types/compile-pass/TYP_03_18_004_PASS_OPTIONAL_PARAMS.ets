/**
 * @id TYP_03_18_004_PASS_OPTIONAL_PARAMS
 * @expect compile-pass
 * @section 3.18
 * @design 函数类型可选参数：全可选参数、单个可选参数、带可选参数的尾参数
 * @note 正向用例：验证函数类型可选参数编译通过
 */
type AllOptional = (x?: int, y?: string) => void
type SingleOptional = (x?: int) => void
type TrailingOptional = (x: int, y?: string) => void

function testAllOptional(f1: AllOptional): void {
  f1()
}

function testSingleOptional(f2: SingleOptional): void {
  f2()
  f2(42)
}

function testTrailingOptional(f3: TrailingOptional): void {
  f3(1)
  f3(1, "hello")
}