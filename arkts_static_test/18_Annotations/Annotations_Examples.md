# 18 Annotations 示例代码

本章收录 ArkTS §18 注解特性的最小可编译示例。

---

## 基本注解声明

```typescript
@interface ClassAuthor {
    authorName: string
}
```

## 注解使用

```typescript
@ClassAuthor({authorName: "Bob"})
class MyClass {}
```

## 无参注解

```typescript
@interface Marker {}

@Marker
class Test {}
```

## 字段默认值

```typescript
@interface Config {
    timeout: int = 1000
    retry: boolean = false
}
```

## 多个注解叠加

```typescript
@Marker
@ClassAuthor({authorName: "Alice"})
class Service {}
```

## 注解字段类型限制

```typescript
@interface Data {
    count: int
    name: string
    flags: boolean[]       // 数组类型
    // obj: Object         // compile-time error: 非允许类型
}
```

## 导出注解

```typescript
export @interface PublicAnno {
    version: string
}
```

## @Retention 和 @Target

```typescript
@Target(["CLASS"])
@interface ClassOnlyAnno {
    description: string
}
```
