/**
 * @id TYP_03_04_003_PASS_ENUM_AS_NAMED
 * @expect compile-pass
 * @section 3.4
 * @design 枚举声明引入命名类型，可作类型注解
 * @note 正向用例：enum declaration 引入 named type
 */
enum NamedEnum {
  A,
  B,
  C
}

function testEnumNamed(): void {
  let e: NamedEnum = NamedEnum.A
  e = NamedEnum.B
}