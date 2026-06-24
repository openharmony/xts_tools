/**
 * @id TYP_03_18_001_PASS_BASIC_FUNCTION_TYPE
 * @expect compile-pass
 * @section 3.18
 * @design 函数类型基本声明：变量声明、type 别名、空参数、单参数、多参数
 * @note 正向用例：验证函数类型基本声明编译通过
 */
type IntOp = (x: int) => int
type BinOp = (a: int, b: int) => int
type VoidOp = () => void
type NoParamReturnInt = () => int

function testBasicFunctionType(): void {
  let f1: (x: int) => int = (x: int): int => { return x * 2 }
  let f2: (a: int, b: int) => int = (a: int, b: int): int => { return a + b }
  let f3: () => void = (): void => {}
  let f4: () => int = (): int => { return 42 }
  let f5: IntOp = (x: int): int => { return x + 1 }
  let f6: BinOp = (a: int, b: int): int => { return a - b }
  let f7: VoidOp = (): void => {}
  let f8: NoParamReturnInt = (): int => { return 0 }
}