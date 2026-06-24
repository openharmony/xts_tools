/**
 * @id TYP_03_05_002_PASS_QUALIFIED_NAME_REF
 * @expect compile-pass
 * @section 3.5
 * @design 通过 qualified name 引用 namespace 内类型
 * @note 正向用例：namespace.TypeName 限定名引用
 */
namespace ns2 {
  export class Inner {
    v: int = 0
    method(): int { return this.v }
  }

  export interface InnerI {
    work(): string
  }

  export enum InnerE { A, B }
}

function testQualifiedNameRef(): void {
  let c: ns2.Inner = new ns2.Inner()
  let e: ns2.InnerE = ns2.InnerE.A
}