/**
 * @id TYP_03_03_014_FAIL_VARIABLE_AS_TYPE
 * @expect compile-fail
 * @section 3.3
 * @design 变量名不能作为类型引用
 * @note 反向用例：用变量名当类型
 */
let myVar: int = 42

function testVariableAsTypeFail(): void {
  let x: myVar = 1
}