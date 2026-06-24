/**
 * @id TYP_03_04_012_FAIL_DUPLICATE_ALIAS_ENUM
 * @expect compile-fail
 * @section 3.4
 * @design 同名命名类型重复声明应失败：type alias 与 enum 同名
 * @note 反向用例：type alias 与 enum 名字冲突
 */
type Status = int | string

enum Status {
  OK,
  ERROR
}