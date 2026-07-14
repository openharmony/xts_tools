# 11 Enumerations - Spec Extract

Source: ArkTS static language specification, chapter 11 Enumerations (enums.md).

## Enum Declaration

```
enumDeclaration: 'const'? 'enum' identifier enumBaseType? '{' enumMemberList? '}'
```

- `const enum`暂时不支持 → compile-time error
- 成员名必须唯一，值可以重复
- 空 enum 支持（兼容 TS）
- 访问成员必须加类型名限定（`Color.Red`）
- 初始化器中可省略限定（`Default = Red`）
- 导出 enum 时成员随类型名导出

## 11.1 Enumeration Base Type

- 至少一个成员无初始化器 → 基类型推断为 `int`
- 所有初始化器可赋值给 `int` → 推断为 `int`
- 所有初始化器可赋值给 `string` → 推断为 `string`
- 否则 → compile-time error

## 11.2 Enumeration with Explicit Base Type

支持显式基类型：`double`、`long`、`byte`、`short`、`float`、`string` 等。
以下情况产生 compile-time error：
- 显式类型非 numeric/string
- 成员初始化器不可赋值给基类型
- 成员无初始化器且基类型非整数类型

## 11.3 Initialization of Enumeration Members

- 全部省略 → 第一个=0，后续=前一个+1
- 部分显式初始化 → 后续未初始化成员自动递增
- 非常量初始化器后必须全部显式初始化 → 否则 compile-time error
- 基类型非整数时成员必须显式初始化 → 否则 compile-time error

## 11.4 Enumeration Methods

静态方法：
- `static values()` → 成员数组（声明顺序）
- `static getValueOf(name: string)` → 按名查找，不存在则 throw
- `static fromValue(value: T)` → 按值查找，不存在则 throw

实例方法：
- `toString()` → 转 string
- `valueOf()` → 返回数值/string 值
- `getName()` → 返回成员名

索引方式：`Color[Color.Green]` → 成员名；相同值最后声明的成员优先。
