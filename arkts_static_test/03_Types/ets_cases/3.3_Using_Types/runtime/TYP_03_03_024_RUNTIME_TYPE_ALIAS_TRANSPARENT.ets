/**
 * @id TYP_03_03_024_RUNTIME_TYPE_ALIAS_TRANSPARENT
 * @expect runtime
 * @section 3.3
 * @design type alias 是非透明的：替换为非别名类型，可与原始类型互换使用
 * @note 运行时用例：spec 强调 type alias 完全等价于其底层类型
 *       注：函数名 double→doubleAll（避开 double 关键字，TYP-003）
 */
type IntList = int[]
type Counter = (start: int) => int

function doubleAll(arr: int[]): int[] {
  let result: int[] = []
  for (let v of arr) {
    result.push(v * 2)
  }
  return result
}

function main(): void {
  // IntList 与 int[] 完全互换
  let a: IntList = [1, 2, 3]
  let b: int[] = doubleAll(a)
  if (b.length != 3 || b[2] != 6) {
    throw new Error("type alias not transparent for arrays")
  }

  // Counter 与 (start: int) => int 完全互换
  let inc: Counter = (start: int): int => { return start + 1 }
  let f: (start: int) => int = inc
  if (f(10) != 11) {
    throw new Error("type alias not transparent for functions")
  }

  console.log("Type alias transparency verified")
}