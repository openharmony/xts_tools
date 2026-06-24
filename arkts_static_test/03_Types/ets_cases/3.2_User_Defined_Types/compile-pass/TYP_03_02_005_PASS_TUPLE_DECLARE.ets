/**
 * @id TYP_03_02_005_PASS_TUPLE_DECLARE
 * @expect compile-pass
 * @section 3.2
 * @design 用户定义元组类型: [type1, type2] 声明、索引访问元素
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testTupleDeclare(): void {
  let t1: [int, string] = [1, "hello"]
  let num: int = t1[0]
  let str: string = t1[1]

  let t2: [string, boolean, int] = ["a", true, 42]
  let s: string = t2[0]
  let b: boolean = t2[1]
  let i: int = t2[2]

  let nested: [int, [string, int]] = [1, ["a", 2]]
}