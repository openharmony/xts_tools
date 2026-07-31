# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.4  Parallel Execution</font>**

The _<font style="color:#355F7C;">parallel execution </font>_capability addresses the situation when developer’s code executes either CPU-intensive tasks that can take advantage of utilizing multiple CPU cores or long tasks that can take advantage of running in a separate OS thread of execution to avoid blocking.

For such cases, ArkTS provides a standard library level API that allows for running code in parallel at function/method granularity (that is, for defining jobs that can run on diferent worker threads), with the ability to specify dependencies between jobs and balance the load across the available CPU cores and/or OS threads.

This capability is orthogonal to the [_<font style="color:#355F7C;">Asynchronous execution</font>_](#bookmark1)_<font style="color:#355F7C;"> </font>_capability, i.e.  asynchronous functions can also be run in parallel, and this in general does not afect the way they are suspended/resumed.  The only diference is that under certain conditions a suspendable job can change its worker thread upon resumption (see [_<font style="color:#355F7C;">Scheduling rules</font>_](#bookmark8)).
