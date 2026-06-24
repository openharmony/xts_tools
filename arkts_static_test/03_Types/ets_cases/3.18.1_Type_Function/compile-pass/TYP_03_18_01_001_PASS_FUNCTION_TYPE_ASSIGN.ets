/**
 * @id TYP_03_18_01_001_PASS_FUNCTION_TYPE_ASSIGN
 * @expect compile-pass
 * @section 3.18.1
 * @design 函数/方法/lambda 赋给 Function 类型变量
 * @note 正向用例：验证 Function 类型接受各种函数值
 */
function foo(): void {}

class MyClass {
  static sm(): void {}
  m(): void {}
}

function testFunctionTypeAssign(): void {
  // 函数赋给 Function
  let f1: Function = foo

  // 静态方法赋给 Function
  let f2: Function = MyClass.sm

  // 实例方法赋给 Function
  let obj: MyClass = new MyClass()
  let f3: Function = obj.m

  // lambda 赋给 Function
  let f4: Function = (): void => {}
  let f5: Function = (x: int): int => { return x }
}