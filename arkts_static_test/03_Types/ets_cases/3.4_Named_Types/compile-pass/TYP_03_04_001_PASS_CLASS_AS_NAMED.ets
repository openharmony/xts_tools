/**
 * @id TYP_03_04_001_PASS_CLASS_AS_NAMED
 * @expect compile-pass
 * @section 3.4
 * @design 类声明引入命名类型，可作类型注解
 * @note 正向用例：class declaration 引入 named type
 */
class NamedClass {
  field: int = 0
  method(): string { return "named" }
}

function testClassNamed(): void {
  let c: NamedClass = new NamedClass()
  let s: string = c.method()
}