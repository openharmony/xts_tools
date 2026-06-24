/**
 * @id TYP_03_06_01_009_PASS_NUMBER_DOUBLE_ALIAS
 * @expect compile-pass
 * @section 3.6.1
 * @design number 是 double 的别名，二者完全等价
 * @note 正向用例：number 与 double 互换使用
 */
function testNumberDoubleAlias(): void {
  let n: number = 3.14
  let d: double = n      // 完全互换
  let n2: number = d

  // Number 别名
  let cap: Number = 1.0
  let cap2: number = cap
}