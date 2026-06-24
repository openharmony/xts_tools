/**
 * @id TYP_03_19_006_FAIL_UNION_FUNCTION_NO_PARENS
 * @expect compile-fail
 * @section 3.19
 * @design 函数类型在联合类型中不加括号，spec 3.19 明确规定应产生编译时错误
 * @note 反向用例：spec 3.19 规定 "A compile-time error occurs if type is a function
 *       type not enclosed in parentheses"，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求报错，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
type Invalid = string | () => string | number