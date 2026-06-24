/**
 * @id TYP_03_04_011_FAIL_DUPLICATE_NAME
 * @expect compile-fail
 * @section 3.4
 * @design 同名命名类型重复声明应失败：class 与 interface 同名
 * @note 反向用例：命名类型唯一性约束
 */
class DupName {
  v: int = 0
}

interface DupName {
  hello(): void
}