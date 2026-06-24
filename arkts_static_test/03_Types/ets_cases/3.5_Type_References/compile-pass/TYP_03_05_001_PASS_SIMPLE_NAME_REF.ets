/**
 * @id TYP_03_05_001_PASS_SIMPLE_NAME_REF
 * @expect compile-pass
 * @section 3.5
 * @design 通过简单类型名做类型引用
 * @note 正向用例：simple name 类型引用
 */
class MyClass5 {
  v: int = 0
}

interface MyIface5 {
  do5(): void
}

enum MyEnum5 { X, Y }

function testSimpleNameRef(): void {
  // 预定义类型简单名
  let n: int = 1
  let s: string = "x"
  let b: boolean = true

  // 用户类型简单名
  let c: MyClass5 = new MyClass5()
  let e: MyEnum5 = MyEnum5.X
}