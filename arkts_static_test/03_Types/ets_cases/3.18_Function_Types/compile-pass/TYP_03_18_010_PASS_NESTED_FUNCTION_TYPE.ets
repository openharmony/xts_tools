/**
 * @id TYP_03_18_010_PASS_NESTED_FUNCTION_TYPE
 * @expect compile-pass
 * @section 3.18
 * @design 嵌套函数类型：函数类型作为参数或返回值包含函数类型
 * @note 正向用例：验证函数类型的嵌套使用
 */
type IntOp = (x: int) => int
type HigherOrder = (op: IntOp) => IntOp
type Combiner = (f: (x: int) => int, g: (x: int) => int) => (x: int) => int

function testNestedFunctionType(): void {
  let identity: IntOp = (x: int): int => { return x }
  let doubler: IntOp = (x: int): int => { return x * 2 }

  let compose: HigherOrder = (op: IntOp): IntOp => {
    return (x: int): int => { return op(x) }
  }
  let composed: IntOp = compose(doubler)
  let r1: int = composed(5)
}