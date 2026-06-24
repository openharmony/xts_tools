/**
 * @id TYP_03_07_009_RUNTIME_REFERENCE_SHARED_STATE
 * @expect runtime
 * @section 3.7
 * @design 多引用共享对象状态：一个修改另一个可见（spec §3.7 核心语义）
 * @note 运行时用例：spec §3.7 引用共享语义
 */
class Counter9 {
  count: int = 0
}

function main(): void {
  let c1: Counter9 = new Counter9()
  let c2: Counter9 = c1   // 同一对象

  c1.count = 100
  if (c2.count != 100) {
    throw new Error("c2 should see c1's modification")
  }

  c2.count = 200
  if (c1.count != 200) {
    throw new Error("c1 should see c2's modification")
  }

  console.log("Reference shared state verified")
}