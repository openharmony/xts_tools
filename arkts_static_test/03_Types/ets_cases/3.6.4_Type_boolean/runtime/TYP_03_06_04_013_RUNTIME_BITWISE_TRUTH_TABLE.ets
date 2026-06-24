/**
 * @id TYP_03_06_04_013_RUNTIME_BITWISE_TRUTH_TABLE
 * @expect runtime
 * @section 3.6.4
 * @design boolean 按位 & ^ | 真值表
 * @note 运行时用例：与/异或/或
 */
function main(): void {
  // AND
  if ((true & true) != true) throw new Error("T & T = T")
  if ((true & false) != false) throw new Error("T & F = F")
  if ((false & true) != false) throw new Error("F & T = F")
  if ((false & false) != false) throw new Error("F & F = F")

  // OR
  if ((true | true) != true) throw new Error("T | T = T")
  if ((true | false) != true) throw new Error("T | F = T")
  if ((false | true) != true) throw new Error("F | T = T")
  if ((false | false) != false) throw new Error("F | F = F")

  // XOR
  if ((true ^ true) != false) throw new Error("T ^ T = F")
  if ((true ^ false) != true) throw new Error("T ^ F = T")
  if ((false ^ true) != true) throw new Error("F ^ T = T")
  if ((false ^ false) != false) throw new Error("F ^ F = F")

  console.log("Bitwise truth table verified")
}