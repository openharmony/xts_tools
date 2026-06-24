/**
 * @id TYP_03_22_009_FAIL_ENUM_USE_NO_INIT
 * @expect compile-fail
 * @section 3.22
 * @design enumeration types 无默认值，未初始化使用应编译失败
 * @note 反向用例：spec 指出 enumeration types have no default values
 */
enum DefaultEnum { A, B }
function testEnumUseNoInitFail(): void {
  let e: DefaultEnum
  let v: int = e.valueOf()
}
