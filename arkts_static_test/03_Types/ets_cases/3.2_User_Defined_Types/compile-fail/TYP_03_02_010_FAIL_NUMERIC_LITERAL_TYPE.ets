/**
 * @id TYP_03_02_010_FAIL_NUMERIC_LITERAL_TYPE
 * @expect compile-fail
 * @section 3.2
 * @design ArkTS 不支持数字/布尔字面量类型（与 TypeScript 不同）
 * @note 反向用例：spec §3.15.1 仅声明 String Literal Types
 *       此用例同时记录 ArkTS 与 TS 的设计差异
 */
function testNumericLiteralFail(): void {
  // ArkTS 不支持数字字面量类型（TS 中合法）
  let n1: 42 = 42
  let n2: 0 = 0

  // 不支持布尔字面量类型
  let t: true = true
  let f: false = false
}