/**
 * @id TYP_03_18_005_PASS_GENERIC_FUNCTION_TYPE
 * @expect compile-pass
 * @section 3.18
 * @design 泛型函数类型别名
 * @note 正向用例：验证泛型函数类型编译通过
 */
type Predicate<T> = (x: T) => boolean
type Converter<T, R> = (input: T) => R
type Comparator<T> = (a: T, b: T) => int

function testGenericFunctionType(): void {
  let isPositive: Predicate<int> = (x: int): boolean => { return x > 0 }
  let isNonEmpty: Predicate<string> = (s: string): boolean => { return s.length > 0 }

  let intToString: Converter<int, string> = (n: int): string => { return "" + n }
  let stringToLength: Converter<string, int> = (s: string): int => { return s.length }

  let intCompare: Comparator<int> = (a: int, b: int): int => { return a - b }

  let r1: boolean = isPositive(5)
  let r2: boolean = isNonEmpty("hello")
  let r3: string = intToString(42)
  let r4: int = stringToLength("abc")
  let r5: int = intCompare(3, 5)
}