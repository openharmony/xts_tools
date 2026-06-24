/**
 * @id TYP_03_18_011_FAIL_MANDATORY_AFTER_OPTIONAL
 * @expect compile-fail
 * @section 3.18
 * @design 函数类型可选参数后跟必选参数应产生编译时错误
 * @note 反向用例：验证 (x?: number, y: string) => void 不合法
 */
type BadFunc1 = (x?: number, y: string) => void