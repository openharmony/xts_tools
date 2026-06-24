/**
 * @id TYP_03_12_022_RUNTIME_NULL_TYPE_NARROWING
 * @expect runtime
 * @section 3.12
 * @design 运行时验证 null 联合类型的类型收窄：if (x != null) 后可安全访问成员
 * @note 运行时用例：验证 T|null 的 null 检查和收窄
 */
function safeStringLength(s: string | null): int {
  if (s == null) {
    return -1
  }
  return s.length
}

function main(): void {
  let r1: int = safeStringLength(null)
  if (r1 != -1) {
    throw new Error("null input should return -1, got " + r1.toString())
  }

  let r2: int = safeStringLength("hello")
  if (r2 != 5) {
    throw new Error("'hello' length should be 5, got " + r2.toString())
  }

  let r3: int = safeStringLength("")
  if (r3 != 0) {
    throw new Error("'' length should be 0, got " + r3.toString())
  }

  console.log("TYP_03_12_022 verified")
}