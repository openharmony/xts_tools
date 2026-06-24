/**
 * @id TYP_03_05_008_PASS_TYPE_ALIAS_RECURSIVE
 * @expect compile-pass
 * @section 3.5
 * @design type alias 链式引用，递归替换
 * @note 正向用例：A → B → C 链式替换
 */
type ChainA = ChainB
type ChainB = ChainC
type ChainC = number

function testAliasRecursiveReplacement(): void {
  let a: ChainA = 1.0     // 实际是 number
  let b: ChainB = 2.0     // 实际是 number
  let c: ChainC = 3.0     // 实际是 number

  // 三者完全互换
  a = b
  b = c
  c = a + b   // 算术运算用 number
}