/**
 * @id TYP_03_21_08_004_RUNTIME
 * @expect runtime
 * @section 3.21.8
 * @design utility 类型赋值后 public 字段可读取
 * @note 运行时用例
 */
class C4 {
  public_field: int = 444
  private private_field: string = "test"
}

function main(): void {
  let ro: Readonly<C4> = new C4()
  if (ro.public_field != 444) throw new Error("public field value failed")
  console.log("Private fields utility runtime verified")
}