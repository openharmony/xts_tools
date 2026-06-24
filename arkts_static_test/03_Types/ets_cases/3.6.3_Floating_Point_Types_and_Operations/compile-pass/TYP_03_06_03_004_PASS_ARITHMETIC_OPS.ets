/**
 * @id TYP_03_06_03_004_PASS_ARITHMETIC_OPS
 * @expect compile-pass
 * @section 3.6.3
 * @design 浮点算术 + - * / % 含类型推升
 * @note 正向用例：spec §3.6.3 推升规则
 */
function testArithmeticOps(): void {
  let f: float = 3.0f
  let d: double = 2.0

  // float + float → float
  let f2: float = f + 1.0f
  let f3: float = f - 1.0f
  let f4: float = f * 2.0f
  let f5: float = f / 2.0f
  let f6: float = f % 1.5f

  // double + double → double
  let d2: double = d + 1.0
  let d3: double = d - 1.0
  let d4: double = d * 2.0

  // double + float → double（推升）
  let mix1: double = d + f
  let mix2: double = f * d

  // double + int → double（浮点优先）
  let i: int = 10
  let mix3: double = d + i
  let mix4: double = i / d
}