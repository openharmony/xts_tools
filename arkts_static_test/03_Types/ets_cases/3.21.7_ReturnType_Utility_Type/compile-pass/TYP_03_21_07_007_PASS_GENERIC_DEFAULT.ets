/**
 * @id TYP_03_21_07_007_PASS_GENERIC_DEFAULT
 * @expect compile-pass
 * @section 3.21.7
 * @design ReturnType<P> 可作为泛型默认参数
 * @note 正向用例：spec 原例
 */
function foo<P extends Function, R = ReturnType<P>>(): void {}

function testGenericDefault(): void {
  foo<() => number>()
}