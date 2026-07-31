# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**16.7.1 Scheduling rules**

The runtime environment schedules the jobs that are defined by an ArkTS program in accordance with the following rules:

•  Every job has a priority, which depends solely on its type. The list of types, from highest to lowest priority:

1.  suspendable jobs and Promise callbacks ( .then(), etc.);
2.  Other jobs

• Within each worker thread, the jobs with higher priority are scheduled before jobs with lower priority;

•  All jobs with the same priority are scheduled in the FIFO order;

> Note: These rules are incomplete and will be updated.
