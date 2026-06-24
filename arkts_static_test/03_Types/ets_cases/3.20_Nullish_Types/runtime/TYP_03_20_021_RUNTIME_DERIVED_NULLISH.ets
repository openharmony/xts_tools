/**
 * @id TYP_03_20_021_RUNTIME_DERIVED_NULLISH
 * @expect runtime
 * @section 3.20
 * @design Base|null 可持有 Derived 实例或 null
 * @note 运行时用例：派生类 nullish
 */
class Base21 { id(): string { return "base" } }
class Derived21 extends Base21 { id(): string { return "derived" } }

function main(): void {
  let v: Base21 | null = new Derived21()
  if (v?.id() != "derived") throw new Error("derived id failed")

  v = null
  let r: string | undefined = v?.id()
  if (r !== undefined) throw new Error("null safe call should return undefined")

  console.log("derived nullish verified")
}