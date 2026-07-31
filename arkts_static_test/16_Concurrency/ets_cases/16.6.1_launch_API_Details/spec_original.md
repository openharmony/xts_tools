# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.6.1  </font>**<font style="color:#20435C;">launch </font>**<font style="color:#20435C;">API details and restrictions</font>**

The launch API allows for defining a set of worker threads that a newly created job can run on. This set is defined in terms of worker thread _domains_ and _groups_.

**worker thread ID**

A unique number that is assigned to every worker thread, existing or newly created.

**worker thread domain**

A named filtering criteria that defines some set of worker threads that have something in common.  A worker thread domain can contain diferent number of workers at diferent time.  Notable domains include _main_ and _exclusive_ worker threads. The exact list of available domains is provided in the standard library documentation.

**worker thread group**

An immutable set of worker threads.

The launch API allows to define a worker thread group in several ways, for example by specifying the worker thread domain or the exact list of worker thread IDs.  Once defined, a worker thread group can be specified in the launch parameters, so the newly created job will be assigned to the appropriate worker thread from the provided worker thread group. Later on, if the scheduler decides to reschedule this job to another worker thread, the new worker thread will be chosen from this group, too.





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

Since the worker thread group is immutable, at some point the worker thread IDsit refers might become invalid. This happens because in some situations worker threads can be created or deleted (e.g.  the _exclusive_ worker threads), including the worker threads that the group contains.  In such case, the functions from _launch_ _丶_ API will either safely ignore the invalid IDs, throw an error or return the appropriate return value. For the details, please refer to the standard library documentation.
