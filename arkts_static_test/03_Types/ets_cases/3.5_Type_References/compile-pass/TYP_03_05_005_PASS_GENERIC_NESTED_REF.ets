/**
 * @id TYP_03_05_005_PASS_GENERIC_NESTED_REF
 * @expect compile-pass
 * @section 3.5
 * @design 嵌套泛型类型引用 A<B<C>>
 * @note 正向用例：spec §3.5 例子中嵌套 generic instantiation
 */
class Cont5<T> {
  v: T
  constructor(x: T) { this.v = x }
}

function testGenericNestedRef(): void {
  // 嵌套泛型引用
  let nested: Cont5<Cont5<int>> = new Cont5<Cont5<int>>(new Cont5<int>(42))
  let triple: Cont5<Cont5<Cont5<string>>> =
    new Cont5<Cont5<Cont5<string>>>(new Cont5<Cont5<string>>(new Cont5<string>("a")))

  // 数组与泛型嵌套
  let arr: Cont5<int>[] = [new Cont5<int>(1), new Cont5<int>(2)]
}