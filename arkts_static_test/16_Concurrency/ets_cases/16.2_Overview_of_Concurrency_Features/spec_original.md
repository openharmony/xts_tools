# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.2 Overview of concurrency features</font>**

ArkTS allows for both asynchronous and parallel programming and provides the following:

• [_<font style="color:#355F7C;">Asynchronous execution</font>_](#bookmark1)primitives: async / await / Promise;

• [_<font style="color:#355F7C;">Parallel Execution</font>_](#bookmark2)API: EAWorker  API / Taskpool  API / launch  API, including the structured concurrency support;

• [_<font style="color:#355F7C;">Synchronization</font>_](#bookmark3)API: locks API, atomics API and other means of synchronization;

The [_<font style="color:#355F7C;">API details and restrictions</font>_](#bookmark4)_<font style="color:#355F7C;"> </font>_section provides the detailed API description and the restrictions on its usage.
