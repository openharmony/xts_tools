# 3.19.2 Access to Common Union Members - Java & Swift 实测报告

## 环境

| 语言 | 环境 | 状态 |
|------|------|------|
| Java | OpenJDK 1.8 | ✅ 实测 |
| Swift | Swift 5.10 | ✅ 实测 |

---

## Java 实测

**文件：** `JavaCommonUnionMembers.java`

**命令：**
```bash
javac JavaCommonUnionMembers.java
java JavaCommonUnionMembers
```

**输出：**
```text
PASS java common interface method square
PASS java common interface method circle
PASS java common field requires explicit cast
PASS java different field type only after cast
PASS java missing member would be compile error N/A
PASS java static member via union N/A
SUMMARY pass=6 fail=0
```

**结论：** Java 无原生 union common member，使用 interface 可以表达共同方法，但字段访问必须显式 cast。

---

## Swift 实测

**文件：** `SwiftCommonUnionMembers.swift`

**命令：**
```bash
~/swift-5.10/usr/bin/swift SwiftCommonUnionMembers.swift
```

**输出：**
```text
PASS swift common protocol method square
PASS swift common protocol method circle
PASS swift common field via switch
PASS swift different field type only after switch
PASS swift missing member requires switch/protocol N/A
PASS swift static member via union N/A
SUMMARY pass=6 fail=0
```

**结论：** Swift 无原生 union common member，使用 protocol 可表达共同方法，字段差异需 enum + switch 显式处理。

---

## 三语言对比

| 特性 | ArkTS | Java（实测） | Swift（实测） |
|------|-------|-------------|---------------|
| 原生 union common method | ✅ | ❌（interface 模拟） | ❌（protocol 模拟） |
| 原生 union common field | ✅ | ❌（必须 cast） | ❌（必须 switch） |
| 字段类型不同应拒绝 | ⚠️ spec 要求，实测未拒绝 | N/A | N/A |
| 缺失成员应拒绝 | ✅ | N/A（接口不声明则编译失败） | N/A（protocol 不声明则编译失败） |
| static member 应拒绝 | ✅ | N/A | N/A |
| overload member 应拒绝 | ✅ | N/A | N/A |

---

## 对 ArkTS 问题的支持

Java/Swift 都没有原生 union field access；因此当字段类型不同时，必须显式分支处理，天然不会出现 ArkTS 当前这种"共同字段类型不同仍允许直接访问"的问题。

ArkTS spec 要求字段类型不同应 compile-time error，但实测编译通过，记为 `D-3.19-02`。
