/**
 * @id TYP_03_02_011_PASS_TYPE_ALIAS_USER
 * @expect compile-pass
 * @section 3.2
 * @design 用户定义类型别名: type 为复合类型创建有意义名称
 * @note 正向用例：验证类型别名（顶层声明）
 */
type Matrix = int[][]
type Handler = (s: string) => void
type NullishInt = int | undefined
type Pair<T> = [T, T]

function testTypeAlias(): void {
  let m: Matrix = [[1, 2], [3, 4]]

  let h: Handler = (s: string): void => {}
  h("test")

  let n: NullishInt = 42
  n = undefined

  let p: Pair<int> = [1, 2]
}