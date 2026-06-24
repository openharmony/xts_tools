/**
 * @id TYP_03_05_012_FAIL_GENERIC_CONSTRAINT_VIOLATE
 * @expect compile-fail
 * @section 3.5
 * @design 泛型 type reference 必须满足类型参数约束
 * @note 反向用例：违反 extends 约束
 */
class Base12 {
  baseM(): void {}
}

class Constrained<T extends Base12> {
  v: T
  constructor(x: T) { this.v = x }
}

class NotASubtype {
  other(): void {}
}

function testConstraintViolateFail(): void {
  // NotASubtype 不是 Base12 的子类型
  let c1: Constrained<NotASubtype> = new Constrained<NotASubtype>(new NotASubtype())
  // string 也不是
  let c2: Constrained<string> = new Constrained<string>("x")
}