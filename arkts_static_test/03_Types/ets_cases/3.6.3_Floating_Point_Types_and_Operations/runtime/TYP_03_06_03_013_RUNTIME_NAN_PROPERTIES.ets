/**
 * @id TYP_03_06_03_013_RUNTIME_NAN_PROPERTIES
 * @expect runtime
 * @section 3.6.3
 * @design NaN 性质：NaN != NaN, 任意运算 NaN op X = NaN
 * @note 运行时用例：spec §3.6.3 NaN 行为
 */
function main(): void {
  let nan: double = 0.0 / 0.0

  // NaN != NaN
  if (nan == nan) {
    throw new Error("NaN should not equal itself")
  }
  if (!(nan != nan)) {
    throw new Error("NaN != NaN should be true")
  }

  // NaN 任意运算仍为 NaN
  let r1: double = nan + 1.0
  if (r1 == r1) {
    throw new Error("NaN + 1 should be NaN")
  }

  let r2: double = nan * 0.0
  if (r2 == r2) {
    throw new Error("NaN * 0 should be NaN")
  }

  console.log("NaN properties verified")
}