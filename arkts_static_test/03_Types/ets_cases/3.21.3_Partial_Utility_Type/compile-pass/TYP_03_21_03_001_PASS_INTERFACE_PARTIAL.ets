/**
 * @id TYP_03_21_03_001_PASS_INTERFACE_PARTIAL
 * @expect compile-pass
 * @section 3.21.3
 * @design Partial<interface> 所有字段变为 optional
 * @note 正向用例：spec §3.21.3 原例
 */
interface Issue {
  title: string
  description: string
}
type PartialIssue = Partial<Issue>

function process(issue: PartialIssue): void {
  if (issue.title != undefined) {
    let t: string | undefined = issue.title
  }
}

function testInterfacePartial(): void {
  process({title: "aa"})
}