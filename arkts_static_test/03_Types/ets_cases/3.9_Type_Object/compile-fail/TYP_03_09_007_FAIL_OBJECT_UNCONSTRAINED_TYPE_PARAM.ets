/**
 * @id TYP_03_09_007_FAIL_OBJECT_UNCONSTRAINED_TYPE_PARAM
 * @expect compile-fail
 * @section 3.9
 * @design Object 不接受类型参数 T（无 extends Object 约束时）
 *   spec §3.9: Object 不是 Type Parameters 的超类（除非显式约束）
 * @note 反向用例：T 默认 extends Any，不是 Object 子类
 */
class Generic7<T> {
  field: Object
  constructor() {
    let t: T = (null as Object) as T
    this.field = t   // T 不是 Object 子类，赋值失败
  }
}