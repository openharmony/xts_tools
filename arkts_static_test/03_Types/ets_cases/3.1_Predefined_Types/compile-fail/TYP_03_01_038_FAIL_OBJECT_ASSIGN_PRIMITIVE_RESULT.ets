/**
 * @id TYP_03_01_038_FAIL_OBJECT_ASSIGN_PRIMITIVE_RESULT
 * @expect compile-fail
 * @section 3.1
 * @design Object 类型不能直接接受原始类型表达式作为 narrowing target
 * @note 反向用例：将 Object 赋值给原始类型变量
 *       设计发现：ArkTS 实际允许 Object+Object（autoboxing），与 Java 类似
 */
function testObjectNarrowingFail(): void {
  let o: Object = 42

  // Object 不能 narrowing 到 int 而不显式转换
  let n: int = o

  // Object 不能直接做 string 算术
  let s: Object = "hello"
  let result: int = s
}