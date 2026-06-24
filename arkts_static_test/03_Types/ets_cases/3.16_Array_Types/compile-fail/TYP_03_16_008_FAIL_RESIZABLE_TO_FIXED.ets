/**
 * @id TYP_03_16_008_FAIL_RESIZABLE_TO_FIXED
 * @expect compile-fail
 * @section 3.16
 * @design 验证 Resizable Array 不能赋值给 Fixed-Size Array
 * @note 反向用例：验证该场景应产生编译时错误
 */
let resizable: number[] = [1, 2, 3]
let fixed: FixedArray<number> = resizable
