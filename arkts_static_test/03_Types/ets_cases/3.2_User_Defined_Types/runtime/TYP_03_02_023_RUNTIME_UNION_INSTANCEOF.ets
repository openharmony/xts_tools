/**
 * @id TYP_03_02_023_RUNTIME_UNION_INSTANCEOF
 * @expect runtime
 * @section 3.2
 * @design 联合类型 instanceof 运行时类型收窄: int | string 通过 instanceof 区分
 * @note 运行时用例：实际执行验证联合类型运行时区分
 */
function process(x: int | string): int {
  if (x instanceof string) {
    return (x as string).length
  }
  return x as int
}

function main(): void {
  let r1: int = process(42)
  if (r1 != 42) {
    throw new Error("process(42) should be 42, got " + r1)
  }

  let r2: int = process("hello")
  if (r2 != 5) {
    throw new Error("process('hello') should be 5, got " + r2)
  }

  let r3: int = process("")
  if (r3 != 0) {
    throw new Error("process('') should be 0")
  }

  console.log("Union instanceof verified")
}