/**
 * @id TYP_03_21_05_005_PASS_ASSIGNABLE
 * @expect compile-pass
 * @section 3.21.5
 * @design T 可赋值给 Readonly<T>
 * @note 正向用例：spec 原例
 */
class A5 {
  f1: string = ""
  f2: number = 1
  f3: boolean = true
}

function testAssignable(): void {
  let x = new A5()
  let y: Readonly<A5> = x
}