# 3.21.6 Record Utility Type - Java & Swift 实测报告

## Java 实测

```text
PASS java HashMap analog
PASS Java has no compile-time Record type N/A
SUMMARY pass=2 fail=0
```

结论：Java 无编译期 Record，运行时 HashMap 近似。

## Swift 实测

```text
PASS Swift Dictionary is runtime, no compile-time Record N/A
SUMMARY pass=1 fail=0
```

结论：Swift 无编译期 Record，Dictionary 是运行时。