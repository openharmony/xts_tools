/**
 * @id TYP_03_21_04_006_FAIL_REQUIRED_NON_CLASS
 * @expect compile-fail
 * @section 3.21.4
 * @design Required 应用于非 class/interface 应编译错误
 * @note 反向用例：spec 要求
 */
type Bad6 = Required<int>