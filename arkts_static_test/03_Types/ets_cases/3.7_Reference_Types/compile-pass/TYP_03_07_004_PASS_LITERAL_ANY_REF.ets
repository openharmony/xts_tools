/**
 * @id TYP_03_07_004_PASS_LITERAL_ANY_REF
 * @expect compile-pass
 * @section 3.7
 * @design Literal Types / Any 是引用类型
 * @note 正向用例：字面量类型与 Any
 */
function testLiteralAnyRef(): void {
  let l: "hello" = "hello"
  let a: Any = 42
}