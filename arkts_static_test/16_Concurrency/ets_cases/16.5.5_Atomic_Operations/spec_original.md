# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.5.5 Atomic operations</font>**

ArkTS standard library provides a set of classes that support atomic operations.  The intended use cases for them are lock free data structures and algorithms: from simple compare-and-swap and spinlocks to complex containers.

Please refer to the standard library documentation to find out more information.
