/**
 * @id TYP_03_01_027_FAIL_FUNCTION_SIGNATURE
 * @expect compile-fail
 * @section 3.1
 * @design 函数类型签名不匹配赋值应编译失败: 参数数量不匹配、参数类型不匹配、返回值类型不匹配、参数精度不匹配(int vs double)
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testFunctionSignatureMismatchFail(): void {
  let f1: () => int = (x: int): int => { return x }

  let f2: (x: int) => int = (): int => { return 42 }

  let f3: (x: int) => int = (x: string): int => { return 0 }

  let f4: () => int = (): string => { return "hello" }

  let f5: (x: double) => void = (x: int): void => {}
}

function testFunctionAssignFail(): void {
  function takesIntToString(x: int): string { return "" + x }
  let f: (x: int) => int = takesIntToString
}