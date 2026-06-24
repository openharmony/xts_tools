/**
 * @id TYP_03_02_026_FAIL_TYPE_ALIAS_RECURSIVE
 * @expect compile-fail
 * @section 3.2
 * @design 类型别名直接循环引用不可解析应编译失败
 * @note 反向用例：type A = A 直接自引用
 */
type SelfRef = SelfRef

type Mutual1 = Mutual2
type Mutual2 = Mutual1

function testTypeAliasRecursiveFail(): void {
  let x: SelfRef
}