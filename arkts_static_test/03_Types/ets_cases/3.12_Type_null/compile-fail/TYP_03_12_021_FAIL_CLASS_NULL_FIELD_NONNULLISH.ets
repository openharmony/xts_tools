/**
 * @id TYP_03_12_021_FAIL_CLASS_NULL_FIELD_NONNULLISH
 * @expect compile-fail
 * @section 3.12
 * @design 类字段声明为 Object 类型但默认值为 null
 * @note 反向用例：验证 Object 类字段不能默认为 null
 */
class FailClass21 {
  data: Object = null
}