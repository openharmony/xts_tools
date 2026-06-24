/**
 * @id TYP_03_01_028_FAIL_BIGINT_NUMERIC_MIX
 * @expect compile-fail
 * @section 3.1
 * @design bigint 与数值类型非法混用应编译失败: bigint + int、bigint + int 字面量、bigint == int、bigint 与 int 互赋值
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testBigintInvalidOpsFail(): void {
  let b: bigint = 123n
  let n: int = 456

  let sum: bigint = b + n

  let mixed: bigint = b + 456

  let cmp: boolean = b == n

  let assign: bigint = n
  let assign2: int = b
}