# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.5.3 Asynchronous read/write lock</font>**

The asynchronous read/write lock (AsyncRWLock) allows to protect some shared data, for example, a part of object state, from concurrent access. It is designed for the use case when both of the following statements are true:

•  the code sequence that accesses the protected state is hard to be conveniently isolated as a distinct function object (function, method or lambda), so the decoupled lock() and unlock() operations are required

•  access to the shared state must be mutually exclusive between a group of entities that can safely access the data concurrently (“readers”) and any other entity that requires exclusive access to the data (“writer”/”writers”)

Please refer to the standard library documentation to find out more information.
