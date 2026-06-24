/**
 * @id TYP_03_04_013_FAIL_TYPE_PARAM_OUT_OF_SCOPE
 * @expect compile-fail
 * @section 3.4
 * @design 类型参数仅在所属泛型内有效，外部不可见
 * @note 反向用例：类型参数 T 在 class 外引用应失败
 */
class WithT<T> {
  v: T
  constructor(x: T) { this.v = x }
}

// T 在 WithT 之外不可见
let outside: T = 1
let outside2: WithT<int> = new WithT<T>(1)