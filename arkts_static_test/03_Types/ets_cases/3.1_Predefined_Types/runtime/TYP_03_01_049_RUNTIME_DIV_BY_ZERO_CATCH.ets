/**
 * @id TYP_03_01_049_RUNTIME_DIV_BY_ZERO_CATCH
 * @expect runtime
 * @section 3.1
 * @design 除零异常可被 try-catch 捕获
 * @note 运行时用例：验证 ArithmeticError 可恢复
 */
function main(): void {
  let a: int = 10
  let b: int = 0
  let caught: boolean = false

  try {
    let c: int = a / b
    console.log(c)
  } catch (e) {
    caught = true
  }

  if (!caught) {
    throw new Error("Division by zero should throw and be catchable")
  }

  console.log("Division by zero catch verified")
}