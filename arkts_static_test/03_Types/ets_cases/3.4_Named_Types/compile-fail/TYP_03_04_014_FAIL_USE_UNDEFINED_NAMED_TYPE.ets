/**
 * @id TYP_03_04_014_FAIL_USE_UNDEFINED_NAMED_TYPE
 * @expect compile-fail
 * @section 3.4
 * @design 引用未声明的命名类型应失败
 * @note 反向用例：用一个不存在的类型名作类型注解
 */
function testUndefinedNamedFail(): void {
  let x: Undeclared = 1
  let y: AnotherMissing<int> = null
}