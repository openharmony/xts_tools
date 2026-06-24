/**
 * @id TYP_03_06_04_007_PASS_STRING_CONCAT
 * @expect compile-pass
 * @section 3.6.4
 * @design boolean + string 拼接，boolean 转 "true"/"false"
 * @note 正向用例：spec §3.6.4 字符串拼接
 */
function testStringConcat(): void {
  let t: boolean = true
  let f: boolean = false

  let s1: string = "flag=" + t
  let s2: string = f + " is false"
  let s3: string = "result=" + (1 < 2)
}