/**
 * @id TYP_03_10_003_PASS_NEVER_PARAMETER
 * @expect compile-pass
 * @section 3.10
 * @design never 作参数类型阻止函数体被执行（spec §3.10）
 * @note 正向用例
 */
function fooN3(): never {
  throw new Error("never returns")
}

function barN3(p: never): void {
  // body never executes
}

function testNeverParameter(): void {
  // bar 用 never 参数，仅当 p 类型可解析为 never 才能调用
  barN3(fooN3())   // foo 永不返回，bar 也永不调用
}