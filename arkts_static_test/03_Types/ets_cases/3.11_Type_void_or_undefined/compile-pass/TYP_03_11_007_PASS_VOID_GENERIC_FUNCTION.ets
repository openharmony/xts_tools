/**
 * @id TYP_03_11_007_PASS_VOID_GENERIC_FUNCTION
 * @expect compile-pass
 * @section 3.11
 * @design void 和 undefined 可作为泛型函数实参
 * @note 正向用例：foo<void>(undefined)
 */
function genericFoo<T>(p: T): T { return p }

function testVoidGenericFunction(): void {
  let v: void = genericFoo<void>(undefined)
  let u: undefined = genericFoo<undefined>(undefined)
}