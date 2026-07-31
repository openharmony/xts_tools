# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

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
