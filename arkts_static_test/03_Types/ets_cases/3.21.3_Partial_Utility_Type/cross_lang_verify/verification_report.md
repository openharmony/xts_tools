# 3.21.3 Partial Utility Type - Java & Swift 实测报告

## Java 实测

```text
PASS Java has no Partial type N/A
PASS Java can simulate optional fields via null
SUMMARY pass=2 fail=0
```

## Swift 实测

```text
PASS Swift has no Partial type N/A
PASS Swift optional fields work but Not Partial N/A
SUMMARY pass=2 fail=0
```

## 结论

Java/Swift 均无 `Partial<T>` 编译期工具类型。需用 null/Optional/可选属性模拟。