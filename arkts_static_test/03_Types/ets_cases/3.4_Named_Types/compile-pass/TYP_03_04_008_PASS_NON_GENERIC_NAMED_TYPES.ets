/**
 * @id TYP_03_04_008_PASS_NON_GENERIC_NAMED_TYPES
 * @expect compile-pass
 * @section 3.4
 * @design 不带类型参数的 class/interface/enum/type alias 是 non-generic named types
 * @note 正向用例：非泛型命名类型
 */
class NgClass {
  v: int = 0
}

interface NgInterface {
  hello(): string
}

enum NgEnum {
  X,
  Y
}

type NgAlias = int | string

function testNonGenericNamedTypes(): void {
  let c: NgClass = new NgClass()
  let e: NgEnum = NgEnum.X
  let a: NgAlias = 1
  a = "x"
}