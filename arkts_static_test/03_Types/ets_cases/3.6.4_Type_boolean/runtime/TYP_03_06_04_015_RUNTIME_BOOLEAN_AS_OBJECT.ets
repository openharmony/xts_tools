/**
 * @id TYP_03_06_04_015_RUNTIME_BOOLEAN_AS_OBJECT
 * @expect runtime
 * @section 3.6.4
 * @design boolean 装箱为 Object 后 instanceof 检查
 * @note 运行时用例：boolean 作 Object 子类型
 */
function main(): void {
  let b: boolean = true
  let o: Object = b
  if (!(o instanceof Object)) {
    throw new Error("boolean as Object failed instanceof")
  }

  let arr: Object[] = [true, false, true]
  if (arr.length != 3) {
    throw new Error("Object[] length failed")
  }

  console.log("Boolean as Object verified")
}