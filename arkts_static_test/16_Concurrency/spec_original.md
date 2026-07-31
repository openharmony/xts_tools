

**CHAPTER**

**SIXTEEN**







**CONCURRENCY**













ArkTS provides a wide variety of means for writing programs that efficiently utilize hardware resources by running certain pieces of code in parallel and asynchronously.

This chapter covers:

•  the ArkTS execution model

•  the semantics of _asynchronous_, _parallel _and _concurrent _code execution in ArkTS

•  the language features and standard library API that provide the corresponding functionality











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



**<font style="color:#20435C;">16.2 Overview of concurrency features</font>**

ArkTS allows for both asynchronous and parallel programming and provides the following:

• [_<font style="color:#355F7C;">Asynchronous execution</font>_](#bookmark1)primitives: async / await / Promise;

• [_<font style="color:#355F7C;">Parallel Execution</font>_](#bookmark2)API: EAWorker  API / Taskpool  API / launch  API, including the structured concurrency support;

• [_<font style="color:#355F7C;">Synchronization</font>_](#bookmark3)API: locks API, atomics API and other means of synchronization;

The [_<font style="color:#355F7C;">API details and restrictions</font>_](#bookmark4)_<font style="color:#355F7C;"> </font>_section provides the detailed API description and the restrictions on its usage.









**<font style="color:#20435C;">16.3 Asynchronous execution</font>**

The _<font style="color:#355F7C;">asynchronous execution </font>_capability addresses the situation when developer’s code regularly needs to wait for ex- ternal (e.g network, timers or user input) or internal (e.g.  status updates from a job that is running on another worker thread) events. For such cases, ArkTS provides a way to suspend execution of a job, mark the job as blocked on a wait for certain event and resume its execution later, once the event happens.

The ArkTS features that provide the asynchronous execution support are:

•  the async and await keywords that mark suspendable (asynchronous) functions and suspension points inside such functions, respectively

•  the Promise class in the Standard Library, which is an abstraction of the unfinished computation result that will get its value at some time in future.

**<font style="color:#20435C;">16.3.1 Asynchronous Functions</font>**

An _asynchronous function _is a function that can define suspension points inside its body. A non-asynchronous function can not have suspension points.





<font style="color:#145DEA;">.  </font>**Note**

A _suspension point _is the point in the function code where function execution can be paused (so the function becomes _suspended_) and, at some time in future, _resumed_. The suspension implies that control is transferred else- where, but all the local function state (e.g. the argument and local variable values) is preserved until the resumption.



Asynchronous functions should be marked with the async modifier and return an instance of the generic [_<font style="color:#355F7C;">Promise class</font>_](#bookmark6)_<font style="color:#355F7C;"> </font>_class, which wraps the return value. The async modifier is not a part of the function type: a non-async function that returns Promise and an async function with the same return type and arguments are no diferent from the type system perspective. The function that serves as the _<font style="color:#355F7C;">Program Entry Point</font>_can be asynchronous, too.

Execution of an async function can be paused at suspension points, which are defined with the [_<font style="color:#355F7C;">await expression</font>_](#bookmark7).  If suspension happens, the async function immediately returns a _pending _Promise instance. In case of the first (by the control flow) suspension point, the control is transferred to the caller of the asynchronous function, and the runtime environment creates a new suspendable job that corresponds to the suspended function.  Eventually, in accordance with the [_<font style="color:#355F7C;">Scheduling rules</font>_](#bookmark8), the async function resumes its execution from the suspension point where the execution





was paused. In case of second and further suspension points, after the suspension happens, the runtime environment schedules another job for execution. The job to be scheduled is chosen in accordance with the [_<font style="color:#355F7C;">Scheduling rules</font>_](#bookmark8).

Execution of an asynchronous function completes either by a normal return or by throwing an error. In both cases, the resulting value or error is wrapped into a Promise class instance, _resolving _or _rejecting _it respectively (see [_<font style="color:#355F7C;">Promise</font>_](#bookmark6)_<font style="color:#355F7C;"> </font>_[_<font style="color:#355F7C;">class</font>_](#bookmark6)_<font style="color:#355F7C;"> </font>_for details).

An asynchronous function with the return type Promise<T> can explicitly return a Promise<T> instance (in this case, the returned value is returned “as is”) or a value of type T, which is then automatically boxed in an instance of Promise<T>. Both options are allowed tobe the expression of the return statement inside the async function body (see _<font style="color:#355F7C;">return Statements</font>_and _<font style="color:#355F7C;">Return Type Inference</font>_). T here is a subtype of_<font style="color:#355F7C;">Type Any</font>_. If T has void or undefined type (see _<font style="color:#355F7C;">Type void or undefined</font>_) then, like in non-asynchronous functions, an argumentless return statement is allowed.





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

Summarizing: an asynchronous function with one or more suspension points defines a new suspendable job in an ArkTS program, which starts from the first suspension and ends with the asynchronous function completion.  An asynchronous function with zero suspension points does not define any additional jobs.



A compile-time error occurs if:

•  async function is called in a static initialization;

•  async function has an abstract or a native modifier;

• return type of an async function is other than Promise.

•  a non-async function defines any suspension points









**<font style="color:#20435C;">16.3.2 Asynchronous Lambdas</font>**

A lambda can have the async modifier (see _<font style="color:#355F7C;">Lambda Expressions</font>_and _<font style="color:#355F7C;">Trailing Lambdas</font>_).

With regard to concurrency, async lambdas have the same semantics and follow the same rules as [_<font style="color:#355F7C;">Asynchronous</font>_](#bookmark5)_<font style="color:#355F7C;"> </font>_[_<font style="color:#355F7C;">Functions</font>_](#bookmark5).









**<font style="color:#20435C;">16.3.3 Asynchronous Methods</font>**

A static or instance class method can have the async modifier (see_<font style="color:#355F7C;">Method Declarations</font>_).

With regard to concurrency, async methods have the same semantics and follow the same rules as [_<font style="color:#355F7C;">Asynchronous</font>_](#bookmark5)_<font style="color:#355F7C;"> </font>_[_<font style="color:#355F7C;">Functions</font>_](#bookmark5).





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









**<font style="color:#20435C;">16.4  Parallel Execution</font>**

The _<font style="color:#355F7C;">parallel execution </font>_capability addresses the situation when developer’s code executes either CPU-intensive tasks that can take advantage of utilizing multiple CPU cores or long tasks that can take advantage of running in a separate OS thread of execution to avoid blocking.

For such cases, ArkTS provides a standard library level API that allows for running code in parallel at function/method granularity (that is, for defining jobs that can run on diferent worker threads), with the ability to specify dependencies between jobs and balance the load across the available CPU cores and/or OS threads.

This capability is orthogonal to the [_<font style="color:#355F7C;">Asynchronous execution</font>_](#bookmark1)_<font style="color:#355F7C;"> </font>_capability, i.e.  asynchronous functions can also be run in parallel, and this in general does not afect the way they are suspended/resumed.  The only diference is that under certain conditions a suspendable job can change its worker thread upon resumption (see [_<font style="color:#355F7C;">Scheduling rules</font>_](#bookmark8)).



**<font style="color:#20435C;">16.4.1  Parallel execution API</font>**

ArkTS standard library provides the following sets of API for parallel execution:

• [_<font style="color:#355F7C;">launch API</font>_](#bookmark9): the primary parallel execution API, simple and fast;

• [_<font style="color:#355F7C;">EAWorker API</font>_](#bookmark10): the API that allows for creation of worker threads that are used exclusively by a job and its children;





• [_<font style="color:#355F7C;">Taskpool API</font>_](#bookmark11): the framework that ofers structured concurrency capabilities: task grouping, dependencies and cancellation









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









**<font style="color:#20435C;">16.4.3  EAWorker API</font>**

The EAWorker API is designed for the use case when developer’s code requires a dedicated worker thread to run on (for example, such use case is relevant for UI frameworks).

This API creates a worker thread for the _exclusive _use of an initial job.  That means, the initial job and all the jobs spawned by it will stay on this newly created worker thread, and no other job can be scheduled to this worker thread.





Please refer to the standard library documentation to find out more information.









**<font style="color:#20435C;">16.4.4 Taskpool API</font>**

The taskpool is the structured concurrency framework.  It allows to create new jobs, specify dependencies between them, cancel the spawned jobs, combine them in groups and choose a complex execution order.





<font style="color:#145DEA;">.  </font>**Note**

The suspendable jobs created by the taskpool API can not be rescheduled to another worker thread upon resumption.



Please refer to the standard library documentation to find out more information.











**<font style="color:#20435C;">16.5 Synchronization</font>**

The synchronization mechanisms that exist in ArkTS and its standard library address the need for imposing certain order on the execution of the code that belongs to the jobs being executed asynchronously or in parallel.  Such need originates from the two facts:

•  firstly, all the data in ArkTS are by default shared between all jobs on all worker threads, which may cause data races in case when the same data is accessed concurrently;

•  secondly, certain code sequences expect the data they operate on to be accessed exclusively by their job. If this job is a suspendable job and it suspends its execution inbetween of such code sequence, then another job can violate the expected exclusivity even in case when it runs on the same worker thread.

The means of synchronization that ArkTS provides are:

• [_<font style="color:#355F7C;">Asynchronous lock</font>_](#bookmark12): the “fused” asynchronous locking API, which allows the provided callback to safe operate on some data;

• [_<font style="color:#355F7C;">Asynchronous mutex</font>_](#bookmark13), [_<font style="color:#355F7C;">Asynchronous read/write lock</font>_](#bookmark14), [_<font style="color:#355F7C;">Asynchronous condition variable</font>_](#bookmark15): the “decoupled” asyn- chronous locking API, which provides the asynchronous version of traditional decoupled lock() / unlock() operations and also an asynchronous condition variable equivalent;

• [_<font style="color:#355F7C;">Atomic operations</font>_](#bookmark16): the atomic operations support, which also allows for building efficient lock-free structures

• [_<font style="color:#355F7C;">Additional entities and other notes</font>_](#bookmark17): a variety of other supplemental standard library classes and methods









**<font style="color:#20435C;">16.5.1 Asynchronous lock</font>**

The asynchronous lock (AsyncLock class) allows to protect some shared data, for example, a part of object state, from concurrent access.  It is designed for the use cases when the code sequence that accesses the protected state can be conveniently isolated as a distinct function object (function, method or lambda).







1        _<font style="color:#40808F;">// a  shared  (</font>_[_<font style="color:#40808F;">e.g.  global</font>_](e.g.global)_<font style="color:#40808F;">)  data  that  we  would  like  to protect</font>_

2         <font style="color:#007021;">class  </font>SharedState  {

3               value <font style="color:#666666;">:  </font><font style="color:#8F2100;">string  </font><font style="color:#666666;">=</font>

<font style="color:#4070A1;">"nothing"</font>

4          }

5         <font style="color:#007021;">let  </font>whatIsInTheBag <font style="color:#666666;">:  </font><font style="color:#8F2100;">SharedState  </font><font style="color:#666666;">= </font><font style="color:#007021;">new  </font>SharedState

6

7        _<font style="color:#40808F;">// a  function  that  reads  and modifies  the  shared  data</font>_

8        <font style="color:#007021;">function  </font>checkAndModify(data <font style="color:#666666;">:  </font><font style="color:#8F2100;">SharedState </font>,  expected <font style="color:#666666;">:  </font><font style="color:#8F2100;">string </font>,  updated <font style="color:#666666;">:  </font><font style="color:#8F2100;">string</font>)  {

9               <font style="color:#007021;">if  </font>(data .value  <font style="color:#666666;">!=  </font>expected)  {

10                          _<font style="color:#40808F;">// data  race!</font>_

11                          console.log(<font style="color:#4070A1;">"race!"</font>)

12                  }

13                  data .value  <font style="color:#666666;">=  </font>updated

14          }

15

16        _<font style="color:#40808F;">// a  suspension point  emulator</font>_

17        <font style="color:#007021;">async  function  </font>delay()  {

18               <font style="color:#007021;">return  new  Promise</font><font style="color:#666666;"><</font><font style="color:#007021;">void</font><font style="color:#666666;">></font>((res,  rej)  =>  {

19                       setTimeout(res,  <font style="color:#21804F;">1 </font>,  <font style="color:#007021;">undefined</font>) 20                  })

21          }

22

23        _<font style="color:#40808F;">//  create  a  lock  somewhere,  for  example  as  a  global  variable</font>_

24         <font style="color:#007021;">let  </font>lock  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>AsyncLock()

25

26        <font style="color:#007021;">async  function  </font>f()  {

27           _<font style="color:#40808F;">// request  an  operation  under  the  specified  lock</font>_

28            <font style="color:#007021;">let  </font>p1  <font style="color:#666666;">=  </font>lock.lockAsync<font style="color:#666666;"><</font><font style="color:#007021;">void</font><font style="color:#666666;">></font>(<font style="color:#007021;">async  </font>()  =>  {

29                              _<font style="color:#40808F;">// once  the  request  can  be  satisfied,  this  lambda  will  run  on  the  same</font>_

30                              _<font style="color:#40808F;">// worker  thread  with  the  lock  acquired</font>_

31

32                              _<font style="color:#40808F;">// execute  a modification  sequence  on  the protected  data:</font>_

33                              _<font style="color:#40808F;">// nothing  -> paraglider  -> nothing</font>_

34

35                              _<font style="color:#40808F;">// nothing  -> paraglider</font>_

36                              checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"nothing" </font>,  <font style="color:#4070A1;">"paraglider"</font>)

37

38                              _<font style="color:#40808F;">// a  sample  suspension point  that  simulates  a  real  life  situation  when</font>_

39                           _<font style="color:#40808F;">//  the modification  sequence  gets paused  and  another  async  function  on</font>_

40                              _<font style="color:#40808F;">//  the  same  worker  thread  gets  control</font>_

41                              <font style="color:#007021;">await  </font>delay()

42

43                              _<font style="color:#40808F;">// continue  with  the modification</font>_

44                              _<font style="color:#40808F;">// paraglider  -> nothing</font>_

45                              checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"paraglider" </font>,  <font style="color:#4070A1;">"nothing"</font>)

46              },  AsyncLockMode.EXCLUSIVE)

47

48           _<font style="color:#40808F;">// request  another  operation  under  the  same  lock:  it  will  be  executed not</font>_

49           _<font style="color:#40808F;">// earlier  than  the  lock  can  be  acquired</font>_

50            <font style="color:#007021;">let  </font>p2  <font style="color:#666666;">=  </font>lock.lockAsync<font style="color:#666666;"><</font><font style="color:#007021;">void</font><font style="color:#666666;">></font>(<font style="color:#007021;">async  </font>()  =>  {

51                           _<font style="color:#40808F;">// another  asynchronous modification  sequence  that  suspends  inbetween:</font>_

52                              _<font style="color:#40808F;">// nothing  ->  apple  -> nothing</font>_

53

(continues on next page)









(continued from previous page)

54                           checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"nothing" </font>,  <font style="color:#4070A1;">"apple"</font>)

55                              <font style="color:#007021;">await  </font>delay()

56                           checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"apple" </font>,  <font style="color:#4070A1;">"nothing"</font>)

57             })  _<font style="color:#40808F;">// AsyncLockMode.EXCLUSIVE  is  the  default,  so  it  can  be  skipped</font>_

58

59           _<font style="color:#40808F;">//  wait  for  both  operations  to  complete</font>_

60              <font style="color:#007021;">await  </font>p1

61              <font style="color:#007021;">await  </font>p2

62

63            _<font style="color:#40808F;">//  Since  both  sequences  have  suspension points  within  them,  they  were</font>_

64            _<font style="color:#40808F;">// executed  in  an  interleaved manner  if there  would no  locks,  which  would</font>_

65            _<font style="color:#40808F;">// cause  a  data  race  and  thus  an  error .</font>_

66           _<font style="color:#40808F;">// However,  the  lock  that  we  used  for  synchronization prevents  this</font>_

67           _<font style="color:#40808F;">//  situation  and  each modification  sequence  executes  as  a  critical  section,</font>_

68           _<font style="color:#40808F;">// which  leads  to  the  correct  result .</font>_

69          }

70

71        <font style="color:#007021;">function </font>main()  {

72                  f() 73         }

A developer can request one of two levels of access exclusivity to the given AsyncLock:  exclusive or shared.  The diference is as follows:

•  if an exclusive access is requested (default behaviour), then no other request for callback execution under the same AsyncLock instance will be satisfied until the requester’s callback is finished;

•  if a shared access is requested then any other request for the callback execution under this lock can be concurrently satisfied, but all requests that demand exclusive access will wait their turn

The callback execution under an AsyncLock can be safely requested concurrently both by the same and diferent jobs.

AsyncLock API provides a way to abort an existing request for callback execution and to query the status of the existing locks. Additionally it provides a way to limit the waiting time for an issued lock acquire request with a timeout and also gives hints about the potential deadlocks.

Please refer to the standard library documentation to find out more information.



**<font style="color:#20435C;">16.5.2 Asynchronous mutex</font>**

The asynchronous mutex (AsyncMutex) allows to protect some shared data, for example, a part of object state, from concurrent access. It is designed for the following use cases:

•  developer wants to use a condition variable ([_<font style="color:#355F7C;">Asynchronous condition variable</font>_](#bookmark15))

•  the code sequence that accesses the protected state is hard to be conveniently isolated as a distinct function object (function, method or lambda), so the decoupled lock() and unlock() operations are required

1        _<font style="color:#40808F;">// a  shared  (</font>_[_<font style="color:#40808F;">e.g.  global</font>_](e.g.global)_<font style="color:#40808F;">)  data  that  we  would  like  to protect</font>_

2         <font style="color:#007021;">class  </font>SharedState  {

3               value <font style="color:#666666;">:  </font><font style="color:#8F2100;">string  </font><font style="color:#666666;">=</font>

<font style="color:#4070A1;">"nothing"</font>

4          }

5         <font style="color:#007021;">let  </font>whatIsInTheBag <font style="color:#666666;">:  </font><font style="color:#8F2100;">SharedState  </font><font style="color:#666666;">= </font><font style="color:#007021;">new  </font>SharedState

6

7        _<font style="color:#40808F;">// a  function  that  reads  and modifies  the  shared  data</font>_

(continues on next page)









8

9

10

11

12

13

14

15

16

17

18

19

20

21

22

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

42

43

44

45

46

47

48

49

50

51

52

53

54

55

56

57

58

59



(continued from previous page)

<font style="color:#007021;">function  </font>checkAndModify(data <font style="color:#666666;">:  </font><font style="color:#8F2100;">SharedState </font>,  expected <font style="color:#666666;">:  </font><font style="color:#8F2100;">string </font>,  updated <font style="color:#666666;">:  </font><font style="color:#8F2100;">string</font>)  { <font style="color:#007021;">if  </font>(data .value  <font style="color:#666666;">!=  </font>expected)  {

_<font style="color:#40808F;">// data  race!</font>_

console.log(<font style="color:#4070A1;">"race!"</font>) }

data .value  <font style="color:#666666;">=  </font>updated }

_<font style="color:#40808F;">// a  suspension point  emulator</font>_

<font style="color:#007021;">async  function  </font>delay()  {

<font style="color:#007021;">return new  Promise</font><font style="color:#666666;"><</font><font style="color:#007021;">void</font><font style="color:#666666;">></font>((res,  rej)  =>  { setTimeout(res,  <font style="color:#21804F;">1 </font>, <font style="color:#007021;">undefined</font>)

})

}

_<font style="color:#40808F;">// create  a  lock  somewhere,  for  example  as  a  global  variable</font>_

<font style="color:#007021;">let  </font>lock  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>AsyncMutex()

<font style="color:#007021;">async  function  </font>f()  {

_<font style="color:#40808F;">// here  we  execute  a modification  sequence  on  the  protected  data  under  the // lock:  nothing  -> paraglider  -> nothing</font>_

_<font style="color:#40808F;">//  the  await  is mandatory!  the promise  returned  by  the  lock() method  will // get  resolved not  earlier  than  the  lock  is  successfullly  acquired</font>_

<font style="color:#007021;">await  </font>lock .lock();

_<font style="color:#40808F;">//  the  code  between  lock()  and  unlock()  acts  like  a  critical  section:</font>_

_<font style="color:#40808F;">// no  other job  is  able  to  acquire  the  "lock"  till  the  "unlock()"  is  called</font>_

_<font style="color:#40808F;">// nothing  -> paraglider</font>_

checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"nothing" </font>,  <font style="color:#4070A1;">"paraglider"</font>)

_<font style="color:#40808F;">// a  sample  suspension point  that  simulates  a  real  life  situation  when //  the modification  sequence  gets paused  and  another  async  function  on //  the  same  worker  thread  gets  control</font>_

<font style="color:#007021;">await  </font>delay()

_<font style="color:#40808F;">// continue  with  the modification</font>_

_<font style="color:#40808F;">// paraglider  -> nothing</font>_

checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"paraglider" </font>,  <font style="color:#4070A1;">"nothing"</font>)

_<font style="color:#40808F;">// end  of the  critical  section</font>_

lock.unlock() }

<font style="color:#007021;">async  function  </font>g()  {

_<font style="color:#40808F;">// another  asynchronous modification  sequence  that  suspends  inbetween: // nothing  ->  apple  -> nothing</font>_

<font style="color:#007021;">await  </font>lock .lock()

_<font style="color:#40808F;">// start  of the  critical  section</font>_

checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"nothing" </font>,  <font style="color:#4070A1;">"apple"</font>)

<font style="color:#007021;">await  </font>delay()

(continues on next page)









(continued from previous page)

60            checkAndModify(whatIsInTheBag,  <font style="color:#4070A1;">"apple" </font>,  <font style="color:#4070A1;">"nothing"</font>)

61

62             _<font style="color:#40808F;">// end  of the  critical  section</font>_

63              lock .unlock() 64          }

65

66        <font style="color:#007021;">function </font>main()  {

67           _<font style="color:#40808F;">// Call  both  functions  consequently  without  any  waits .</font>_

68            _<font style="color:#40808F;">// Since  both  functions  have  suspension points  within  them,  they  were</font>_

69            _<font style="color:#40808F;">// executed  in  an  interleaved manner  if there  would no  locks,  which  would</font>_

70            _<font style="color:#40808F;">// cause  a  data  race  and  thus  an  error .</font>_

71            _<font style="color:#40808F;">// However,  the  mutex  we  used  for  synchronization prevents  this</font>_

72           _<font style="color:#40808F;">//  situation  and  each modification  sequence  executes  as  a  critical  section,</font>_

73           _<font style="color:#40808F;">// which  leads  to  the  correct  result .</font>_

74                  f()

75               g() 76         }



The AsyncMutex can be safely used in both the jobs that run on the same worker thread and on diferent worker threads.

The avoidance of double locking (happens if the _lock() _method is called from the lock instance that is already acquired by the current job) and deadlocks is the developer’s responsibility. Please refer to the standard library documentation to find out more information.

**<font style="color:#20435C;">16.5.3 Asynchronous read/write lock</font>**

The asynchronous read/write lock (AsyncRWLock) allows to protect some shared data, for example, a part of object state, from concurrent access. It is designed for the use case when both of the following statements are true:

•  the code sequence that accesses the protected state is hard to be conveniently isolated as a distinct function object (function, method or lambda), so the decoupled lock() and unlock() operations are required

•  access to the shared state must be mutually exclusive between a group of entities that can safely access the data concurrently (“readers”) and any other entity that requires exclusive access to the data (“writer”/”writers”)

Please refer to the standard library documentation to find out more information.



**<font style="color:#20435C;">16.5.4 Asynchronous condition variable</font>**

The asynchronous condition variable (AsyncCondVar) is designed for the use case when some shared data is used as a condition for a sequence of actions in one job and is concurrently modified in another job.

The use of AsyncCondVar requires [_<font style="color:#355F7C;">Asynchronous mutex</font>_](#bookmark13):

1        _<font style="color:#40808F;">// create mutex  and  condition  variable  somewhere,  </font>_[_<font style="color:#40808F;">e.g.  in</font>_](e.g.in)_<font style="color:#40808F;">  the  global  scope</font>_

2         <font style="color:#007021;">let  </font>m  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>AsyncMutex();

3         <font style="color:#007021;">let  </font>cv  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>AsyncCondVar();

4        _<font style="color:#40808F;">//  the  shared  data,  which  is  used  as  a  condition</font>_

5          <font style="color:#007021;">let  </font>flag  <font style="color:#666666;">=  </font><font style="color:#007021;">false </font>;

6

7        <font style="color:#007021;">async  function  </font>f()  {

8           _<font style="color:#40808F;">//  the  notification  sequence  (in  job A):</font>_

9             _<font style="color:#40808F;">// lock  the mutex</font>_

10            <font style="color:#007021;">await </font>m .lock()

11          _<font style="color:#40808F;">// start  of the  critical  section</font>_

(continues on next page)





(continued from previous page)

12

13             _<font style="color:#40808F;">// update  the  condition</font>_

14            flag  <font style="color:#666666;">=  </font><font style="color:#007021;">true</font>

15          _<font style="color:#40808F;">// notify  the  waiter(s):</font>_

16            _<font style="color:#40808F;">//  the  API requires  that  the  same  mutex  is  to  be  provided here</font>_

17            cv.notifyOne(m)

18

19           _<font style="color:#40808F;">// end  of the  critical  section:  unlock  the mutex</font>_

20             m .unlock() 21          }

22

23        <font style="color:#007021;">async  function  </font>g()  {

24           _<font style="color:#40808F;">//  the  wait-and-react  sequence  (in  job  B):</font>_

25           _<font style="color:#40808F;">//  lock  the  same mutex  that  is  used  for  condition  update  and notification</font>_

26           <font style="color:#007021;">await </font>m.lock()  _<font style="color:#40808F;">// await  is mandatory!</font>_

27          _<font style="color:#40808F;">// start  of the  critical  section</font>_

28

29             _<font style="color:#40808F;">// check  the  shared  condition</font>_

30           <font style="color:#007021;">while  </font>(flag  <font style="color:#666666;">==  </font><font style="color:#007021;">false</font>)  {

31                      _<font style="color:#40808F;">// start  waiting  for  the  condition  to  change:</font>_

32                   _<font style="color:#40808F;">//  the  API requires  that  the  same  mutex  is  to  be  provided here</font>_

33                   _<font style="color:#40808F;">// wait()  unlocks  "m"  and  returns  the  Promise  that  is  going  to  be  resolved</font>_

34                      _<font style="color:#40808F;">// once  some  other job  calls  notifyOne()/notifyAll()</font>_

35                      <font style="color:#007021;">await  </font>cv.wait(m)  _<font style="color:#40808F;">// await  is mandatory!</font>_

36

37                      _<font style="color:#40808F;">// at  this point,  "m"  is  locked  again,  and  the  notification  has  been  received </font>_38              }

39           _<font style="color:#40808F;">// here  the  condition  is  satisfied,  and  the mutex  is  locked:</font>_

40            _<font style="color:#40808F;">//  any  dependent  actions  (e.g .  some  state  update)  can  happen  here,  and  they</font>_

41           _<font style="color:#40808F;">// effectively happen  in  the  same  critical  section  with  the  verification  of</font>_

42           _<font style="color:#40808F;">//  the  shared  condition  value</font>_

43

44           _<font style="color:#40808F;">// end  of the  critical  section:  unlock  the mutex</font>_

45             m .unlock() 46         }

47

48        <font style="color:#007021;">function </font>main()  {

49                  f()

50                  g() 51          }



Please refer to the standard library documentation to find out more information.









**<font style="color:#20435C;">16.5.5 Atomic operations</font>**

ArkTS standard library provides a set of classes that support atomic operations.  The intended use cases for them are lock free data structures and algorithms: from simple compare-and-swap and spinlocks to complex containers.

Please refer to the standard library documentation to find out more information.











**<font style="color:#20435C;">16.5.6 Additional entities and other notes</font>**

The ArkTS standard library provides various additional classes and APIs that help developers to build safe and efficient concurrent programs. Such classes include:

•  thread safe concurrent containers

•  APIs that operate on worker thread-local data

•  other helpers

Please refer to the standard library documentation to find out more information about them.











**<font style="color:#20435C;">16.6 API details and restrictions</font>**

This section describes the noteworthy details and the notable restrictions for the concurrency APIs described in the previous sections.

**<font style="color:#20435C;">16.6.1  </font>**<font style="color:#20435C;">launch </font>**<font style="color:#20435C;">API details and restrictions</font>**

The launch API allows for defining a set of worker threads that a newly created job can run on. This set is defined in terms of worker thread _domains_ and _groups_.

**worker thread ID**

A unique number that is assigned to every worker thread, existing or newly created.

**worker thread domain**

A named filtering criteria that defines some set of worker threads that have something in common.  A worker thread domain can contain diferent number of workers at diferent time.  Notable domains include _main_ and _exclusive_ worker threads. The exact list of available domains is provided in the standard library documentation.

**worker thread group**

An immutable set of worker threads.

The launch API allows to define a worker thread group in several ways, for example by specifying the worker thread domain or the exact list of worker thread IDs.  Once defined, a worker thread group can be specified in the launch parameters, so the newly created job will be assigned to the appropriate worker thread from the provided worker thread group. Later on, if the scheduler decides to reschedule this job to another worker thread, the new worker thread will be chosen from this group, too.





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

Since the worker thread group is immutable, at some point the worker thread IDsit refers might become invalid. This happens because in some situations worker threads can be created or deleted (e.g.  the _exclusive_ worker threads), including the worker threads that the group contains.  In such case, the functions from _launch_ _丶_ API will either safely ignore the invalid IDs, throw an error or return the appropriate return value. For the details, please refer to the standard library documentation.





**<font style="color:#20435C;">16.6.2  Using the asynchronous API</font>**

In certain cases, a call to an async function requires awaiting its result, but the call site resides in the non-async function. In such cases, the caller function should be converted to an asynchronous one, and in some cases this chain of conversions has to be continued up to the program entry point. For this case, ArkTS supports the async entry point function (see _<font style="color:#355F7C;">Program Entry Point</font>_).





<font style="color:#145DEA;">.  </font>**Note**

Maybe, this section should be moved to the handbook.











**<font style="color:#20435C;">16.6.3  Promise class API</font>**

There are some important restrictions that limit the correct usage of the Promise class.

A Promise class instance is safe to be awaited within a job on some worker thread while being resolved or rejected from another job on the same or diferent worker thread.

A Promise class allows to register callbacks that are to be called upon Promise resolution and/or rejection.  This is done by calling the .then() / .catch() / .finally() methods of the Promise class. However, these methods have the following usage restrictions:

•  the registered callback will be called as a separate job on the same worker thread where it was registered

•  if multiple callbacks are registered from the jobs that reside on the same worker thread, the order of their execution matches the order of their registration

•  if multiple callbacks are registered from the jobs that reside on diferent worker threads, the order of their execu- tion is defined only within each worker thread, and no order is guaranteed between the resulting jobs that reside on diferent worker threads

Please refer to the standard library documentation to find out more information about the Promise methods.









**<font style="color:#20435C;">16.6.4  Unhandled Rejected Promises</font>**





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

The semantics of unhandled rejections will be revisited later, once the design of ArkTS concurrency subsystem is complete.

A rejected Promise is considered unhandled if, at certain time, there is no await waiting for it and there are no callbacks registered for it with the .then() / .catch() methods.

This moment of time is defined separately on each worker thread, hence the Promise instance is considered an _unhan- dled rejection _only within a context of some worker thread, while possibly being _handled _on other ones.





**<font style="color:#20435C;">16.6.5  Error handling policy</font>**

In general, all errors thrown in an ArkTS program should either have an ability to be handled by the developer or considered uncaught, and initiate a program termination sequence. This applies to any job on any worker thread.

A job in an ArkTS program can complete abnormally, i.e., can throw an error.  Since jobs communicate their return values using Promise class instances, in case of job’s abnormal completion the corresponding promise gets rejected and the original error is not considered uncaught.

However, there can exist some cases when such rejection cannot be handled by the developer, for example:

•  when the thrower job was created by the runtime environment, and no promise can be awaited or handled with a

.then() / .catch() callback

•  when the _main _job throws an error

In such cases, the original error thrown by the job will be considered uncaught.











**<font style="color:#20435C;">16.7  Runtime implementation details</font>**

**<font style="color:#20435C;">16.7.1 Scheduling rules</font>**

The runtime environment schedules the jobs that are defined by an ArkTS program in accordance with the following rules:

•  Every job has a priority, which depends solely on its type. The list of types, from highest to lowest priority:

1.  suspendable jobs and Promise callbacks ( .then(), etc.);

2.  Other jobs

• Within each worker thread, the jobs with higher priority are scheduled before jobs with lower priority;

•  All jobs with the same priority are scheduled in the FIFO order;





<font style="color:#145DEA;">.  </font>**Note**

These rules are incomplete and will be updated.





