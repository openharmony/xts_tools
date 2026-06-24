/**
 * @id TYP_03_20_012_FAIL_OBJECT_NULLISH
 * @expect compile-fail
 * @section 3.20
 * @design Nullish types 不兼容 Object（spec 注释原例）
 * @note 反向用例：Object = null/undefined/nullish union 均失败
 */
class AnyClass12 {}

function nullish(o: Object, nullish1: null, nullish2: undefined, nullish3: null | undefined, nullish4: AnyClass12 | null | undefined): void {
  o = nullish1
  o = nullish2
  o = nullish3
  o = nullish4
}