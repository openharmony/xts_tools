/**
 * @id TYP_03_06_01_006_PASS_NUMERIC_AS_OBJECT
 * @expect compile-pass
 * @section 3.6.1
 * @design 数值类型是 Object 子类型，可赋值给 Object 变量
 * @note 正向用例：spec §3.6.1 数值类型可在任何接受 class 的位置使用
 */
function acceptObject(o: Object): void {}

function testNumericAsObject(): void {
  let b: byte = 1
  let s: short = 2
  let i: int = 3
  let l: long = 4
  let f: float = 5.0f
  let d: double = 6.0

  let o1: Object = b
  let o2: Object = s
  let o3: Object = i
  let o4: Object = l
  let o5: Object = f
  let o6: Object = d

  acceptObject(b)
  acceptObject(s)
  acceptObject(i)
  acceptObject(l)
  acceptObject(f)
  acceptObject(d)
}