/**
 * @id TYP_03_19_01_001_PASS_UNION_LINEARIZE
 * @expect compile-pass
 * @section 3.19.1
 * @design 嵌套联合类型线性化：(T1 | T2) | (T3 | T4) → T1 | T2 | T3 | T4
 * @note 正向用例：验证嵌套联合类型正确归一化
 */
type Nested = (string | number) | (boolean | null)

function main(): void {
  let x: Nested = "hello"
  x = 42
  x = true
  x = null
  console.log("verified")
}