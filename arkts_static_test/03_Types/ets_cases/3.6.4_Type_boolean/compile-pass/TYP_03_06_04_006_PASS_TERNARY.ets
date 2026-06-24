/**
 * @id TYP_03_06_04_006_PASS_TERNARY
 * @expect compile-pass
 * @section 3.6.4
 * @design boolean 三元 ?:
 * @note 正向用例：boolean 三元
 */
function testTernary(): void {
  let cond: boolean = true
  let r1: int = cond ? 1 : 2
  let r2: string = cond ? "yes" : "no"
  let r3: boolean = cond ? true : false
}