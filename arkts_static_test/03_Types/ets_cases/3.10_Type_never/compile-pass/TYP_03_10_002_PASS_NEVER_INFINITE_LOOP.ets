/**
 * @id TYP_03_10_002_PASS_NEVER_INFINITE_LOOP
 * @expect compile-pass
 * @section 3.10
 * @design never 函数通过无限循环永不返回
 * @note 正向用例
 */
function loopForever(): never {
  while (true) {}
}