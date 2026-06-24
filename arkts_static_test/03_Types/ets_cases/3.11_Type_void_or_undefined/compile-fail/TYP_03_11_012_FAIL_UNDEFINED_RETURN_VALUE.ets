/**
 * @id TYP_03_11_012_FAIL_UNDEFINED_RETURN_VALUE
 * @expect compile-fail
 * @section 3.11
 * @design undefined 函数不能返回非 undefined 值
 * @note 反向用例：return string/int 不允许
 */
function badUndefined1(): undefined {
  return 1
}

function badUndefined2(): undefined {
  return "hello"
}