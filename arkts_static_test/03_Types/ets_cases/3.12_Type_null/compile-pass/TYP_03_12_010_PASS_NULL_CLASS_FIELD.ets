/**
 * @id TYP_03_12_010_PASS_NULL_CLASS_FIELD
 * @expect compile-pass
 * @section 3.12
 * @design 类字段类型为 T | null，初始化为 null
 * @note 正向用例：验证 null 在类字段中的使用
 */
class NullableField10 {
  name: string | null = null
  value: int | null = null
}

function testNullClassField(): void {
  let obj: NullableField10 = new NullableField10()
  obj.name = "test"
  obj.name = null
  obj.value = 10
  obj.value = null
}