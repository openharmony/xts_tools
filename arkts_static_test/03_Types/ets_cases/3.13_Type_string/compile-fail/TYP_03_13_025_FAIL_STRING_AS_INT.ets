/**
 * @id TYP_03_13_025_FAIL_STRING_AS_INT
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string 不能隐式转换为 int
 * @note 反向用例：string 与 int 之间无隐式转换
 */
let s: string = "42"
let n: int = s