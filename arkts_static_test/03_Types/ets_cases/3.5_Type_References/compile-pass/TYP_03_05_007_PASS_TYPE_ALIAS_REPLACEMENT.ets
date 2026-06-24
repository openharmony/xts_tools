/**
 * @id TYP_03_05_007_PASS_TYPE_ALIAS_REPLACEMENT
 * @expect compile-pass
 * @section 3.5
 * @design type alias 引用被透明替换为底层类型（spec 关键例子）
 * @note 正向用例：spec §3.5 中 T1=Object, T2=number 替换语义
 */
type T1 = Object
type T2 = number

function foo7(t1: T1, t2: T2): void {
  // 类型兼容性测试用 Object 和 number
  t1 = t2

  // 运算合法性测试用 number 而非 T2
  let s: number = t2 + t2
}

function testAliasReplacement(): void {
  let a: T1 = "hello"
  let b: T2 = 3.14
  foo7(a, b)
}