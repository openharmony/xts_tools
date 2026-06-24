/**
 * @id TYP_03_21_05_004_FAIL_NON_CLASS
 * @expect compile-fail
 * @section 3.21.5
 * @design Readonly 应用于非 class/interface 应编译错误
 * @note 反向用例
 */
type Bad4 = Readonly<int>