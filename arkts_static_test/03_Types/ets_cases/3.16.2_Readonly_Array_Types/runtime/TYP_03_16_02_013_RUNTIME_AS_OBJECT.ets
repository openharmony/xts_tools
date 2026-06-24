/**
 * @id TYP_03_16_02_013_RUNTIME_AS_OBJECT
 * @expect runtime
 * @section 3.16.2
 * @design 验证只读数组作为 Object 子类型运行时行为
 * @note 运行时用例：实际执行验证只读数组 instanceof
 */
function main(): void {
  let arr: readonly number[] = [1, 2, 3]
  let o: Object = arr

  if (!(o instanceof Array)) throw new Error("should be Array")
  if (!(o instanceof Object)) throw new Error("should be Object")

  console.log("verified")
}
