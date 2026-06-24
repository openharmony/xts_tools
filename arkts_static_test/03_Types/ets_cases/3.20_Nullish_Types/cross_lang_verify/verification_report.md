# 3.20 Nullish Types - Java & Swift 实测报告

## Java 实测

**文件：** `JavaNullishTypes.java`

**输出：**
```text
PASS java null reference allowed for String
PASS java Object accepts null
PASS java Optional fallback empty
PASS java Optional fallback value
PASS java manual safe field null
PASS java manual safe field value
PASS java direct null member throws NPE
PASS java has null but no undefined N/A
PASS java Object accepts null unlike ArkTS Object N/A
SUMMARY pass=9 fail=0
```

## Swift 实测

**文件：** `SwiftNullishTypes.swift`

**输出：**
```text
PASS swift optional nil
PASS swift optional value
PASS swift nil coalescing empty
PASS swift nil coalescing value
PASS swift optional chaining nil
PASS swift optional chaining value
PASS swift force unwrap success
PASS swift nil force unwrap would trap N/A
PASS swift has nil but no undefined N/A
SUMMARY pass=9 fail=0
```

## 三语言对比结论

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 语言级 nullish | ✅ | ❌ | ✅ |
| undefined | ✅ | ❌ | ❌ |
| null/nil | ✅ | ✅ | ✅ |
| safe access | ✅ | 手动 | ✅ |
| Object 接收 null | ❌ | ✅ | ❌ |
