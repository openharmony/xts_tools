# 3.19.3 Keyof Types - Java & Swift 实测报告

## Java 实测

**文件：** `JavaKeyofTypes.java`

**输出：**
```text
PASS java reflective keyof field
PASS java reflective keyof method
PASS java reflective keyof invalid missing
PASS java interface field name
PASS java interface method run
PASS java empty local class declared members empty
PASS java has no compile-time keyof N/A
SUMMARY pass=7 fail=0
```

## Swift 实测

**文件：** `SwiftKeyofTypes.swift`

**输出：**
```text
PASS swift Mirror field
PASS swift Mirror does not include methods
PASS swift has no compile-time keyof N/A
PASS swift empty struct mirror empty
SUMMARY pass=4 fail=0
```

## 结论

- Java/Swift 均无 compile-time keyof
- Java 反射可取字段和方法
- Swift Mirror 默认只能取实例存储属性，不含方法
- ArkTS keyof 表达力明显强于 Java/Swift，但当前 `keyof number` 未按 spec 报错
