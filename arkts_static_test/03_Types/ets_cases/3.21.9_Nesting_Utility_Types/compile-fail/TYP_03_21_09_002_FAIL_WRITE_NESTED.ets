/**
 * @id TYP_03_21_09_002_FAIL_WRITE_NESTED
 * @expect compile-fail
 * @section 3.21.9
 * @design Required<Readonly<Issue>> 内层 readonly 禁止写入
 * @note 反向用例：spec 原例
 */
interface Issue2 {
  title?: string
}

function testWriteNestedFail(): void {
  const myIssue: Required<Readonly<Issue2>> = {title: "One"}
  myIssue.title = "Two"
}