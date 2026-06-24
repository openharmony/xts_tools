/**
 * @id TYP_03_02_003_PASS_ENUM_DECLARE
 * @expect compile-pass
 * @section 3.2
 * @design 用户定义枚举类型声明(int 基类型)、成员引用、值比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
enum Color {
  Red,
  Green,
  Blue
}

enum Status {
  OK = 200,
  NotFound = 404,
  Error = 500
}

function testEnumDeclare(): void {
  let c: Color = Color.Red
  let cmp: boolean = c == Color.Red
  let cmp2: boolean = c != Color.Blue

  let s: Status = Status.OK
  let s2: Status = Status.NotFound
}