/**
 * @id TYP_03_06_04_005_PASS_SHORT_CIRCUIT
 * @expect compile-pass
 * @section 3.6.4
 * @design 短路 && 和 ||
 * @note 正向用例：&& ||
 */
function testShortCircuit(): void {
  let t: boolean = true
  let f: boolean = false

  let r1: boolean = t && f
  let r2: boolean = t || f
  let r3: boolean = (1 < 2) && (3 > 1)
  let r4: boolean = (1 > 2) || (3 < 5)
}