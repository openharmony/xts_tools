# 3.21.2 NonNullable Utility Type - Java & Swift 实测报告

## Java 实测

```text
PASS Java Object accepts null (differs from ArkTS)
PASS Java Optional.of non-null
PASS Java has no compile-time NonNullable N/A
SUMMARY pass=3 fail=0
```

结论：Java 无 compile-time NonNullable。

## Swift 实测

```text
PASS Swift Optional nil
PASS Swift non-optional forced value
PASS Swift has no generic NonNullable utility type N/A
SUMMARY pass=3 fail=0
```

结论：Swift 无泛型 NonNullable。T? vs T 是编译期区分语法。