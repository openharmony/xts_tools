/**
 * @id TYP_03_03_006_PASS_INPLACE_TUPLE
 * @expect compile-pass
 * @section 3.3
 * @design 就地元组类型声明 [T1, T2]、readonly [T1, T2]
 * @note 正向用例：验证就地元组类型声明
 */
function testInplaceTuple(): void {
  let t1: [int, string] = [1, "a"]
  let t2: [number, number] = [1.0, 2.0]
  let t3: readonly [int, string] = [1, "x"]
  let t4: [int, string, boolean] = [1, "y", true]
}