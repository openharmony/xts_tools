/**
 * @id TYP_03_21_09_005_FAIL_MISSING_REQUIRED
 * @expect compile-fail
 * @section 3.21.9
 * @design Required<Readonly<Issue>> 缺少 required 字段应编译错误
 * @note 反向用例：Required 语义
 */
interface Issue5 {
  title?: string
}

function testMissingRequiredFail(): void {
  const myIssue: Required<Readonly<Issue5>> = {}
}