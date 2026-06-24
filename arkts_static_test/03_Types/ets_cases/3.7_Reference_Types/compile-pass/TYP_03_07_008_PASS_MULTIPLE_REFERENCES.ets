/**
 * @id TYP_03_07_008_PASS_MULTIPLE_REFERENCES
 * @expect compile-pass
 * @section 3.7
 * @design 多个变量持有同一对象引用（spec §3.7 关键语义）
 * @note 正向用例：多引用同对象
 */
class Box8 {
  v: int = 0
}

function testMultipleReferences(): void {
  let b1: Box8 = new Box8()
  let b2: Box8 = b1   // 同一对象，两个引用
  let b3: Box8 = b2
}