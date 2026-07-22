# 18 Annotations - Spec Extract

Source: ArkTS static language specification, chapter 18 Annotations (annotations.md).

## 18.1 Declaring Annotations

- 语法：`@interface identifier { annotationField* }`
- 注解必须定义在顶层（top-level），否则 compile-time error
- 支持导出：`export @interface MyAnno { ... }`
- 注解不可继承
- 注解名不能与其余实体名冲突
- 注解声明不定义类型，不可用于 type alias 或 implements

### 18.1.1 Types of Annotation Fields

字段类型限于：
- 数值类型（int/long/short/byte/float/double）
- `boolean`
- `string`
- 枚举类型
- 以上类型的数组（含多维数组）
- 其余类型 → compile-time error

字段可有默认值（必须为常量表达式）：
```typescript
@interface MyAnno {
    count: int = 0
    name: string = "default"
}
```

## 18.2 Using Annotations

- 注解置于声明前，`@` 后紧跟注解名，不可有空白
- 带参数：`@MyAnno({field: value})`
- 无参可省略括号：`@MyAnno`
- 多个注解可叠加
- 注解名必须在当前作用域可访问

## 18.3 Exporting and Importing Annotations

- 注解可像其余实体一样导出和导入

## 18.4 Ambient Annotations

- `declare @interface` 声明 ambient 注解

## 18.5 Standard Annotations

### 18.5.1 @Retention

- `@Retention("RUNTIME")` — 运行时保留，可通过反射访问
- `@Retention("BYTECODE")` — 字节码保留
- `@Retention("SOURCE")` — 源码级保留

### 18.5.2 @Target

- 限制注解可应用的目标（CLASS、METHOD、FIELD、PARAMETER 等）

## 18.6 Runtime Access to Annotations

- RUNTIME/BYTECODE 保留策略的注解可通过运行时 API 访问
- 注解作为类型使用时受到限制（当前编译器 ESE0159）
