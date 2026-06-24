/**
 * @id TYP_03_02_008_PASS_TYPE_PARAM_FUNCTION
 * @expect compile-pass
 * @section 3.2
 * @design 类型参数: 泛型函数 function foo<T>(x: T): T 声明、隐式推断、显式类型参数
 * @note 正向用例：验证泛型函数
 *       注：嵌套函数移到顶层
 */
function identity<T>(x: T): T {
  return x
}

function first<T, U>(a: T, b: U): T {
  return a
}

function testTypeParamFunction(): void {
  let r1: int = identity<int>(42)
  let r2: string = identity<string>("hello")

  let r3: int = identity(42)
  let r4: string = identity("world")

  let r5: int = first(1, "two")
}