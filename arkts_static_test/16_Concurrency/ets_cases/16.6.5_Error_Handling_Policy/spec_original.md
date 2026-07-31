# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.6.5  Error handling policy</font>**

In general, all errors thrown in an ArkTS program should either have an ability to be handled by the developer or considered uncaught, and initiate a program termination sequence. This applies to any job on any worker thread.

A job in an ArkTS program can complete abnormally, i.e., can throw an error.  Since jobs communicate their return values using Promise class instances, in case of job’s abnormal completion the corresponding promise gets rejected and the original error is not considered uncaught.

However, there can exist some cases when such rejection cannot be handled by the developer, for example:

•  when the thrower job was created by the runtime environment, and no promise can be awaited or handled with a

.then() / .catch() callback

•  when the _main _job throws an error

In such cases, the original error thrown by the job will be considered uncaught.
