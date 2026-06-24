/**
 * @id TYP_03_20_016_FAIL_SAFE_CHAIN_ASSIGN_LHS
 * @expect compile-fail
 * @section 3.20
 * @design safe chaining 不能出现在需要变量的位置（赋值左值）
 * @note 反向用例：obj?.field = value 应失败
 */
class C16 { f: int = 0 }

function testSafeChainAssignLhsFail(): void {
  let c: C16 | undefined = new C16()
  c?.f = 1
}