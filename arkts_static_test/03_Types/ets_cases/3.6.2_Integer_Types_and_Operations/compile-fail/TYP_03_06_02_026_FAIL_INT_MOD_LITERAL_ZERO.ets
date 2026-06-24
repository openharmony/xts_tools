/**
 * @id TYP_03_06_02_026_FAIL_INT_MOD_LITERAL_ZERO
 * @expect compile-fail
 * @section 3.6.2
 * @design 整数字面量取模 0 应编译失败
 * @note 反向用例：取模与除法同样规则
 */
function main(): void {
  let c: int = 10 % 0
  console.log(c)
}