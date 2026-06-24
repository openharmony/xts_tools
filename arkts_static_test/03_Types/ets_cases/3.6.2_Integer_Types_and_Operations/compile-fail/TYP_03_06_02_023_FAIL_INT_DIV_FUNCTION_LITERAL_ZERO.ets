/**
 * @id TYP_03_06_02_023_FAIL_INT_DIV_FUNCTION_LITERAL_ZERO
 * @expect compile-fail
 * @section 3.6.2
 * @design 函数体内字面量除以 0 应编译失败
 * @note 反向用例：编译期常量折叠检测除零
 */
function divLit(): int {
  return 10 / 0
}

function main(): void {
  let c: int = divLit()
  console.log(c)
}