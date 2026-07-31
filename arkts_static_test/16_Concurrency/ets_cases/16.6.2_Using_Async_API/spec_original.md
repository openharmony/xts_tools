# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.6.2  Using the asynchronous API</font>**

In certain cases, a call to an async function requires awaiting its result, but the call site resides in the non-async function. In such cases, the caller function should be converted to an asynchronous one, and in some cases this chain of conversions has to be continued up to the program entry point. For this case, ArkTS supports the async entry point function (see _<font style="color:#355F7C;">Program Entry Point</font>_).





<font style="color:#145DEA;">.  </font>**Note**

Maybe, this section should be moved to the handbook.
