/**
 * @id TYP_03_18_016_FAIL_OPTIONAL_PARAM_ASSIGN_LAMBDA_MISMATCH
 * @expect compile-fail
 * @section 3.18
 * @design 函数类型可选参数与 lambda 赋值签名不匹配
 * @note 反向用例：验证全可选函数类型不能赋值为需要必选参数的 lambda
 */
type AllOptional = (x?: number, y?: string) => void

function testOptionalParamAssignMismatch(): void {
  // 全可选类型赋值为需要必选参数的 lambda 应失败
  // 因为调用时可传0个参数，但 lambda 需要1个参数
  let f: AllOptional = (p: number): void => {} // Compile-time error
}