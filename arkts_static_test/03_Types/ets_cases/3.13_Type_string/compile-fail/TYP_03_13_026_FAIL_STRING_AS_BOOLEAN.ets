/**
 * @id TYP_03_13_026_FAIL_STRING_AS_BOOLEAN
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string 不能隐式转换为 boolean
 * @note 反向用例：string 与 boolean 之间无隐式转换
 */
let s: string = "true"
let b: boolean = s