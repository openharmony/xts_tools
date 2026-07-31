# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.5 Synchronization</font>**

The synchronization mechanisms that exist in ArkTS and its standard library address the need for imposing certain order on the execution of the code that belongs to the jobs being executed asynchronously or in parallel.  Such need originates from the two facts:

•  firstly, all the data in ArkTS are by default shared between all jobs on all worker threads, which may cause data races in case when the same data is accessed concurrently;

•  secondly, certain code sequences expect the data they operate on to be accessed exclusively by their job. If this job is a suspendable job and it suspends its execution inbetween of such code sequence, then another job can violate the expected exclusivity even in case when it runs on the same worker thread.

The means of synchronization that ArkTS provides are:

• [_<font style="color:#355F7C;">Asynchronous lock</font>_](#bookmark12): the “fused” asynchronous locking API, which allows the provided callback to safe operate on some data;

• [_<font style="color:#355F7C;">Asynchronous mutex</font>_](#bookmark13), [_<font style="color:#355F7C;">Asynchronous read/write lock</font>_](#bookmark14), [_<font style="color:#355F7C;">Asynchronous condition variable</font>_](#bookmark15): the “decoupled” asyn- chronous locking API, which provides the asynchronous version of traditional decoupled lock() / unlock() operations and also an asynchronous condition variable equivalent;

• [_<font style="color:#355F7C;">Atomic operations</font>_](#bookmark16): the atomic operations support, which also allows for building efficient lock-free structures

• [_<font style="color:#355F7C;">Additional entities and other notes</font>_](#bookmark17): a variety of other supplemental standard library classes and methods
