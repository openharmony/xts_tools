/**
 * @id TYP_03_03_013_FAIL_UNDEFINED_TYPE_REF
 * @expect compile-fail
 * @section 3.3
 * @design 引用未定义的类型名应编译失败
 * @note 反向用例：使用不存在的类型名作类型引用
 */
function testUndefinedTypeRefFail(): void {
  let x: NonExistentType = 1
  let y: AlsoMissing = "hi"
}