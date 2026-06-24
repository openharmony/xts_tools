/**
 * @id TYP_03_01_037_FAIL_CHAR_INVALID
 * @expect compile-fail
 * @section 3.1
 * @design 非法 char 字面量、超出范围、char 不能直接接受 int
 * @note 反向用例：验证 char 类型边界检查
 */
function testCharInvalidFail(): void {
  // int 不能直接赋值给 char (narrowing)
  let n: int = 65
  let c: char = n

  // 字符串不能赋值给 char
  let s: string = "a"
  let c2: char = s

  // char 不能直接 narrowing 到 byte
  let ch: char = c'A'
  let b: byte = ch
}