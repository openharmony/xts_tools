/**
 * @id TYP_03_20_013_FAIL_DIRECT_MEMBER_ACCESS
 * @expect compile-fail
 * @section 3.20
 * @design nullish 类型不能直接访问成员，必须使用 ?. 或转换
 * @note 反向用例：直接 obj.field / obj.method()
 */
class Person13 {
  name: string = ""
  greet(): string { return "hi" }
}

function testDirectMemberAccessFail(): void {
  let p: Person13 | undefined = undefined
  let n: string = p.name
  let g: string = p.greet()
}