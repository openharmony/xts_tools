/**
 * @id TYP_03_06_02_029_FAIL_BIGINT_DIV_LITERAL_ZERO
 * @expect compile-fail
 * @section 3.6.2
 * @design bigint 字面量除以 0n 应编译失败（spec §15.17.2 bigint 同样规则）
 * @note 反向用例：bigint 除零编译期检测
 *       错误码：ESY206401
 */
function main(): void {
  let c: bigint = 10n / 0n
  console.log(c)
}