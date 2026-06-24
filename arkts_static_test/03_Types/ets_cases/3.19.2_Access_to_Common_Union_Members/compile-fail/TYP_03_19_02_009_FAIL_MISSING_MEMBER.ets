/**
 * @id TYP_03_19_02_009_FAIL_MISSING_MEMBER
 * @expect compile-fail
 * @section 3.19.2
 * @design 若某个 union 分支缺少成员 m，则访问 u.m 应失败
 * @note 反向用例：B9 没有 onlyA，参数类型保持 A9 | B9 不被初始化表达式收窄
 */
class A9 { onlyA(): void {} }
class B9 { other(): void {} }

function testMissingMemberFail(u: A9 | B9): void {
  u.onlyA()
}