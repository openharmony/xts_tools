/**
 * @id TYP_03_10_009_RUNTIME_NEVER_THROWS
 * @expect runtime
 * @section 3.10
 * @design 调用 never 函数抛异常
 * @runtime-throws=Error
 * @note 运行时用例：never 函数调用必抛错
 */
function panicAlways(): never {
  throw new Error("panic from never function")
}

function main(): void {
  panicAlways()
  // 此后代码不可达
  console.log("never reached")
}