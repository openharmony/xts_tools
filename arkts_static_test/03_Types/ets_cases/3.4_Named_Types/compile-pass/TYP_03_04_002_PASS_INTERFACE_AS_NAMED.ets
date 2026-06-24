/**
 * @id TYP_03_04_002_PASS_INTERFACE_AS_NAMED
 * @expect compile-pass
 * @section 3.4
 * @design 接口声明引入命名类型，可作类型注解和实现目标
 * @note 正向用例：interface declaration 引入 named type
 */
interface NamedInterface {
  doWork(): int
}

class IImpl implements NamedInterface {
  doWork(): int { return 42 }
}

function testInterfaceNamed(): void {
  let i: NamedInterface = new IImpl()
  let r: int = i.doWork()
}