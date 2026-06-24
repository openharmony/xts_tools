/**
 * @id TYP_03_02_002_PASS_INTERFACE_DECLARE
 * @expect compile-pass
 * @section 3.2
 * @design 用户定义接口类型声明、implements 实现、接口方法调用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
interface Shape {
  area(): int
}

class Circle implements Shape {
  r: int
  constructor(r: int) {
    this.r = r
  }
  area(): int {
    return 3 * this.r * this.r
  }
}

function testInterfaceDeclare(): void {
  let s: Shape = new Circle(5)
  let a: int = s.area()
}