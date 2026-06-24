/**
 * @id TYP_03_22_004_PASS_REFERENCE_NO_DEFAULT
 * @expect compile-pass
 * @section 3.22
 * @design 引用类型无默认值，变量未初始化但在使用前已赋值则合法
 * @note 正向用例：赋值后使用
 */
class C4 {}

function testReferenceNoDefault(): void {
  let c: C4
  c = new C4()
  let v: string = "ok"
}