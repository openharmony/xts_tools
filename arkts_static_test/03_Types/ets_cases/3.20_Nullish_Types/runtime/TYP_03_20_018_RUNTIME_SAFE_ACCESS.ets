/**
 * @id TYP_03_20_018_RUNTIME_SAFE_ACCESS
 * @expect runtime
 * @section 3.20
 * @design ?. 安全访问在 null/undefined 时返回 undefined
 * @note 运行时用例：safe field/method/index/function call
 */
class Person18 {
  name: string
  constructor(name: string) { this.name = name }
  greet(): string { return "hi " + this.name }
}

function main(): void {
  let p: Person18 | undefined = undefined
  let n: string | undefined = p?.name
  if (n !== undefined) throw new Error("safe field on undefined should be undefined")

  let g: string | undefined = p?.greet()
  if (g !== undefined) throw new Error("safe method on undefined should be undefined")

  p = new Person18("Bob")
  if (p?.name != "Bob") throw new Error("safe field should return Bob")
  if (p?.greet() != "hi Bob") throw new Error("safe method should return hi Bob")

  let arr: string[] | undefined = undefined
  let first: string | undefined = arr?.[0]
  if (first !== undefined) throw new Error("safe index on undefined should be undefined")

  let f: (() => string) | undefined = undefined
  let r: string | undefined = f?.()
  if (r !== undefined) throw new Error("safe function on undefined should be undefined")

  console.log("safe access verified")
}