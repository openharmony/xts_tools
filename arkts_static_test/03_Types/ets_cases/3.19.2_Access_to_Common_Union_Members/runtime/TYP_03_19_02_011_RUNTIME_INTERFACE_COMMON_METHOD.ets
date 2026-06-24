/**
 * @id TYP_03_19_02_011_RUNTIME_INTERFACE_COMMON_METHOD
 * @expect runtime
 * @section 3.19.2
 * @design interface union 共同方法运行时分发
 * @note 运行时用例：接口联合类型共同方法
 */
interface I11A { area(): int }
interface I11B { area(): int }
class Square11 implements I11A { area(): int { return 16 } }
class Circle11 implements I11B { area(): int { return 9 } }

function getArea(x: I11A | I11B): int {
  return x.area()
}

function main(): void {
  let a: int = getArea(new Square11())
  if (a != 16) throw new Error("Square area failed")
  let b: int = getArea(new Circle11())
  if (b != 9) throw new Error("Circle area failed")
  console.log("interface common method verified")
}