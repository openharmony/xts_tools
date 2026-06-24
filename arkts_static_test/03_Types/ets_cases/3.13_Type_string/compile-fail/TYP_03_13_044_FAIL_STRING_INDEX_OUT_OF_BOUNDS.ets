/**
 * @id TYP_03_13_044_FAIL_STRING_INDEX_OUT_OF_BOUNDS
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string 索引类型检查（索引必须是整数类型）
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: string = "hello"
let c: string = s["0"]
