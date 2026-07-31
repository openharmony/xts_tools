# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.4.1  Parallel execution API</font>**

ArkTS standard library provides the following sets of API for parallel execution:

• [_<font style="color:#355F7C;">launch API</font>_](#bookmark9): the primary parallel execution API, simple and fast;

• [_<font style="color:#355F7C;">EAWorker API</font>_](#bookmark10): the API that allows for creation of worker threads that are used exclusively by a job and its children;





• [_<font style="color:#355F7C;">Taskpool API</font>_](#bookmark11): the framework that ofers structured concurrency capabilities: task grouping, dependencies and cancellation
