/**
 * @id TYP_03_12_026_RUNTIME_NULL_FUNCTION_RETURN
 * @expect runtime
 * @section 3.12
 * @design 运行时验证函数返回 null 的行为
 * @note 运行时用例：验证函数可返回 null 值
 */
function findName(id: int): string | null {
  if (id == 1) {
    return "Alice"
  }
  if (id == 2) {
    return "Bob"
  }
  return null
}

function main(): void {
  let n1: string | null = findName(1)
  if (n1 != "Alice") {
    throw new Error("id=1 should return Alice, got " + n1)
  }

  let n2: string | null = findName(99)
  if (n2 != null) {
    throw new Error("id=99 should return null, got " + n2)
  }
  console.log("TYP_03_12_026 verified")
}