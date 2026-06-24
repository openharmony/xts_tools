/**
 * @id TYP_03_05_015_FAIL_ALIAS_DIRECT_RECURSION
 * @expect compile-fail
 * @section 3.5
 * @design type alias 直接自引用（type A = A）应失败
 * @note 反向用例：alias 直接和间接循环引用
 */
type SelfRef15 = SelfRef15
type Mutual15A = Mutual15B
type Mutual15B = Mutual15A

function testAliasRecursionFail(): void {
  let x: SelfRef15
  let y: Mutual15A
}