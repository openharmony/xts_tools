/**
 * @id TYP_03_05_019_RUNTIME_GENERIC_ALIAS_REF
 * @expect runtime
 * @section 3.5
 * @design 泛型 type alias 引用 MyType<T> = A<T>[] 的运行时行为
 * @note 运行时用例：spec §3.5 例子 type MyType<T> = A<T>[]
 */
class A19r<T> {
  v: T | undefined
  constructor() { this.v = undefined }
  set(x: T): void { this.v = x }
  get(): T | undefined { return this.v }
}

type MyArr<T> = A19r<T>[]

function main(): void {
  let x: MyArr<int> = [new A19r<int>(), new A19r<int>()]

  // alias 与底层类型互换
  let y: A19r<int>[] = x
  if (y.length != 2) {
    throw new Error("alias array length failed")
  }

  // 元素操作
  x[0].set(100)
  let r: int | undefined = y[0].get()
  if (r != 100) {
    throw new Error("alias element modify not visible")
  }

  console.log("Generic alias ref runtime verified")
}