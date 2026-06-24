/**
 * @id TYP_03_21_09_004_PASS_PARTIAL_READONLY
 * @expect compile-pass
 * @section 3.21.9
 * @design Partial<Readonly<Issue>> 字段可选 + 只读
 * @note 正向用例
 */
interface Issue4 {
  title?: string
}

function testPartialReadonly(): void {
  const x: Partial<Readonly<Issue4>> = {title: "hello"}
}