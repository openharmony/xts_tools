# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.3.4  </font>**<font style="color:#20435C;">await </font>**<font style="color:#20435C;">expression</font>**

An _await expression _defines a suspension point within the asynchronous function body.  The syntax of the _await ex- pression _is as follows:



<font style="color:#0D85B5;">awaitExpression </font>:

'<font style="color:#0D85B5;">await </font>'  <font style="color:#0D85B5;">expression</font>

_<font style="color:#40808F;">;</font>_

The  expression  argument  here  can  be  of  any   type  (_<font style="color:#355F7C;">Type  Any</font>_).      The   type  of  an   _await  expression  _is Awaited<type(expression)> (see _<font style="color:#355F7C;">Awaited Utility Type</font>_), but the value and the semantics of the _await expression _depend on the type of its expression argument.

If the type of an expression is a subtype of[_<font style="color:#355F7C;">Promise class</font>_](#bookmark6), then:

•  Execution of the enclosing asynchronous function is paused until the awaited Promise instance is _resolved _or _rejected_;

•  If the awaited Promise instance is _resolved_, then the value with which the Promise is resolved becomes the value of the _await expression_;

•  If the awaited Promise instance is _rejected_, then the _await expression _throws the error with which the Promise instance is rejected;

If the  expression type is not a subtype of [_<font style="color:#355F7C;">Promise  class</font>_](#bookmark6),  then the _await expression _returns the value of the expression argument, and the enclosing asynchronous function is not suspended:



1         <font style="color:#007021;">class  </font>SomeClass  {

2                method() <font style="color:#666666;">:  </font>SomeClass  <font style="color:#666666;">|  </font><font style="color:#007021;">undefined  </font>{  _<font style="color:#40808F;">/*  body  */  </font>_}

3                <font style="color:#007021;">async  </font>asyncMethod() <font style="color:#666666;">:  </font><font style="color:#007021;">Promise</font><font style="color:#666666;"><</font><font style="color:#8F2100;">string</font><font style="color:#666666;">>  </font>{  _<font style="color:#40808F;">/*  body  */  </font>_} 4          }

5

6        <font style="color:#007021;">async  function  </font>g() <font style="color:#666666;">:  </font><font style="color:#007021;">Promise</font><font style="color:#666666;"><</font><font style="color:#007021;">Object</font><font style="color:#666666;">>  </font>{  _<font style="color:#40808F;">/*  returns  Promise  */  </font>_}

7

8        <font style="color:#007021;">async  function  </font>f()  {  _<font style="color:#40808F;">// await  is  allowed  in  async  context  only</font>_

9                  _<font style="color:#40808F;">//  </font>__<u><font style="color:#40808F;">      </font></u>_

10

11               _<font style="color:#40808F;">//  v1  is  Awaited<Promise<Object>>,  which  is  effectively Object</font>_

12               _<font style="color:#40808F;">//  g  returns  Promise,  hence  f can  be  suspended potentially</font>_

13                  <font style="color:#007021;">let  </font>v1  <font style="color:#666666;">=  </font><font style="color:#007021;">await  </font>g()

14

15                  _<font style="color:#40808F;">//  v2  is  Awaited<Int>,  which  is  effectively  Int</font>_

16                _<font style="color:#40808F;">// await  argument  is  an  Int,  hence  no  suspension  occurs</font>_

17                  <font style="color:#007021;">let  </font>v2  <font style="color:#666666;">=  </font><font style="color:#007021;">await new  </font>Int(<font style="color:#21804F;">5</font>)

18

19               _<font style="color:#40808F;">//  v3  is  Awaited<Promise<string>  |  undefined>,  which  is  (string  |  undefined)</font>_

20               _<font style="color:#40808F;">//  -  if method()  returned  an  object:  suspension  can  occur,  v3  is  the  await  result</font>_

21               _<font style="color:#40808F;">//  -  if method()  returned  undefined:  no  suspension,  v3  is  undefined</font>_

22                 <font style="color:#007021;">let  </font>v3  <font style="color:#666666;">=  </font><font style="color:#007021;">await  </font>(<font style="color:#007021;">new  </font>SomeClass) .method()<font style="color:#666666;">? </font>.asyncMethod()

23

24                  _<font style="color:#40808F;">//  </font>__<u><font style="color:#40808F;">      </font></u>_

25          }

Under certain circumstances, the suspendable job that has been suspended on await can be moved to another worker thread upon resumption, i.e. rescheduled (see [_<font style="color:#355F7C;">Scheduling rules</font>_](#bookmark8)).

A compile-time error occurs if await is used outside of an asynchronous function, method or lambda body.
