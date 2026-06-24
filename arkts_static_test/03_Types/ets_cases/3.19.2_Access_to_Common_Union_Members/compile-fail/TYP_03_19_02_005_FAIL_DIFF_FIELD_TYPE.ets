/**
 * @id TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE
 * @expect compile-fail
 * @section 3.19.2
 * @design 联合类型同名字段不同类型不可访问
 * @note 反向用例：spec 3.19.2 要求 field types differ 时 compile-time error
 *       ⚠️ SPEC 不一致：ArkTS 实际编译通过，允许访问不同类型字段
 *       分类：D 类（Spec 与实现不一致）
 */
class A5 { s: string = "aa" }
class B5 { s: number = 3.14 }

function testDiffFieldTypeFail(): void {
  let u: A5 | B5 = new A5()
  console.log(u.s)
}