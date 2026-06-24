/**
 * @id TYP_03_01_031_RUNTIME_ANY_INSTANCEOF
 * @expect runtime
 * @section 3.1
 * @design Any 类型 instanceof 运行时类型检查
 * @note 运行时用例：实际执行验证 Any 变量在运行时的类型可识别
 */
function main(): void {
  let a: Any = 42
  // Any 持有 int 时，instanceof Object 应为 true（int 装箱后是 Object 子类）
  if (!(a instanceof Object)) {
    throw new Error("Any holding int should be instanceof Object")
  }

  a = "hello"
  if (!(a instanceof string)) {
    throw new Error("Any holding string should be instanceof string")
  }

  a = null
  // null 检查
  if (a !== null) {
    throw new Error("Any should hold null")
  }

  console.log("Any instanceof verified")
}