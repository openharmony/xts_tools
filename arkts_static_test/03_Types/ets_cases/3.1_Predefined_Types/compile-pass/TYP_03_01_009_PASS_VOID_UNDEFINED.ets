/**
 * @id TYP_03_01_009_PASS_VOID_UNDEFINED
 * @expect compile-pass
 * @section 3.1
 * @design 函数返回 void、函数返回 undefined、return undefined 显式写法、undefined 变量声明
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function returnsVoid(): void {
  return
}

function returnsUndefined(): undefined {
  return undefined
}

function returnsExplicitVoid(): void {
  return undefined
}

function optParam(p?: int): void {}

function testVoidUndefined(): void {
  returnsVoid()
  let u: undefined = undefined
}

function callOptParam(): void {
  optParam()
  optParam(1)
  optParam(undefined)
}