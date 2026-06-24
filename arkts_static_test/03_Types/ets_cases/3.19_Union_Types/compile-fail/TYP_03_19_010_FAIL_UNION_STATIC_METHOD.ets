/**
 * @id TYP_03_19_010_FAIL_UNION_STATIC_METHOD
 * @expect compile-fail
 * @section 3.19.2
 * @design 通过联合类型访问静态方法应产生编译时错误
 * @note 反向用例：验证静态方法不能通过联合类型调用
 */
class A10 {
  static foo(): void {}
}

class B10 {
  static foo(): void {}
}

type AB10 = A10 | B10

function main(): void {
  AB10.foo()
}