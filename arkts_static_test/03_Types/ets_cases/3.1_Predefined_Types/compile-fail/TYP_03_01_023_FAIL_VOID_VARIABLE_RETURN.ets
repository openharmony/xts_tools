/**
 * @id TYP_03_01_023_FAIL_VOID_VARIABLE_RETURN
 * @expect compile-fail
 * @section 3.1
 * @design void 的非法使用应编译失败: void 作为变量类型、void[] 数组、非 void 函数缺少 return、void 函数返回非 void 值、可选参数在必选参数之前
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testVoidInvalidUseFail(): void {
  let v: void = undefined
  let arr: void[] = [undefined]
}

function returnNonVoidButNoReturn(): int {
}

function returnVoidWithValue(): void {
  return 42
}

function optionalBeforeRequiredFail(p?: int, q: int): void {}