/**
 * @id TYP_03_06_02_022_FAIL_INT_DIV_LITERAL_ZERO
 * @expect compile-fail
 * @section 3.6.2
 * @design 整数字面量除以 0 应编译失败（spec §15.17.2 "detected to be 0 during compilation"）
 * @note 反向用例：编译期可检测的除零
 *       对比：Java 不做编译期检测，Swift 同样编译错误
 */
function main(): void {
  let c: int = 10 / 0
  console.log(c)
}