/**
 * @id TYP_03_01_026_FAIL_FIXED_RESIZABLE_MIX
 * @expect compile-fail
 * @section 3.1
 * @design FixedArray 与可变数组(T[])不能互赋值应编译失败: FixedArray→T[]、T[]→FixedArray、字面量传参 FixedArray
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testFixedResizableMixFail(): void {
  let fa: FixedArray<int> = [1, 2, 3]
  let ra: int[] = fa

  let rb: int[] = [1, 2, 3]
  let fb: FixedArray<int> = rb
}

function testArrayParameterFail(): void {
  function acceptFixed(fa: FixedArray<int>): void {}
  acceptFixed([1, 2, 3])
}