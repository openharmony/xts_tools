/**
 * @id TYP_03_05_017_RUNTIME_GENERIC_REF_INSTANTIATE
 * @expect runtime
 * @section 3.5
 * @design 泛型类型引用实例化运行时行为
 * @note 运行时用例：不同 type args 实例化的运行时区分
 */
class Holder17<T> {
  v: T
  constructor(x: T) { this.v = x }
  get(): T { return this.v }
}

class Pair17<A, B> {
  first: A
  second: B
  constructor(a: A, b: B) {
    this.first = a
    this.second = b
  }
}

function main(): void {
  // 单 type arg
  let h1: Holder17<int> = new Holder17<int>(42)
  if (h1.get() != 42) {
    throw new Error("Holder17<int> failed")
  }

  let h2: Holder17<string> = new Holder17<string>("hello")
  if (h2.get() != "hello") {
    throw new Error("Holder17<string> failed")
  }

  // 多 type args
  let p: Pair17<int, string> = new Pair17<int, string>(1, "y")
  if (p.first != 1 || p.second != "y") {
    throw new Error("Pair17 failed")
  }

  // 嵌套
  let nested: Holder17<Holder17<int>> = new Holder17<Holder17<int>>(new Holder17<int>(99))
  if (nested.get().get() != 99) {
    throw new Error("nested Holder17 failed")
  }

  console.log("Generic ref instantiate verified")
}