/**
 * @id TYP_03_18_014_FAIL_FUNCTION_DIRECT_CALL
 * @expect compile-fail
 * @section 3.18.1
 * @design Type Function 变量直接调用，spec 3.18.1 明确规定应产生编译时错误
 * @note 反向用例：spec 3.18.1 规定 "A value of type Function cannot be called directly"
 *       但 ArkTS 实际编译通过并运行正常
 *       ⚠️ SPEC 不一致：spec 要求报错，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
function foo(n: number): void {}

function testFunctionDirectCall(): void {
  let f: Function = foo
  f(1) // spec 3.18.1: compile-time error, "cannot be called directly"
  // 实际行为：ArkTS 编译通过，运行正常
}