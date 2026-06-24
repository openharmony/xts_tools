/**
 * @id TYP_03_18_003_PASS_FUNCTION_TYPE_AS_RETURN
 * @expect compile-pass
 * @section 3.18
 * @design 函数类型作为返回值
 * @note 正向用例：验证函数类型作为函数返回值
 */
type Transformer = (x: int) => int

function getIncrementer(): Transformer {
  return (x: int): int => { return x + 1 }
}

function getMultiplier(factor: int): (x: int) => int {
  return (x: int): int => { return x * factor }
}

function testFunctionTypeAsReturn(): void {
  let inc: Transformer = getIncrementer()
  let mul: (x: int) => int = getMultiplier(3)
  let r1: int = inc(5)
  let r2: int = mul(5)
}