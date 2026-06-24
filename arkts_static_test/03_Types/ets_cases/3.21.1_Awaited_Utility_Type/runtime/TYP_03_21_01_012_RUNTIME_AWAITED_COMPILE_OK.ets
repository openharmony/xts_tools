/**
 * @id TYP_03_21_01_012_RUNTIME_AWAITED_COMPILE_OK
 * @expect runtime
 * @section 3.21.1
 * @design Awaited 是编译期 utility type，运行时无表现
 * @note 运行时用例：仅验证编译通过和类型正确
 */
type R12 = Awaited<Promise<int>>

function main(): void {
  let v: R12 = 42
  if (v != 42) {
    throw new Error("Awaited<int> should be int")
  }
  console.log("Awaited compile-time verified")
}