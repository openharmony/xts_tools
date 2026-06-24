/**
 * @id TYP_03_06_02_025_FAIL_INT_DIV_CONSTANT_EXPRESSION
 * @expect compile-fail
 * @section 3.6.2
 * @design 编译期常量表达式 (1-1) 作除数应编译失败
 * @note 反向用例：常量折叠检测
 */
function main(): void {
  let c: int = 10 / (1 - 1)
  console.log(c)
}