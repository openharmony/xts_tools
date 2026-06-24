/**
 * @id TYP_03_06_03_006_PASS_INCR_DECR
 * @expect compile-pass
 * @section 3.6.3
 * @design 浮点自增自减前后缀
 * @note 正向用例：++ -- 用于浮点
 */
function testIncrDecr(): void {
  let f: float = 1.0f
  f++
  ++f
  f--
  --f

  let d: double = 1.0
  d++
  ++d
  d--
  --d
}