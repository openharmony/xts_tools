/**
 * @id TYP_03_11_010_PASS_UNDEFINED_TYPE_ARGUMENT
 * @expect compile-pass
 * @section 3.11
 * @design undefined 可作为泛型类型实参
 * @note 正向用例：spec §3.11 A<undefined>
 */
class A10<T> {}

function foo10<T>(x: T): void {}

function testUndefinedTypeArgument(): void {
  let a = new A10<undefined>()
  foo10<undefined>(undefined)
}