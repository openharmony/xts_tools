/**
 * @id TYP_03_05_003_PASS_NESTED_QUALIFIED
 * @expect compile-pass
 * @section 3.5
 * @design 嵌套 namespace 的 qualified name 引用
 * @note 正向用例：outer.inner.TypeName
 */
namespace outer3 {
  export namespace inner3 {
    export class Deep {
      x: int = 0
    }
  }
}

function testNestedQualified(): void {
  let d: outer3.inner3.Deep = new outer3.inner3.Deep()
}