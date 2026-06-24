/**
 * @id TYP_03_02_015_FAIL_ENUM_INVALID_MEMBER
 * @expect compile-fail
 * @section 3.2
 * @design 枚举成员名重复、int 和 string 混合初始化器导致基类型无法推断应编译失败
 * @note 反向用例：验证该场景应产生编译时错误
 */
enum DuplicateMembers {
  A = 1,
  A = 2
}

enum MixedBaseType {
  A = 1,
  B = "two"
}