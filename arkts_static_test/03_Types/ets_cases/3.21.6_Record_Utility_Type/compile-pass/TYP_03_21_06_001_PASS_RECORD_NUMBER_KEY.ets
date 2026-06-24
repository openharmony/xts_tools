/**
 * @id TYP_03_21_06_001_PASS_RECORD_NUMBER_KEY
 * @expect compile-pass
 * @section 3.21.6
 * @design Record<number, Object> 合法
 * @note 正向用例：数值 key
 */
type R1 = Record<number, Object>

function testRecordNumberKey(): void {
  let r: R1 = {0: new Object(), 1: "string"}
}