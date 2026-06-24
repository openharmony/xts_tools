/**
 * @id TYP_03_06_01_020_RUNTIME_NUMERIC_AS_OBJECT
 * @expect runtime
 * @section 3.6.1
 * @design 数值赋值给 Object 后 instanceof 检查
 * @note 运行时用例：数值类型作为 Object 子类型的运行时行为
 */
function main(): void {
  let i: int = 42
  let o: Object = i
  if (!(o instanceof Object)) {
    throw new Error("int as Object failed instanceof")
  }

  let d: double = 3.14
  let o2: Object = d
  if (!(o2 instanceof Object)) {
    throw new Error("double as Object failed instanceof")
  }

  // Object[] 接受数值
  let arr: Object[] = [1 as int, 2 as int, 3.14, true as Object]
  if (arr.length != 4) {
    throw new Error("Object[] length failed")
  }

  console.log("Numeric as Object verified")
}