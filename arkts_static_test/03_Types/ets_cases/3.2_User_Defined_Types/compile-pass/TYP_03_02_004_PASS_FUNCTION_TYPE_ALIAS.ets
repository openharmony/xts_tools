/**
 * @id TYP_03_02_004_PASS_FUNCTION_TYPE_ALIAS
 * @expect compile-pass
 * @section 3.2
 * @design 用户定义函数类型: type 别名声明函数签名（顶层）、变量声明、lambda 赋值、调用
 * @note 正向用例：验证该特性编译通过的正确用法
 *       注：ArkTS 不允许函数体内 type alias，已移到顶层
 */
type IntOp = (x: int) => int
type BinOp = (a: int, b: int) => int
type Predicate<T> = (x: T) => boolean

function testFunctionTypeAlias(): void {
  let f1: IntOp = (x: int): int => { return x * 2 }
  let r1: int = f1(21)

  let add: BinOp = (a: int, b: int): int => { return a + b }
  let r2: int = add(3, 4)

  let isPositive: Predicate<int> = (x: int): boolean => { return x > 0 }
  let r3: boolean = isPositive(5)
}