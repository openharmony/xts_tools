/**
 * @id TYP_03_19_01_012_FAIL_READONLY_WRITE
 * @expect compile-fail
 * @section 3.19.1
 * @design readonly 版本 wins 后数组不可写
 * @note 反向用例：spec 要求 number[] | readonly number[] 归一化为 readonly number[]，因此禁止写入
 *       ⚠️ SPEC 不一致：spec 说明 readonly version wins，但 ArkTS 实际允许 u[0] 写入
 *       分类：D 类（Spec 与实现不一致）
 */
type U12 = number[] | readonly number[]

function testReadonlyWriteFail(): void {
  let arr: number[] = [1.0, 2.0]
  let u: U12 = arr
  u[0] = 3.0
}