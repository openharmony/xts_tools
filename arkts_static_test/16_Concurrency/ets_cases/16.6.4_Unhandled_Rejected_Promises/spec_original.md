# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.6.4  Unhandled Rejected Promises</font>**





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

The semantics of unhandled rejections will be revisited later, once the design of ArkTS concurrency subsystem is complete.

A rejected Promise is considered unhandled if, at certain time, there is no await waiting for it and there are no callbacks registered for it with the .then() / .catch() methods.

This moment of time is defined separately on each worker thread, hence the Promise instance is considered an _unhan- dled rejection _only within a context of some worker thread, while possibly being _handled _on other ones.
