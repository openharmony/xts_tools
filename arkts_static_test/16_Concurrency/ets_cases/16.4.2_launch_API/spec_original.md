# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

**<font style="color:#20435C;">16.4.2  </font>**<font style="color:#20435C;">launch </font>**<font style="color:#20435C;">API</font>**

The launch API is the primary parallel execution API. It launches the provided lambda (synchronous or asynchronous) as a new job, by default choosing the least busy worker thread to host it.  If an asynchronous lambda is provided as a body for this new job, and this asynchronous lambda has suspension points, it can be rescheduled upon resumption to the worker thread that is least busy at the time of resumption.



1        <font style="color:#007021;">async  function  </font>g()  {  _<font style="color:#40808F;">/*  some  actions  */  </font>_}

2

3        <font style="color:#007021;">async  function  </font>f()  {

4             _<font style="color:#40808F;">//  </font>__<u><font style="color:#40808F;">      </font></u>_

5

6             _<font style="color:#40808F;">//  The  full  explicit  form  of launch .</font>_

7            _<font style="color:#40808F;">// Runs  the  provided  lambda  on  the  least  busy  worker  thread  and  returns  a</font>_

8            _<font style="color:#40808F;">// promise  that  will  get  resolved  once  the  lambda  completes .</font>_

9            <font style="color:#007021;">let  </font>p1 <font style="color:#666666;">:  </font><font style="color:#8F2100;">Promise</font><font style="color:#666666;"><</font>Int<font style="color:#666666;">>  =  </font>launch<font style="color:#666666;"><</font>Int<font style="color:#666666;">></font>(<font style="color:#007021;">async  </font>()  =>  {

10                              _<font style="color:#40808F;">/*  some  long  calculation  here  */</font>_

11                              <font style="color:#007021;">await  </font>g() 12              })

13            <font style="color:#007021;">let  </font>result1  <font style="color:#666666;">=  </font><font style="color:#007021;">await  </font>p1  _<font style="color:#40808F;">// can  be  safely  awaited  on  the  caller  worker  thread </font>_14

15           _<font style="color:#40808F;">// Most  of the  details  can  be  inferred  from  the  context  or  omitted:</font>_

16            <font style="color:#007021;">let  </font>p2  <font style="color:#666666;">=  </font>launch  <font style="color:#007021;">async  </font>{  <font style="color:#007021;">await  </font>g()  }

17

18             _<font style="color:#40808F;">//  </font>__<u><font style="color:#40808F;">      </font></u>_

19          }

20

21        <font style="color:#007021;">function  </font>h()  {

22                          _<font style="color:#40808F;">// launch  is  allowed  in  non-async  functions,  too</font>_

23                          launch  {  console.log(<font style="color:#4070A1;">"hello!"</font>)  } 24          }

The launch API allows to select the target worker thread for the new job and to customize other launch parameters. The important details and usage restrictions of this functionality are described in the [_<font style="color:#355F7C;">API details and restrictions</font>_](#bookmark4)_<font style="color:#355F7C;"> </font>_section.

For the detailed API specification, please refer to the ArkTS standard library documentation.
