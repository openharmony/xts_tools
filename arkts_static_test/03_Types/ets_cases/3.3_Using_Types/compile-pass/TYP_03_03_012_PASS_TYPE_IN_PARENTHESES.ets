/**
 * @id TYP_03_03_012_PASS_TYPE_IN_PARENTHESES
 * @expect compile-pass
 * @section 3.3
 * @design 括号包裹的类型表达式 (type)
 * @note 正向用例：验证 type in parentheses 用法
 */
function testTypeInParentheses(): void {
  // 简单类型加括号合法
  let a: (int) = 42
  let b: (string) = "hi"

  // 联合类型加括号
  let u: (int | string) = 1

  // 数组元素是括号包裹的 union
  let arr: (int | string)[] = [1, "a"]

  // 函数类型加括号
  let f: ((x: int) => int) = (x: int): int => { return x }
}