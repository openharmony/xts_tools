/**
 * @id TYP_03_05_013_FAIL_VARIABLE_AS_TYPE_REF
 * @expect compile-fail
 * @section 3.5
 * @design 变量名不能作为类型引用
 * @note 反向用例：用变量名做类型注解
 */
let myVar13: int = 0
const myConst13: string = "x"

function testVariableAsTypeRefFail(): void {
  let x: myVar13 = 1
  let y: myConst13 = "a"
}