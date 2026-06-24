/**
 * @id TYP_03_02_012_PASS_ENUM_STRING_BASE
 * @expect compile-pass
 * @section 3.2
 * @design 枚举类型 string 基类型: enum T { A = "a" }、string 值访问、隐式转换为 string
 * @note 正向用例：验证该特性编译通过的正确用法
 */
enum Lang {
  TypeScript = "ts",
  JavaScript = "js",
  ArkTS = "ets"
}

function testEnumStringBase(): void {
  let l: Lang = Lang.ArkTS
  let cmp: boolean = l == Lang.ArkTS

  let s: string = Lang.ArkTS
}