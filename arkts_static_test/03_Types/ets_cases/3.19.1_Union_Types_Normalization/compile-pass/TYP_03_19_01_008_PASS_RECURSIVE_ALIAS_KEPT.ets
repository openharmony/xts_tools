/**
 * @id TYP_03_19_01_008_PASS_RECURSIVE_ALIAS_KEPT
 * @expect compile-pass
 * @section 3.19.1
 * @design 递归 type alias 在 union 归一化中保留，不展开
 * @note 正向用例：type A = A[] | string 不发生无限展开
 */
type Rec8 = Rec8[] | string

function testRecursiveAliasKept(): void {
  let r1: Rec8 = "leaf"
  let r2: Rec8 = ["a", "b"]
  let r3: Rec8 = [["nested"]]
}