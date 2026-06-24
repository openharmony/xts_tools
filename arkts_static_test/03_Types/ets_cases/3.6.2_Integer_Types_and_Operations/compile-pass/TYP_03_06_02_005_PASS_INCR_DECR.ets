/**
 * @id TYP_03_06_02_005_PASS_INCR_DECR
 * @expect compile-pass
 * @section 3.6.2
 * @design 自增自减运算前缀/后缀
 * @note 正向用例：++ -- 前后缀
 */
function testIncrDecr(): void {
  let a: int = 10

  let pre: int = ++a    // 11
  let post: int = a++   // 11，运算后 a=12

  let preD: int = --a   // 11
  let postD: int = a--  // 11

  let lo: long = 100
  lo++
  ++lo
  lo--
  --lo
}