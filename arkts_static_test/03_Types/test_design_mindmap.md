# 03 Types Test Design Mindmap

## 覆盖汇总

- 总用例数：728（324P + 195F + 209R）
- 覆盖章节：3.1 ~ 3.22 全部类型系统子章节
- 测试类别：compile-pass / compile-fail / runtime

## 核心覆盖维度

- Predefined / user-defined / named / reference / value types
- Numeric / integer / floating / boolean / string / bigint / null / undefined / void / never / Any / Object
- Literal types and string literal types
- Array / readonly array / tuple / readonly tuple / Tuple type
- Function type / Function predefined type
- Union type / normalization / common member access / keyof
- Nullish types
- Utility types: Awaited, NonNullable, Partial, Required, Readonly, Record, ReturnType, private fields, nesting
- Default values for types

## 本次补充覆盖

### 3.7 Reference Types
- compile-fail
  - class reference 不可赋值给 int
  - interface reference 不可赋值给 boolean

### 3.21.1 Awaited Utility Type
- compile-fail
  - Awaited<Promise<string>> 不能接收 Promise<string>
  - Awaited<Promise<Array<Promise<number>>>> 遇到 Array 停止递归，不能接收 number[]

### 3.21.8 Utility Type Private Fields
- compile-pass
  - Readonly<T> object literal 只包含 public field 合法
- compile-fail
  - Readonly<T> object literal 包含 private field 名称非法
- runtime
  - 原类实例赋给 Readonly<T> 后 private state 仍保留，可经类内方法访问

### 3.22 Default Values for Types
- compile-pass
  - Any / void / undefined 默认值为 undefined，可直接比较
- compile-fail
  - enum 无默认值，未初始化使用失败
  - type parameter 无默认值，未初始化使用失败
- runtime
  - char 默认值 c'\u0000'
  - nullish/optional 字段默认 undefined

## 仍需关注

- `3.21_Utility_Types` 父目录为空；当前由 3.21.1~3.21.9 子章节承接覆盖，建议保留说明或移除空父目录。
- `issue_report.md` 仍有多项 Spec/实现不一致，需要后续编译器或 spec 更新。
- `cross_lang_verify/verification_report.md` 尚未按子章节归档。
