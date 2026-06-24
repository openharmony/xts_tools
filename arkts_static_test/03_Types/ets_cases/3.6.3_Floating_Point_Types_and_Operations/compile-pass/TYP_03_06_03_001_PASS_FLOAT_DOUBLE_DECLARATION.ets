/**
 * @id TYP_03_06_03_001_PASS_FLOAT_DOUBLE_DECLARATION
 * @expect compile-pass
 * @section 3.6.3
 * @design float/double/number 字面量声明
 * @note 正向用例：浮点类型声明
 */
function testFloatDoubleDeclaration(): void {
  let f1: float = 3.14f
  let f2: float = 0.0f
  let f3: float = -1.5f

  let d1: double = 3.141592653589793
  let d2: double = 0.0
  let d3: double = -2.718281828

  let n: number = 3.14
}