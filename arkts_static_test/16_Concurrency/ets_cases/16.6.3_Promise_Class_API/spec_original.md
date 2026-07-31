# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.6.3  Promise class API</font>**

There are some important restrictions that limit the correct usage of the Promise class.

A Promise class instance is safe to be awaited within a job on some worker thread while being resolved or rejected from another job on the same or diferent worker thread.

A Promise class allows to register callbacks that are to be called upon Promise resolution and/or rejection.  This is done by calling the .then() / .catch() / .finally() methods of the Promise class. However, these methods have the following usage restrictions:

•  the registered callback will be called as a separate job on the same worker thread where it was registered

•  if multiple callbacks are registered from the jobs that reside on the same worker thread, the order of their execution matches the order of their registration

•  if multiple callbacks are registered from the jobs that reside on diferent worker threads, the order of their execu- tion is defined only within each worker thread, and no order is guaranteed between the resulting jobs that reside on diferent worker threads

Please refer to the standard library documentation to find out more information about the Promise methods.
