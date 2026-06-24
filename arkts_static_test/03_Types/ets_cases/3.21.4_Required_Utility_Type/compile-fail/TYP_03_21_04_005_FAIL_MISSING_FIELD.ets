/**
 * @id TYP_03_21_04_005_FAIL_MISSING_FIELD
 * @expect compile-fail
 * @section 3.21.4
 * @design Required 缺少字段应编译错误（spec 原例）
 * @note 反向用例：缺 field 报错
 */
interface I5 {
  title?: string
  description?: string
}
type RequiredI5 = Required<I5>

function testMissingFieldFail(): void {
  let c: RequiredI5 = {title: "aa"}
}