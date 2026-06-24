/**
 * @id TYP_03_18_01_002_PASS_FUNCTION_NAME_PROPERTY
 * @expect compile-pass
 * @section 3.18.1
 * @design Function.name 属性：函数名、方法名、lambda 变量名
 * @note 正向用例：验证 Function.name 属性编译通过
 */
function namedFunc(): void {}

class A {
  static sm(): void {}
  m(): void {}
}

function testFunctionNameProperty(): void {
  let f1: Function = namedFunc
  let n1: string = f1.name

  let f2: Function = A.sm
  let n2: string = f2.name

  let a: A = new A()
  let f3: Function = a.m
  let n3: string = f3.name

  let x: Function = (): void => {}
  let n4: string = x.name
}