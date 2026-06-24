/**
 * @id TYP_03_06_02_024_FAIL_INT_DIV_LOCAL_CONST_ZERO
 * @expect compile-fail
 * @section 3.6.2
 * @design 函数内 const 0 作除数应编译失败（ArkTS 做了局部常量传播）
 * @note 反向用例：局部 const 触发编译期除零检测
 *       关键：与模块级 const（TYP_03_06_02_028）行为不一致，已记入 issue
 */
function main(): void {
  const a: int = 0
  let c: int = 10 / a
  console.log(c)
}