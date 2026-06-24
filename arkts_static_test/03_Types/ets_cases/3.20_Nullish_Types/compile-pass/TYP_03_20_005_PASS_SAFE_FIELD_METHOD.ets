/**
 * @id TYP_03_20_005_PASS_SAFE_FIELD_METHOD
 * @expect compile-pass
 * @section 3.20
 * @design safe field access 和 safe method call
 * @note 正向用例：obj?.field / obj?.method()
 */
class Person5 {
  name: string
  constructor(name: string) { this.name = name }
  greet(): string { return "hi " + this.name }
}

function testSafeFieldMethod(): void {
  let p: Person5 | undefined = undefined
  let n: string | undefined = p?.name
  let g: string | undefined = p?.greet()

  p = new Person5("Bob")
  n = p?.name
  g = p?.greet()
}