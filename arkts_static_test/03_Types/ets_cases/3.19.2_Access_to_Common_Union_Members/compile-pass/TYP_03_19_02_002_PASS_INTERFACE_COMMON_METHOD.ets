/**
 * @id TYP_03_19_02_002_PASS_INTERFACE_COMMON_METHOD
 * @expect compile-pass
 * @section 3.19.2
 * @design interface/class union 中公共同签名方法可调用
 * @note 正向用例：两个接口都含 area(): int
 */
interface Shape2A {
  area(): int
}
interface Shape2B {
  area(): int
}

class Square2 implements Shape2A {
  area(): int { return 16 }
}
class Circle2 implements Shape2B {
  area(): int { return 9 }
}

function testInterfaceCommon(x: Shape2A | Shape2B): int {
  return x.area()
}