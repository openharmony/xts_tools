# 3.19 Union Types - Java & Swift 实测报告

## 环境

| 语言 | 环境 | 状态 |
|------|------|------|
| Java | OpenJDK 1.8 | ✅ 实测 |
| Swift | Swift 5.10 | ✅ 实测 |

---

## Java 实测

**文件：** `JavaUnionTypes.java`

**命令：**
```bash
javac JavaUnionTypes.java
java JavaUnionTypes
```

**输出：**
```text
PASS java union analog int
PASS java union analog string
PASS java union analog bool
PASS java enum as Object analog
PASS java enum|string analog via Object
PASS java instanceof narrowing analog
PASS java union parameter int analog
PASS java union parameter string analog
PASS java common field via explicit cast
PASS java diff field type via explicit cast
PASS java common method via explicit cast
PASS java has no native union type N/A
PASS java no compile-time common union field checking N/A
SUMMARY pass=13 fail=0
```

---

## Swift 实测

**文件：** `SwiftUnionTypes.swift`

**命令：**
```bash
~/swift-5.10/usr/bin/swift SwiftUnionTypes.swift
```

**输出：**
```text
PASS swift union analog int
PASS swift union analog string
PASS swift union analog bool
PASS swift enum union analog
PASS swift string union analog
PASS swift union parameter int analog
PASS swift union parameter string analog
PASS swift common field via switch
PASS swift diff field type via switch
PASS swift common method via switch
PASS swift has no native union type N/A
PASS swift no compile-time common union field checking N/A
SUMMARY pass=12 fail=0
```

---

## 对比结论

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 原生 union | ✅ | ❌（接口/类层次模拟） | ❌（enum 关联值模拟） |
| union 参数 | ✅ | ❌（接口参数模拟） | ❌（enum 参数模拟） |
| instanceof/switch 收窄 | ✅ instanceof | ✅ instanceof + cast | ✅ switch pattern |
| common field 直接访问 | ✅ | ❌ 需 cast | ❌ 需 switch |
| common method 直接访问 | ✅ | ❌ interface/protocol 模拟 | ❌ protocol/switch 模拟 |
| 字段类型不同检查 | ⚠️ spec 要求报错，实测未报 | N/A | N/A |

Java/Swift 实测均说明：它们没有 ArkTS 原生 union 的 common member 直接访问能力，因此也不会出现 ArkTS 当前字段类型不同却允许直接访问的问题。