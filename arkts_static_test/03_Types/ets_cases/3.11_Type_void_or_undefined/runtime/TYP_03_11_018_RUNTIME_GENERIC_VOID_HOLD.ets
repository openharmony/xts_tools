/**
 * @id TYP_03_11_018_RUNTIME_GENERIC_VOID_HOLD
 * @expect runtime
 * @section 3.11
 * @design 泛型 A<void> 持有 undefined
 * @note 运行时用例：void 作为泛型实参
 */
class A18<T> {
  f: T
  constructor(f: T) { this.f = f }
  m(): T { return this.f }
}

function main(): void {
  let a1 = new A18<void>(undefined)
  if (a1.f !== undefined) {
    throw new Error("A<void>.f should be undefined")
  }
  if (a1.m() !== undefined) {
    throw new Error("A<void>.m should be undefined")
  }

  let a2 = new A18<undefined>(undefined)
  if (a2.m() !== undefined) {
    throw new Error("A<undefined>.m should be undefined")
  }

  console.log("generic void hold verified")
}