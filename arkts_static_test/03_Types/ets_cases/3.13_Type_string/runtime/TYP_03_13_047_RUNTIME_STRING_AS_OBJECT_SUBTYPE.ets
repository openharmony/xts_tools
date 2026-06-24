/**
 * @id TYP_03_13_047_RUNTIME_STRING_AS_OBJECT_SUBTYPE
 * @expect runtime
 * @section 3.13
 * @design 验证 string 是 Object 的子类型，运行时 instanceof 验证
 * @note 运行时用例：验证 string 变量 instanceof Object 为 true
 */
function main(): void {
  let s: string = "hello"
  let o: Object = s

  if (!(s instanceof Object)) throw new Error("string not instanceof Object")
  if (!(o instanceof Object)) throw new Error("Object var not instanceof Object")

  let s2: string = ""
  let o2: Object = s2
  if (!(o2 instanceof Object)) throw new Error("empty string Object assert failed")

  console.log("TYP_03_13_047 verified")
}