/**
 * @id TYP_03_04_015_FAIL_TYPE_ALIAS_NAME_CONFLICT_CLASS
 * @expect compile-fail
 * @section 3.4
 * @design type alias 与同名 class 冲突
 * @note 反向用例：type alias 与已存在的 class 重名
 */
class Conflict {
  v: int = 0
}

type Conflict = string