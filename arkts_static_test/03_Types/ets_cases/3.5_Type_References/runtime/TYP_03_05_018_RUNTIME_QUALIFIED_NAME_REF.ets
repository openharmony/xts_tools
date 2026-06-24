/**
 * @id TYP_03_05_018_RUNTIME_QUALIFIED_NAME_REF
 * @expect runtime
 * @section 3.5
 * @design qualified name 类型引用 namespace 内类型，运行时可正常实例化
 * @note 运行时用例：namespace.TypeName 引用运行时行为
 */
namespace ns18 {
  export class Service {
    name: string
    constructor(n: string) { this.name = n }
    greet(): string { return "Hello from " + this.name }
  }

  export enum Level { LOW, MEDIUM, HIGH }
}

function main(): void {
  let s: ns18.Service = new ns18.Service("ArkTS")
  let g: string = s.greet()
  if (g != "Hello from ArkTS") {
    throw new Error("qualified name service failed: " + g)
  }

  let l: ns18.Level = ns18.Level.HIGH
  if (l != ns18.Level.HIGH) {
    throw new Error("qualified enum failed")
  }

  console.log("Qualified name ref runtime verified")
}