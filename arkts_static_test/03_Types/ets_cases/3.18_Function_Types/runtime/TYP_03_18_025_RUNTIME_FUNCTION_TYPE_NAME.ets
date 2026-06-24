/**
 * @id TYP_03_18_025_RUNTIME_FUNCTION_TYPE_NAME
 * @expect runtime
 * @section 3.18.1
 * @design Type Function 的 name 属性验证
 * @note 运行时用例：验证 Function.name 属性值
 */
function printName(f: Function): void {
  console.log(f.name)
}

function foo(): void {}

class A {
  static sm(): void {}
  m(): void {}
}

function main(): void {
  // 函数名
  let f1: Function = foo
  if (f1.name != "foo") {
    throw new Error("f1.name should be 'foo', got: " + f1.name)
  }

  // 静态方法名
  let f2: Function = A.sm
  if (f2.name != "sm") {
    throw new Error("f2.name should be 'sm', got: " + f2.name)
  }

  // 实例方法名
  let a: A = new A()
  let f3: Function = a.m
  if (f3.name != "m") {
    throw new Error("f3.name should be 'm', got: " + f3.name)
  }

  // lambda 赋给变量 → 名称为变量名
  let x: Function = (): void => {}
  if (x.name != "x") {
    throw new Error("x.name should be 'x', got: " + x.name)
  }

  console.log("Function type name verified")
}