/**
 * @id TYP_03_12_025_RUNTIME_NULL_SWITCH
 * @expect runtime
 * @section 3.12
 * @design 运行时验证 null 在 switch-case 中作为匹配值
 * @note 运行时用例：验证 switch null 分支正确执行
 */
function classifyValue(v: string | null): string {
  switch (v) {
    case null:
      return "is_null"
    case "":
      return "is_empty"
    default:
      return "is_string"
  }
}

function main(): void {
  let r1: string = classifyValue(null)
  if (r1 != "is_null") {
    throw new Error("null should classify as is_null, got " + r1)
  }

  let r2: string = classifyValue("")
  if (r2 != "is_empty") {
    throw new Error("'' should classify as is_empty, got " + r2)
  }

  let r3: string = classifyValue("hello")
  if (r3 != "is_string") {
    throw new Error("'hello' should classify as is_string, got " + r3)
  }
  console.log("TYP_03_12_025 verified")
}