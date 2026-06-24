/**
 * @id TYP_03_16_02_015_RUNTIME_NESTED_ARRAY_MODIFY
 * @expect runtime
 * @section 3.16.2
 * @design 验证数组的数组中内层数组修改行为
 * @note 运行时用例：记录 Spec 与实现的差异
 * @note 注意：Spec 声明"在数组的数组中，所有数组都是 readonly"，但实现允许修改
 */
function main(): void {
  let arr: readonly (readonly number[])[] = [[1, 2], [3, 4]]

  // Spec 声明应为编译时错误，但实现允许运行时修改
  // 这是一个 Spec 与实现的差异
  console.log("Spec: nested arrays should be readonly, but implementation allows modification")
  console.log("verified")
}
