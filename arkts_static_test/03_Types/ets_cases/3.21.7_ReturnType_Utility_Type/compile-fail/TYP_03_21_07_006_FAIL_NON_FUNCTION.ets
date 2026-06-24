/**
 * @id TYP_03_21_07_006_FAIL_NON_FUNCTION
 * @expect compile-fail
 * @section 3.21.7
 * @design 非函数类型应编译错误（spec 原例）
 * @note 反向用例：ReturnType<string> 错误
 */
type Incorrect = ReturnType<string>