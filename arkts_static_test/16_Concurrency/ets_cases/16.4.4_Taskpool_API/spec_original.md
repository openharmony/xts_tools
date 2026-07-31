# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.4.4 Taskpool API</font>**

The taskpool is the structured concurrency framework.  It allows to create new jobs, specify dependencies between them, cancel the spawned jobs, combine them in groups and choose a complex execution order.





<font style="color:#145DEA;">.  </font>**Note**

The suspendable jobs created by the taskpool API can not be rescheduled to another worker thread upon resumption.



Please refer to the standard library documentation to find out more information.
