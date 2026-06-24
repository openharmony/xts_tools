/**
 * @id TYP_03_01_043_RUNTIME_BOOLEAN_SHORTCIRCUIT
 * @expect runtime
 * @section 3.1
 * @design boolean && 和 || 的短路求值
 * @note 运行时用例：验证副作用未触发证明短路
 */
let sideEffect: int = 0

function trueWithSideEffect(): boolean {
  sideEffect++
  return true
}

function falseWithSideEffect(): boolean {
  sideEffect++
  return false
}

function main(): void {
  sideEffect = 0
  // false && X 应该短路，不执行右侧
  let r1: boolean = false && trueWithSideEffect()
  if (sideEffect != 0) {
    throw new Error("&& should short-circuit on false, sideEffect=" + sideEffect)
  }

  sideEffect = 0
  // true || X 应该短路，不执行右侧
  let r2: boolean = true || trueWithSideEffect()
  if (sideEffect != 0) {
    throw new Error("|| should short-circuit on true, sideEffect=" + sideEffect)
  }

  sideEffect = 0
  // true && X 应执行右侧
  let r3: boolean = true && trueWithSideEffect()
  if (sideEffect != 1) {
    throw new Error("&& should evaluate right when left=true")
  }

  console.log("Boolean short-circuit verified")
}