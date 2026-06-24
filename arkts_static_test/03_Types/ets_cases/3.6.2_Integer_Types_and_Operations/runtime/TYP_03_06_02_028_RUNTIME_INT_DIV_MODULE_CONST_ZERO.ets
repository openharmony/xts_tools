/**
 * @id TYP_03_06_02_028_RUNTIME_INT_DIV_MODULE_CONST_ZERO
 * @expect runtime
 * @section 3.6.2
 * @design ⭐ 设计 bug：模块级 const = 0 作除数未触发编译期检测（与函数内 const 不一致）
 * @runtime-throws=ArithmeticError
 * @note 运行时用例：揭示 ArkTS 实现 bug
 *       预期：应该编译错误（与函数内 const 一致）
 *       实测：编译通过，运行时抛异常
 *       已记入：design_issues_report_3.6.2 问题 U + issue_report.md
 */
const moduleA: int = 0

function main(): void {
  let c: int = 10 / moduleA
  console.log(c)
}