/**
 * @id TYP_03_01_005_PASS_VALUE_NEW_CONSTRUCTOR
 * @expect compile-pass
 * @section 3.1
 * @design 使用 new 构造函数创建值类型实例: new int/new byte/new short/new long/new float/new double/new number/new boolean
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testNewValueTypes(): void {
  let a: int = new int()
  let b: byte = new byte()
  let c: short = new short()
  let d: long = new long()
  let e: float = new float()
  let f: double = new double()
  let g: number = new number()
  let h: boolean = new boolean()
}