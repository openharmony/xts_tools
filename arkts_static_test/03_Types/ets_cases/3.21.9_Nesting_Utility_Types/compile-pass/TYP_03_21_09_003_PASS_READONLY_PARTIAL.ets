/**
 * @id TYP_03_21_09_003_PASS_READONLY_PARTIAL
 * @expect compile-pass
 * @section 3.21.9
 * @design Readonly<Partial<Issue>> 字段可选 + 只读
 * @note 正向用例
 */
interface Issue3 {
  title?: string
}

function testReadonlyPartial(): void {
  const x: Readonly<Partial<Issue3>> = {title: "hello"}
}