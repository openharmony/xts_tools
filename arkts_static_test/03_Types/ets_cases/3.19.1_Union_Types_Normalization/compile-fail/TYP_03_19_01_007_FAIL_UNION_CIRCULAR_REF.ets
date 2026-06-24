/**
 * @id TYP_03_19_01_007_FAIL_UNION_CIRCULAR_REF
 * @expect compile-fail
 * @section 3.19.1
 * @design 联合类型循环引用应产生编译时错误
 * @note 反向用例：验证 type E = E 循环引用报错
 */
type E = E