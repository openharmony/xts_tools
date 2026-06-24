/**
 * @id TYP_03_21_07_001_PASS_BASIC
 * @expect compile-pass
 * @section 3.21.7
 * @design ReturnType<() => string> → string
 * @note 正向用例
 */
type MyString = ReturnType<() => string>

function testBasic(): void {
  let s: MyString = "hello"
}