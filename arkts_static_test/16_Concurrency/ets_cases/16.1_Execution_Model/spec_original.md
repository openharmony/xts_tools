# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.1  Execution model</font>**

A program in ArkTS defines one or more jobs that are executed by the runtime environment. Ajob is a piece of code that can be executed concurrently (that is, either asynchronously or in parallel with other jobs) and communicate its return value via the language provided mechanism.

Given that the target platform allows for parallel code execution, a worker thread is an abstraction over platform provided unit of parallelism. Typically, it will map 1:1 with OS threads. That means:

•  every job is hosted by a worker thread with only one job per worker thread being executed at once

•  if two or more jobs run on diferent worker threads then their code is able to run in parallel (this execution mode will be referred to as _<font style="color:#355F7C;">parallel execution</font>_)

•  if several jobs share the same worker thread then their code can never run in parallel (this execution mode will be referred to as _<font style="color:#355F7C;">asynchronous execution</font>_).

A job’s body has the starting point (the beginning of the corresponding piece of code) and the completion point (the end of the corresponding piece of code). A job’s body can (but is not obliged to) map 1:1 to such language entities as functions, methods or lambdas.

A job can have zero or more suspension points. Execution of a job can be paused at a suspension point and resumed at a later moment in time. Once suspended, a job allows another job to be executed on the same worker thread.

Any ArkTS program implicitly defines one **main **job, which corresponds to the_<font style="color:#355F7C;">Program Entry Point</font>_. The execution starts from it, and its completion initiates the program termination sequence.

The exact language features and standard library APIs that are used for defining jobs and their respective suspension points are described in the subsequent sections.



**337**





The program memory is shared between all jobs , which allows for efficient data sharing but implies that the developer should use the provided means of synchronization to avoid race conditions and guarantee thread safety.
