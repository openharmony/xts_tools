/**
 * @id TYP_03_16_02_012_RUNTIME_INDEX_READ
 * @expect runtime
 * @section 3.16.2
 * @design 验证只读数组索引读取运行时行为
 * @note 运行时用例：实际执行验证索引读取
 */
function main(): void {
  let arr: readonly number[] = [10, 20, 30]

  let x: number = arr[0]
  let y: number = arr[1]
  let z: number = arr[2]

  if (x !== 10) throw new Error("x should be 10")
  if (y !== 20) throw new Error("y should be 20")
  if (z !== 30) throw new Error("z should be 30")

  console.log("verified")
}
