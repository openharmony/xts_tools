/**
 * @id TYP_03_13_049_RUNTIME_STRING_RELATIONAL_OPS
 * @expect runtime
 * @section 3.13
 * @design 验证 string 关系比较运算符的运行时行为（字典序）
 * @note 运行时用例：验证 < > <= >= 比较字符串的字典序行为
 */
function main(): void {
  let a: string = "apple"
  let b: string = "banana"
  let c: string = "cherry"
  let a2: string = "apple"

  if (!(a < b)) throw new Error("apple < banana failed")
  if (!(b < c)) throw new Error("banana < cherry failed")
  if (a < a2) throw new Error("apple < apple should be false")
  if (!(a <= a2)) throw new Error("apple <= apple failed")
  if (!(c > b)) throw new Error("cherry > banana failed")
  if (a > b) throw new Error("apple > banana should be false")
  if (!(b >= a)) throw new Error("banana >= apple failed")
  if (!(a >= a2)) throw new Error("apple >= apple failed")

  let empty: string = ""
  if (!(empty < a)) throw new Error("empty < apple failed")
  if (a < empty) throw new Error("apple < empty should be false")

  console.log("TYP_03_13_049 verified")
}