/**
 * @id TYP_03_21_07_004_PASS_WITH_PARAMS
 * @expect compile-pass
 * @section 3.21.7
 * @design 带参函数类型提取返回类型
 * @note 正向用例
 */
type WithParams = ReturnType<(a: int, b: string) => int>

function testWithParams(): void {
  let v: WithParams = 42
}