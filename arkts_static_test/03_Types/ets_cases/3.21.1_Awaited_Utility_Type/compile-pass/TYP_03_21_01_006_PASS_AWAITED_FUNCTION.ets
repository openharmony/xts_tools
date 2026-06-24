/**
 * @id TYP_03_21_01_006_PASS_AWAITED_FUNCTION
 * @expect compile-pass
 * @section 3.21.1
 * @design Awaited<Promise<(p: Promise<string>) => Promise<number>>> → (p: Promise<string>) => Promise<number>
 * @note 正向用例：函数类型内 Promise 不展开
 */
type F = Awaited<Promise<(p: Promise<string>) => Promise<number>>>

function testAwaitedFunction(): void {
  let f: F = (p: Promise<string>): Promise<number> => {
    return p.then((s: string): number => { return s.length })
  }
}