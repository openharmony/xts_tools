# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.4.3  EAWorker API</font>**

The EAWorker API is designed for the use case when developer’s code requires a dedicated worker thread to run on (for example, such use case is relevant for UI frameworks).

This API creates a worker thread for the _exclusive _use of an initial job.  That means, the initial job and all the jobs spawned by it will stay on this newly created worker thread, and no other job can be scheduled to this worker thread.





Please refer to the standard library documentation to find out more information.
