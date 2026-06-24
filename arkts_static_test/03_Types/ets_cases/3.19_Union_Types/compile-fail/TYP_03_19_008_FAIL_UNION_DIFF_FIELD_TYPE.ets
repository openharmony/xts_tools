/**
 * @id TYP_03_19_008_FAIL_UNION_DIFF_FIELD_TYPE
 * @expect compile-fail
 * @section 3.19.2
 * @design 联合类型同名字段不同类型应产生编译时错误
 * @note 反向用例：spec 3.19.2 规定 "field types differ" 应产生 compile-time error
 *       但 ArkTS 实际编译通过，允许访问不同类型的同名字段
 *       ⚠️ SPEC 不一致：spec 要求报错，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
class A8 {
  s: string = "aa"
}

class B8 {
  s: number = 3.14
}

function main(): void {
  let u: A8 | B8 = new A8()
  console.log(u.s)
}