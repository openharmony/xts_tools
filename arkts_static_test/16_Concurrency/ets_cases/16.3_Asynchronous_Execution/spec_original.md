# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.3 Asynchronous execution</font>**

The _<font style="color:#355F7C;">asynchronous execution </font>_capability addresses the situation when developer’s code regularly needs to wait for ex- ternal (e.g network, timers or user input) or internal (e.g.  status updates from a job that is running on another worker thread) events. For such cases, ArkTS provides a way to suspend execution of a job, mark the job as blocked on a wait for certain event and resume its execution later, once the event happens.

The ArkTS features that provide the asynchronous execution support are:

•  the async and await keywords that mark suspendable (asynchronous) functions and suspension points inside such functions, respectively

•  the Promise class in the Standard Library, which is an abstraction of the unfinished computation result that will get its value at some time in future.
