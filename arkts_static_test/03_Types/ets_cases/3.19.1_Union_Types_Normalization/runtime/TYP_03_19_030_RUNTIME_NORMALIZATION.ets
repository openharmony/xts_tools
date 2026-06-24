/**
 * @id TYP_03_19_030_RUNTIME_UNION_NORMALIZATION
 * @expect runtime
 * @section 3.19.1
 * @design 联合类型归一化运行时验证
 * @note 运行时用例：验证归一化规则在运行时正确工作
 */
type Same = number | number
type WithNever = never | number
type StrOrNum = "325" | string | number

function main(): void {
  let x: Same = 42
  if (x != 42) {
    throw new Error("x should be 42")
  }

  let y: WithNever = 100
  if (y != 100) {
    throw new Error("y should be 100")
  }

  let z: StrOrNum = "hello"
  z = 42
  if (typeof z != "number") {
    throw new Error("z should be number after assignment")
  }

  console.log("verified")
}