/**
 * @id TYP_03_16_009_FAIL_FIXED_TO_RESIZABLE
 * @expect compile-fail
 * @section 3.16
 * @design 验证 Fixed-Size Array 不能赋值给 Resizable Array
 * @note 反向用例：验证该场景应产生编译时错误
 */
let fixed: FixedArray<number> = [1, 2, 3]
let resizable: number[] = fixed
