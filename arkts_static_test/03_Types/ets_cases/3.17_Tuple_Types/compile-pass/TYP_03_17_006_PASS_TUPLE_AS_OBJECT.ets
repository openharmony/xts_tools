/**
 * @id TYP_03_17_006_PASS_TUPLE_AS_OBJECT
 * @expect compile-pass
 * @section 3.17
 * @design 验证元组可赋值给 Object
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: [number, string] = [1, "hello"]
let o: Object = tuple

function main(): void {
  console.log("verified")
}
