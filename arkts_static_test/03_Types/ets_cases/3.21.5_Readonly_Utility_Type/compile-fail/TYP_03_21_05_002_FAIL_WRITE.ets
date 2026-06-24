/**
 * @id TYP_03_21_05_002_FAIL_WRITE
 * @expect compile-fail
 * @section 3.21.5
 * @design Readonly 字段不可重新赋值
 * @note 反向用例：spec 原例
 */
interface Issue2 {
  title: string
}

function testWriteFail(): void {
  const myIssue: Readonly<Issue2> = {title: "One"}
  myIssue.title = "Two"
}