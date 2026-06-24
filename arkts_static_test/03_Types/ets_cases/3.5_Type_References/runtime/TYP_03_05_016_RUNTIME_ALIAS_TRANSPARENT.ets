/**
 * @id TYP_03_05_016_RUNTIME_ALIAS_TRANSPARENT
 * @expect runtime
 * @section 3.5
 * @design type alias 引用透明：alias 和底层类型完全互换
 * @note 运行时用例：spec §3.5 alias 替换语义运行时验证
 */
type T1Rt = Object
type T2Rt = number

function fooRt(t1: T1Rt, t2: T2Rt): number {
  // alias 在运算上完全透明
  let s: number = t2 + t2
  return s
}

function main(): void {
  let a: T1Rt = "hello"
  let b: T2Rt = 3.14

  let r: number = fooRt(a, b)
  if (r != 6.28) {
    throw new Error("alias arithmetic failed: " + r)
  }

  // alias 链式替换
  let chain1: T2Rt = 5.0
  let chain2: number = chain1     // T2 = number 透明
  if (chain1 != chain2) {
    throw new Error("alias chain failed")
  }

  console.log("Alias transparency runtime verified")
}