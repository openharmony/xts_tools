/**
 * @id TYP_03_09_010_RUNTIME_OBJECT_BOXING
 * @expect runtime
 * @section 3.9
 * @design Object 装箱数值后值正确保留
 * @note 运行时用例
 */
function main(): void {
  let i: int = 42
  let o: Object = i
  if (!(o instanceof Object)) {
    throw new Error("boxed int should be Object")
  }

  // cast 回原类型
  let back: int = o as int
  if (back != 42) {
    throw new Error("unbox failed")
  }

  // double 装箱
  let d: double = 3.14
  let od: Object = d
  let dBack: double = od as double
  if (dBack != 3.14) {
    throw new Error("double unbox failed")
  }

  console.log("Object boxing verified")
}