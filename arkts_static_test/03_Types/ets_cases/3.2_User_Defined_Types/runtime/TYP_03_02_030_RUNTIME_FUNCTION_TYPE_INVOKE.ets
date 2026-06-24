/**
 * @id TYP_03_02_030_RUNTIME_FUNCTION_TYPE_INVOKE
 * @expect runtime
 * @section 3.2
 * @design 函数类型变量调用、type 别名、回调
 * @note 运行时用例：验证用户定义函数类型运行时行为
 */
type Predicate<T> = (x: T) => boolean
type IntBinOp = (a: int, b: int) => int

function filter<T>(arr: T[], pred: Predicate<T>): T[] {
  let result: T[] = []
  for (let v of arr) {
    if (pred(v)) {
      result.push(v)
    }
  }
  return result
}

function reduce(arr: int[], op: IntBinOp, init: int): int {
  let acc: int = init
  for (let v of arr) {
    acc = op(acc, v)
  }
  return acc
}

function main(): void {
  let nums: int[] = [1, 2, 3, 4, 5]
  let isEven: Predicate<int> = (x: int): boolean => { return x % 2 == 0 }
  let evens: int[] = filter<int>(nums, isEven)
  if (evens.length != 2 || evens[0] != 2 || evens[1] != 4) {
    throw new Error("filter even failed")
  }

  let sum: int = reduce(nums, (a: int, b: int): int => { return a + b }, 0)
  if (sum != 15) {
    throw new Error("sum should be 15, got " + sum)
  }

  let prod: int = reduce(nums, (a: int, b: int): int => { return a * b }, 1)
  if (prod != 120) {
    throw new Error("prod should be 120, got " + prod)
  }

  console.log("Function type invoke verified")
}