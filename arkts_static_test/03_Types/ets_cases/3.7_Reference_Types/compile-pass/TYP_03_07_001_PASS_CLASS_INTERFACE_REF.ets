/**
 * @id TYP_03_07_001_PASS_CLASS_INTERFACE_REF
 * @expect compile-pass
 * @section 3.7
 * @design Class/Interface 是引用类型
 * @note 正向用例：class/interface 引用类型声明
 */
class CRef {
  v: int = 0
}

interface IRef {
  doIt(): void
}

class ImplR implements IRef {
  doIt(): void {}
}

function testClassInterfaceRef(): void {
  let c: CRef = new CRef()
  let i: IRef = new ImplR()
}