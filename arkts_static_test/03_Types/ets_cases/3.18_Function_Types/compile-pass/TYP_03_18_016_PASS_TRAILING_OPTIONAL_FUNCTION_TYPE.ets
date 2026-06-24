/**
 * @id TYP_03_18_016_PASS_TRAILING_OPTIONAL_FUNCTION_TYPE
 * @expect compile-pass
 * @section 3.18
 * @design spec 3.18 规定函数类型可以有 trailing optional 参数：(x: int, y?: string) => void
 *       必选参数在前，可选参数在后，这是合法语法
 * @note ⚠️ SPEC 不一致：spec 3.18 允许此语法，但 ArkTS 编译器报错
 *       ESY0219: A required parameter cannot follow an optional parameter
 *       分类：D 类（Spec 与实现不一致）
 *       编译器实际报错，但按 spec 应该通过
 */
// spec 3.18 示例代码：
// type TrailingOptional = (x: int, y?: string) => void  // spec 合法
// 但 ArkTS 编译器实际报错：A required parameter cannot follow an optional parameter
type TrailingOptional = (x: int, y?: string) => void