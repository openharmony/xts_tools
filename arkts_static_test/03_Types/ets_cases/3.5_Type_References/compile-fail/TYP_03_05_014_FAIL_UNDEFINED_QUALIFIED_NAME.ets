/**
 * @id TYP_03_05_014_FAIL_UNDEFINED_QUALIFIED_NAME
 * @expect compile-fail
 * @section 3.5
 * @design 引用 namespace 中不存在的类型
 * @note 反向用例：namespace 内部不存在的类型名
 */
namespace ns14 {
  export class Existing {
    v: int = 0
  }
}

function testUndefinedQualifiedFail(): void {
  let x: ns14.NonExistent = null
  let y: ns14.AlsoMissing = null
}