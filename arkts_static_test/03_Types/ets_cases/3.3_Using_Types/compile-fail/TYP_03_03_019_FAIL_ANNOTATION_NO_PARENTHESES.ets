/**
 * @id TYP_03_03_019_FAIL_ANNOTATION_NO_PARENTHESES
 * @expect compile-fail
 * @section 3.3
 * @design 类型前置注解必须用括号: @anno() (type)
 *   spec §3.3 明确：@my_annotation (A|B) 编译错误
 * @note 反向用例：注解前缺少 () 导致编译失败
 */
@interface my_annotation {}

class A19 {}
class B19 {}

function testAnnotationNoParenthesesFail(): void {
  let var_name: @my_annotation (A19 | B19) = new A19()
}