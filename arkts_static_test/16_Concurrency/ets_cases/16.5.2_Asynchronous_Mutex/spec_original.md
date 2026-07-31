# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

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
