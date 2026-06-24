/**
 * @id TYP_03_21_09_001_PASS_REQUIRED_READONLY
 * @expect compile-pass
 * @section 3.21.9
 * @design Required<Readonly<Issue>> 编译通过
 * @note 正向用例：spec 原例简化版
 */
interface Issue {
  title?: string
}

function testRequiredReadonly(): void {
  const myIssue: Required<Readonly<Issue>> = {title: "One"}
}