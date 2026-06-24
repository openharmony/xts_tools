/**
 * @id TYP_03_03_002_PASS_USER_TYPE_REF
 * @expect compile-pass
 * @section 3.3
 * @design 通过类名/接口名/枚举名做类型引用
 * @note 正向用例：验证用户定义类型名做类型引用
 *       注：局部类必须移到顶层（TYP-006 已知设计问题）
 */
class MyPoint {
  x: int = 0
  y: int = 0
}

interface MyShape {
  area(): int
}

class Square implements MyShape {
  area(): int { return 16 }
}

enum MyEnum {
  A,
  B,
  C
}

function testUserTypeRef(): void {
  let p: MyPoint = new MyPoint()
  let e: MyEnum = MyEnum.A
  let s: MyShape = new Square()
}