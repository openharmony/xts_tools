# 3.21.5 Readonly Utility Type - Java & Swift 实测报告

## Java 实测

```text
PASS Java has final fields but no Readonly type N/A
SUMMARY pass=1 fail=0
```

## Swift 实测

```text
PASS Swift let/var per field but no Readonly type N/A
SUMMARY pass=1 fail=0
```

## 结论

Java/Swift 均无 `Readonly<T>` 编译期类型。