/**
 * @id TYP_03_12_014_FAIL_NULL_TO_NONNULLISH_FIELD
 * @expect compile-fail
 * @section 3.12
 * @design 类字段声明为非空类型但默认值为 null
 * @note 反向用例：验证非空类字段不能初始化为 null
 */
class FailField14 {
  name: string = null
  count: int = null
}