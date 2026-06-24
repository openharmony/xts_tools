/**
 * @id TYP_03_14_016_FAIL_BIGINT_LT_DOUBLE
 * @expect compile-fail
 * @section 3.14
 * @design 验证 Spec 规则：bigint 与非 bigint 类型的关系运算应产生编译时错误
 * @note 反向用例：spec 要求 bigint < double 关系运算非法，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec/types.md 声明 "Relational operators that use an operand
 *       of type bigint along with an operand of another type are illegal"，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
let b: bigint = 100n
let d: double = 42.5

function main(): void {
  let result: boolean = b < d
  console.log(result)
}