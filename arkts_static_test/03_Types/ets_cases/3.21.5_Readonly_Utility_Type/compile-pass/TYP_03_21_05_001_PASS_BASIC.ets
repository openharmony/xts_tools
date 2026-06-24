/**
 * @id TYP_03_21_05_001_PASS_BASIC
 * @expect compile-pass
 * @section 3.21.5
 * @design Readonly 字段只读声明，初始化后不可赋
 * @note 正向用例：仅声明
 */
interface Issue {
  title: string
}
type ReadonlyIssue = Readonly<Issue>

function testBasic(): void {
  const myIssue: ReadonlyIssue = {title: "One"}
}