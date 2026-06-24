/**
 * @id TYP_03_19_01_015_RUNTIME_READONLY_UNION
 * @expect runtime
 * @section 3.19.1
 * @design readonly 版本优先后可读取数组元素
 * @note 运行时用例：readonly union normalization
 */
type U15 = int[] | readonly int[]

function main(): void {
  let arr: int[] = [1, 2, 3]
  let u: U15 = arr

  let ro: readonly int[] = u
  if (ro.length != 3) {
    throw new Error("readonly array length failed")
  }
  if (ro[0] != 1) {
    throw new Error("readonly array element failed")
  }

  console.log("Readonly union runtime verified")
}