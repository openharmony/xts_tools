/**
 * @id TYP_03_03_007_PASS_INPLACE_FUNCTION
 * @expect compile-pass
 * @section 3.3
 * @design 就地函数类型声明 (x: T) => R
 * @note 正向用例：验证就地函数类型声明
 */
function testInplaceFunction(): void {
  let f1: () => int = (): int => { return 42 }
  let f2: (x: int) => int = (x: int): int => { return x + 1 }
  let f3: (a: int, b: string) => boolean = (a: int, b: string): boolean => { return a > 0 }
  let f4: () => void = (): void => {}
}