/**
 * @id TYP_03_21_03_009_RUNTIME_OBJECT_LITERAL_VALUE
 * @expect runtime
 * @section 3.21.3
 * @design Object literal 赋 Partial 后值正确
 * @note 运行时用例：Object literal 有自己的内置 getter/setter
 */
interface I9 {
  property: number
}

function main(): void {
  let p: Partial<I9> = {property: 42}
  if (p.property != 42) {
    throw new Error("Object literal partial value failed")
  }
  console.log("Object literal partial runtime verified")
}