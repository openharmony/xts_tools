# 3.19.1 Union Types Normalization - Java & Swift 实测报告

## 环境

| 语言 | 环境 | 状态 |
|------|------|------|
| Java | OpenJDK 1.8 | ✅ 实测 |
| Swift | Swift 5.10 | ✅ 实测 |

---

## Java 实测

**文件：** `JavaUnionNormalization.java`

**命令：**
```bash
javac JavaUnionNormalization.java
java JavaUnionNormalization
```

**输出：**
```text
PASS java union int variant
PASS java union string variant
PASS java union bool variant
PASS java string literal is String
PASS java general string is String
PASS java has no never bottom type N/A
PASS java has no readonly array union normalization N/A
PASS java base instance
PASS java derived as base instance
SUMMARY pass=9 fail=0
```

**结论：** Java 无原生 union normalization，只能用接口/类层次模拟 union variant。

---

## Swift 实测

**文件：** `SwiftUnionNormalization.swift`

**命令：**
```bash
~/swift-5.10/usr/bin/swift SwiftUnionNormalization.swift
```

**输出：**
```text
PASS swift union int variant
PASS swift union string variant
PASS swift bool variant
PASS swift string literal is String
PASS swift general string is String
PASS swift Never exists but no union normalization N/A
PASS swift immutable array read
PASS swift mutability controlled by let/var, no readonly union N/A
PASS swift base instance
PASS swift derived as base instance
SUMMARY pass=10 fail=0
```

**结论：** Swift 无原生 union normalization，用 enum 关联值模拟 union；readonly 由 let/var 控制，而非类型层级 union 归一化。

---

## 三语言对比

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 原生 union normalization | ✅ | ❌ | ❌ |
| 嵌套 union 扁平化 | ✅ | N/A | N/A |
| alias 展开 | ✅ | N/A | ✅ typealias（但无 union） |
| string literal 被 string 吸收 | ✅ | N/A（literal 本就是 String）| N/A（literal 本就是 String） |
| never 消除 | ✅ | N/A | Never 存在但无 union normalization |
| readonly union priority | ⚠️ spec 支持，实测有 bug | N/A | N/A（let/var 控制） |

---

## 实测支持的 ArkTS 问题

Java/Swift 都没有 readonly union normalization，因此无法直接对照。但两者都不会出现 ArkTS 当前的"spec 规定 readonly wins，但实现允许写入"这种情况。

ArkTS 问题：`D-3.19.1-01`
