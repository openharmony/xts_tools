/**
 * @id TYP_03_09_003_PASS_OBJECT_ACCEPT_ARRAY_TUPLE
 * @expect compile-pass
 * @section 3.9
 * @design Object 接受 array/tuple/function
 * @note 正向用例
 */
function testObjectAcceptComposite(): void {
  let o: Object = [1, 2, 3]
  o = [1, "x"]   // tuple
  o = (x: int): int => { return x }   // function
}