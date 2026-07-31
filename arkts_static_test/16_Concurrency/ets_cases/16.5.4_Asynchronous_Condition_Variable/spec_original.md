# 16 Concurrency - Spec Original (Reference)

> 本文件为规范原文参考摘录，便于测试用例设计时对照。
> 完整规范请参考 `doc/16Concurrency.md`。

---

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
