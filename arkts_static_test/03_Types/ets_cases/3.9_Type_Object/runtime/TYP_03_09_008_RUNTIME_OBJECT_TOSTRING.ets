/**
 * @id TYP_03_09_008_RUNTIME_OBJECT_TOSTRING
 * @expect runtime
 * @section 3.9
 * @design Object.toString 返回字符串
 * @note 运行时用例
 */
class Custom8 {
  toString(): string { return "custom8" }
}

function main(): void {
  let o1: Object = "hello"
  if (o1.toString() != "hello") {
    throw new Error("string.toString failed")
  }

  let o2: Object = new Custom8()
  if (o2.toString() != "custom8") {
    throw new Error("custom toString failed")
  }

  console.log("Object.toString verified")
}