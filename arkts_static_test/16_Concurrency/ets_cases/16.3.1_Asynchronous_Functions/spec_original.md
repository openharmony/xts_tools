# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

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
