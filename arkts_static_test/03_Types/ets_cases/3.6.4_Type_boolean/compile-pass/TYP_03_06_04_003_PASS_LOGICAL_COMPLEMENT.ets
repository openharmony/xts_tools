/**
 * @id TYP_03_06_04_003_PASS_LOGICAL_COMPLEMENT
 * @expect compile-pass
 * @section 3.6.4
 * @design 逻辑非 !
 * @note 正向用例：!
 */
function testLogicalComplement(): void {
  let t: boolean = true
  let f: boolean = !t
  let t2: boolean = !!t

  let result: boolean = !(1 < 2)
}