/**
 * @id TYP_03_18_017_FAIL_REST_PARAM_POSITION
 * @expect compile-fail
 * @section 3.18
 * @design 函数类型中 rest 参数必须在最后，否则编译时错误
 * @note 反向用例：rest 参数后跟其他参数
 */
// rest 参数后跟必选参数应产生编译时错误
type BadRest1 = (...nums: int[], x: string) => void