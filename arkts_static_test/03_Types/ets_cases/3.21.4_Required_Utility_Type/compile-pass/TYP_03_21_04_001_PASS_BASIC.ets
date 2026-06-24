/**
 * @id TYP_03_21_04_001_PASS_BASIC
 * @expect compile-pass
 * @section 3.21.4
 * @design Required 将 optional 字段转为 required，全部提供正常
 * @note 正向用例：spec 原例修正版
 */
interface Issue {
  title?: string
  description?: string
}
type RequiredIssue = Required<Issue>

function testBasic(): void {
  let c: RequiredIssue = {title: "aa", description: "bb"}
}