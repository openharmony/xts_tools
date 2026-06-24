/**
 * @id TYP_03_16_01_018_RUNTIME_SHRINK_GREATER
 * @expect runtime
 * @runtime-throws=RangeError
 * @section 3.16.1
 * @design 验证数组长度设置为大于当前长度时抛出运行时错误
 * @note 运行时用例：验证大于当前长度的设置导致运行时错误
 * @note 注意：Spec 声明应为编译时错误，但实现为运行时错误
 */
function main(): void {
  let arr: number[] = [1, 2, 3]
  arr.length = 10  // 应该抛出运行时错误
  console.log("should not reach here")
}
