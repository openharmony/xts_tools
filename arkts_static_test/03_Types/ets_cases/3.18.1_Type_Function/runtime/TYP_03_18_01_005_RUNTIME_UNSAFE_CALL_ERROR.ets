/**
 * @id TYP_03_18_01_005_RUNTIME_UNSAFE_CALL_ERROR
 * @expect runtime
 * @section 3.18.1
 * @design unsafeCall 参数数量不匹配时抛出 runtime error
 * @runtime-throws=Error
 * @note 运行时用例：验证 unsafeCall 参数数量不匹配时的 runtime error
 *       spec 3.18.1 明确指出 "f.unsafeCall() // Runtime error, wrong number of arguments"
 */
function greet(name: string): string {
  return "Hello, " + name
}

function main(): void {
  let f: Function = greet

  // 正确调用
  let result: string = f.unsafeCall("World") as string
  if (result != "Hello, World") {
    throw new Error("Expected 'Hello, World', got: " + result)
  }

  // 参数数量不匹配 → runtime error
  try {
    f.unsafeCall()
  } catch (e) {
    console.log("unsafeCall with wrong number of arguments throws: " + e)
  }

  console.log("Type Function unsafeCall error handling verified")
}