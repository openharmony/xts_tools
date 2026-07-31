# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.3.5 </font>**<font style="color:#20435C;">Promise </font>**<font style="color:#20435C;">class</font>**

The Promise class represents a value that is to be defined at some time in future, thus allowing for referencing a result of an unfinished calculation or an incomplete task.  All kinds of jobs in ArkTS use promises to communicate their results to the client code.

A Promise instance can have the following states:

• _pending_: this state means that the resulting value is not yet known;

•  _resolved_: this state means that the Promise has been _fulfilled _and its value has been defined;

•  _rejected_: this state means that the associated calculation completed abnormally, so the Promise instance contains the error instance that describes the reason of abnormal completion;

The only way to get the value that was used to resolve or reject the Promise is to apply the [_<font style="color:#355F7C;">await expression</font>_](#bookmark7)_<font style="color:#355F7C;"> </font>_to the Promise instance.





<font style="color:#145DEA;">.  </font>**Note**

The semantics of Promise is similar to the semantics of Promise in JavaScript/TypeScript if it was returned by an asynchronous function on the **main **worker thread or created manually on the **main **worker thread.  It is to be defined if such statements should reside in ArkTS specification.



In general, the Promise instances are safe to be accessed concurrently.  The exceptions for this rule and the detailed API is described in the [_<font style="color:#355F7C;">API details and restrictions</font>_](#bookmark4)_<font style="color:#355F7C;"> </font>_section.
