/**
 * @id TYP_03_21_05_009_RUNTIME_T_ASSIGN
 * @expect runtime
 * @section 3.21.5
 * @design T → Readonly<T> 赋值运行时等值
 * @note 运行时用例
 */
class C9 {
  x: int = 10
  y: int = 20
}

function main(): void {
  let c = new C9()
  let ro: Readonly<C9> = c
  if (ro.x != 10 || ro.y != 20) throw new Error("assignable failed")
  console.log("Readonly T assign runtime verified")
}