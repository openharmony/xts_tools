/**
 * @id TYP_03_17_02_007_FAIL_TUPLE_ELEMENT_SUBTYPE
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证元组元素子类型关系不满足协变：[Derived, string] 不可赋值给 [Base, string]（spec/semantics.md:450-453）
 * @note 反向用例：tuple 子类型要求元素类型 identical，非 subtype 关系
 */
class Base {
  field: number = 1
}
class Derived extends Base {
  extra: string = "d"
}

let derivedPair: [Derived, string] = [new Derived(), "a"]
let basePair: [Base, string] = derivedPair