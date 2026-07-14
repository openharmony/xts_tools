

**CHAPTER ****FIVE**



**GENERICS**







Class, interface, type alias, method, and function are program entities that can be parameterized in ArkTS by one or several types. An entity so parameterized introduces a _generic declaration _(called _a generic _for brevity).

Types used as generic parameters in a generic are called _type parameters _(see [_<font style="color:#355F7C;">Type Parameters</font>_](#bookmark1)).

A _generic _must be instantiated in order tobe used. _Generic instantiation _is the action that transforms a _generic _into a real program entity (non-generic class, interface, union, array, method, or function), or into another _generic instantiation_. Instantiation (see [_<font style="color:#355F7C;">Generic Instantiations</font>_](#bookmark2)) can be performed either explicitly or implicitly.

ArkTS has special types that look similar to generics syntax-wise, and allow creating new types during compilation (see _<font style="color:#355F7C;">Utility Types</font>_).









**<font style="color:#20435C;">5.1 Type Parameters</font>**

_Type parameter _is declared in the type parameter section. It can be used as an ordinary type inside a _generic_.

Syntax-wise, a _type parameter _is an unqualified identifier with a proper scope (see _<font style="color:#355F7C;">Scopes </font>_for the scope of type pa- rameters). Each type parameter can have a _constraint _(see [_<font style="color:#355F7C;">Type Parameter Constraint</font>_](#bookmark3)).  A type parameter can have a default type (see [_<font style="color:#355F7C;">Type Parameter Default</font>_](#bookmark4)), and can specify its _in- _or _out- _variance (see [_<font style="color:#355F7C;">Type Parameter Variance</font>_](#bookmark5)).

The syntax of _type parameter _is presented below:



<font style="color:#0D85B5;">typeParameters </font>:

'< '  <font style="color:#0D85B5;">typeParameterList  </font>'> '

_<font style="color:#40808F;">;</font>_



<font style="color:#0D85B5;">typeParameterList </font>:

<font style="color:#0D85B5;">typeParameter  </font>( ' , '  <font style="color:#0D85B5;">typeParameter</font>)<font style="color:#666666;">*</font>

_<font style="color:#40808F;">;</font>_



<font style="color:#0D85B5;">typeParameter </font>:

('<font style="color:#0D85B5;">in </font>'  |   '<font style="color:#0D85B5;">out </font>')?  <font style="color:#0D85B5;">identifier  constraint</font>?  <font style="color:#0D85B5;">typeParameterDefault</font>?

_<font style="color:#40808F;">;</font>_

<font style="color:#0D85B5;">constraint </font>:

'<font style="color:#0D85B5;">extends </font>'  <font style="color:#0D85B5;">type</font>

_<font style="color:#40808F;">;</font>_



(continues on next page)





**77**



**ArkTS Specification, Release 1.2.1-alpha TECHNICAL PREVIEW 10**





(continued from previous page)



<font style="color:#0D85B5;">typeParameterDefault </font>:

'<font style="color:#666666;">= </font>'  <font style="color:#0D85B5;">typeReference  </font>( ' [] ')?

_<font style="color:#40808F;">;</font>_

A generic class, interface, type alias, method, or function defines a set of parameterized classes, interfaces, unions, arrays, methods, or functions respectively (see [_<font style="color:#355F7C;">Generic Instantiations</font>_](#bookmark2)). A single type argument can define only one set for each possible parameterization of the type parameter section.









**<font style="color:#20435C;">5.1.1 Type Parameter Constraint</font>**

If possible instantiations need to be constrained, then an individual _constraint _can be set for each type parameter after the keyword extends. A constraint can have the form of any type.

If no constraint is specified, then the constraint is _<font style="color:#355F7C;">Type Any</font>_, i.e., the lacking explicit constraint efectively means extends  Any. As a consequence, the type parameter is not compatible with _<font style="color:#355F7C;">Type Object</font>_, and has neither methods nor fields available for use.

If type parameter _T _has type constraint _S_, then the actual type of the generic instantiation must be a subtype of _S _(see _<font style="color:#355F7C;">Subtyping</font>_). If the constraint _S _is a non-nullish type (see_<font style="color:#355F7C;">Nullish Types</font>_), then _T _is also non-nullish.

1              <font style="color:#007021;">class  </font>Base  {}

2            <font style="color:#007021;">class  </font>Derived  <font style="color:#007021;">extends  </font>Base  {  }

3              <font style="color:#007021;">class  </font>SomeType  {  }

4

5             <font style="color:#007021;">class  </font>G<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>Base<font style="color:#666666;">>  </font>{  }

6

7             <font style="color:#007021;">let  </font>x  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>G<font style="color:#666666;"><</font>Base<font style="color:#666666;">>           </font>_<font style="color:#40808F;">//  OK</font>_

8             <font style="color:#007021;">let  </font>y  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>G<font style="color:#666666;"><</font>Derived<font style="color:#666666;">>     </font>_<font style="color:#40808F;">// OK</font>_

9             <font style="color:#007021;">let  </font>z  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>G<font style="color:#666666;"><</font>SomeType<font style="color:#666666;">>    </font>_<font style="color:#40808F;">// Compile-time  :  SomeType  is  not  compatible  with  Base</font>_

10

11             <font style="color:#007021;">class  </font>H<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>Base<font style="color:#666666;">| </font>SomeType<font style="color:#666666;">>  </font>{}

12             <font style="color:#007021;">let  </font>h1  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>H<font style="color:#666666;"><</font>Base<font style="color:#666666;">>          </font>_<font style="color:#40808F;">// OK</font>_

13             <font style="color:#007021;">let  </font>h2  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>H<font style="color:#666666;"><</font>Derived<font style="color:#666666;">>    </font>_<font style="color:#40808F;">// OK</font>_

14              <font style="color:#007021;">let  </font>h3  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>H<font style="color:#666666;"><</font>SomeType<font style="color:#666666;">>  </font>_<font style="color:#40808F;">//  OK</font>_

15             <font style="color:#007021;">let  </font>h4  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>H<font style="color:#666666;"><</font><font style="color:#007021;">Object</font><font style="color:#666666;">>     </font>_<font style="color:#40808F;">//  Compile-time  :  Object  is  not  compatible  with  Base|SomeType</font>_

16

17            <font style="color:#007021;">class  </font>Exotic<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font><font style="color:#4070A1;">"aa" </font><font style="color:#666666;">|   </font><font style="color:#4070A1;">"bb"</font><font style="color:#666666;">>  </font>{}

18            <font style="color:#007021;">let  </font>e1  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>Exotic<font style="color:#666666;"><</font><font style="color:#4070A1;">"aa"</font><font style="color:#666666;">>     </font>_<font style="color:#40808F;">//  OK</font>_

19            <font style="color:#007021;">let  </font>e2  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>Exotic<font style="color:#666666;"><</font><font style="color:#4070A1;">"cc"</font><font style="color:#666666;">>   </font>_<font style="color:#40808F;">// Compile-time  :  "cc"  is  not  compatible  with  "aa"|  "bb"</font>_

20

21              <font style="color:#007021;">class  </font>A  {

22                      f1 <font style="color:#666666;">:  </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">0</font>

23                      f2 <font style="color:#666666;">:  </font><font style="color:#8F2100;">string  </font><font style="color:#666666;">=  </font><font style="color:#4070A1;">""</font>

24                    f3 <font style="color:#666666;">: </font><font style="color:#8F2100;">boolean  </font><font style="color:#666666;">=  </font><font style="color:#007021;">false </font>25              }

26             <font style="color:#007021;">class  </font>B  <font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>keyof A<font style="color:#666666;">>  </font>{}

27              <font style="color:#007021;">let  </font>b1  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>B<font style="color:#666666;">< </font><font style="color:#4070A1;">'f1 '</font><font style="color:#666666;">>       </font>_<font style="color:#40808F;">// OK</font>_

28            <font style="color:#007021;">let  </font>b2  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>B<font style="color:#666666;">< </font><font style="color:#4070A1;">'f0 '</font><font style="color:#666666;">>       </font>_<font style="color:#40808F;">// Compile-time  error  as  'f0 '  does  not  fit  the  constraint</font>_

29             <font style="color:#007021;">let  </font>b3  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>B<font style="color:#666666;"><</font>keyof A<font style="color:#666666;">>  </font>_<font style="color:#40808F;">// OK</font>_





A type parameter of a generic can _depend _on an earlier type parameter of the same generic.

1             <font style="color:#007021;">class  </font>G<font style="color:#666666;"><</font>T,  S  <font style="color:#007021;">extends  </font>T<font style="color:#666666;">>  </font>{}

2

3              <font style="color:#007021;">class  </font>Base  {}

4            <font style="color:#007021;">class  </font>Derived  <font style="color:#007021;">extends  </font>Base  {  }

5              <font style="color:#007021;">class  </font>SomeType  {  }

6

7            <font style="color:#007021;">let  </font>x<font style="color:#666666;">:  </font><font style="color:#8F2100;">G</font><font style="color:#666666;"><</font>Base,  Derived<font style="color:#666666;">>   </font>_<font style="color:#40808F;">// OK,  the  second  argument  directly</font>_

8                                                                                                                      _<font style="color:#40808F;">// depends  on  the  first  one</font>_

9             <font style="color:#007021;">let  </font>y <font style="color:#666666;">:  </font><font style="color:#8F2100;">G</font><font style="color:#666666;"><</font>Base,  SomeType<font style="color:#666666;">>  </font>_<font style="color:#40808F;">//  error,  SomeType  does  not  depend  on  Base</font>_



A compile-time error occurs if a type parameter in the type parameter section depends on itself directly or indirectly:

1            <font style="color:#007021;">class  </font>C<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>T<font style="color:#666666;">>  </font>{}  _<font style="color:#40808F;">// circular  dependency</font>_

2            <font style="color:#007021;">class  </font>D<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>R,  R  <font style="color:#007021;">extends  </font>T<font style="color:#666666;">>  </font>{}  _<font style="color:#40808F;">// circular  dependency</font>_

3            <font style="color:#007021;">class  </font>E<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>R,  R  <font style="color:#007021;">extends  </font>T  <font style="color:#666666;">|  </font><font style="color:#007021;">undefined</font><font style="color:#666666;">>  </font>{}  _<font style="color:#40808F;">// circular  dependency</font>_











**<font style="color:#20435C;">5.1.2 Type Parameter Default</font>**

Type parameters of generic types can have defaults. This situation allows dropping a type argument when a particular type of instantiation is used. However, a compile-time error occurs if:

•  A type parameter without a default type follows a type parameter with a default type in the declaration of a generic type;

•  Type parameter default refers to a type parameter defined after the current type parameter. The application of this concept to both classes and functions is presented in the examples below:



1              <font style="color:#007021;">class  </font>SomeType  {}

2             <font style="color:#007021;">interface  </font>Interface  <font style="color:#666666;"><</font>T1  <font style="color:#666666;">=  </font>SomeType<font style="color:#666666;">>  </font>{  }

3              <font style="color:#007021;">class  </font>Base  <font style="color:#666666;"><</font>T2  <font style="color:#666666;">=  </font>SomeType<font style="color:#666666;">>  </font>{  }

4            <font style="color:#007021;">class  </font>Derived1  <font style="color:#007021;">extends  </font>Base  <font style="color:#007021;">implements  </font>Interface  {  }

5           _<font style="color:#40808F;">// Derived1  is  semantically  equivalent  to Derived2</font>_

6             <font style="color:#007021;">class  </font>Derived2  <font style="color:#007021;">extends  </font>Base<font style="color:#666666;"><</font>SomeType<font style="color:#666666;">>  </font><font style="color:#007021;">implements  </font>Interface<font style="color:#666666;"><</font>SomeType<font style="color:#666666;">>  </font>{  }

7

8            <font style="color:#007021;">function  </font>foo<font style="color:#666666;"><</font>T  <font style="color:#666666;">= </font><font style="color:#8F2100;">number</font><font style="color:#666666;">></font>(input <font style="color:#666666;">:  </font><font style="color:#8F2100;">T</font>) <font style="color:#666666;">:  </font>T  {  <font style="color:#007021;">return  </font>input}

9           foo(<font style="color:#21804F;">1</font>)  _<font style="color:#40808F;">//  This  call  is  semantically  equivalent  to next  one</font>_

10              foo<font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">></font>(<font style="color:#21804F;">1</font>)

11

12             <font style="color:#007021;">class  </font>C1  <font style="color:#666666;"><</font>T1,  T2  <font style="color:#666666;">=  </font><font style="color:#8F2100;">number </font>,  T3<font style="color:#666666;">>  </font>{}

13            _<font style="color:#40808F;">//  That  is  a  compile-time  error,  as  T2  has  default  but  T3  does  not</font>_

14

15             <font style="color:#007021;">class  </font>C2  <font style="color:#666666;"><</font>T1,  T2  <font style="color:#666666;">= </font><font style="color:#8F2100;">number </font>,  T3  <font style="color:#666666;">=  </font><font style="color:#8F2100;">string</font><font style="color:#666666;">>  </font>{}

16             <font style="color:#007021;">let  </font>c1  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>C2<font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">>                  </font>_<font style="color:#40808F;">//  Equal  to  C2<number,  number,  string></font>_

17            <font style="color:#007021;">let  </font>c2  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>C2<font style="color:#666666;"><</font><font style="color:#8F2100;">number </font>,  <font style="color:#8F2100;">string</font><font style="color:#666666;">>   </font>_<font style="color:#40808F;">// Equal  to  C2<number,  string,  string></font>_

18             <font style="color:#007021;">let  </font>c3  <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>C2<font style="color:#666666;"><</font><font style="color:#8F2100;">number </font>,  <font style="color:#007021;">Object </font>, <font style="color:#8F2100;">number</font><font style="color:#666666;">>  </font>_<font style="color:#40808F;">// All  3  type  arguments  provided</font>_

19

20             <font style="color:#007021;">function  </font>foo  <font style="color:#666666;"><</font>T1  <font style="color:#666666;">=  </font>T2,  T2  <font style="color:#666666;">=  </font>T1<font style="color:#666666;">>  </font>()  {}

21           _<font style="color:#40808F;">// Compile-time  error,</font>_

(continues on next page)





(continued from previous page)

22           _<font style="color:#40808F;">// as  T1 's  default  refers  to  T2,  which  is  defined  after  T1</font>_

23           _<font style="color:#40808F;">//  T2 's  default  is  valid  as  it  refers  to  type parameter  T1  already  defined</font>_











**<font style="color:#20435C;">5.1.3 Type Parameter Variance</font>**

Normally,   two   diferent   instantiations  of  the   same  generic  class  or  interface  (like  Array<number>  and Array<string>) are handled as diferent and unrelated types.  ArkTS supports type parameter variance that allows _subtyping _relationship between such instantiations (See_<font style="color:#355F7C;">Subtyping</font>_), depending on the _subtyping _relationship between argument types.

When declaring _type parameters _of a generic type, special keywords in or out (called _variance modifiers_) are used to specify the variance of the type parameter (see _<font style="color:#355F7C;">Invariance, Covariance and Contravariance</font>_).

Type parameters with the keyword out are _covariant_. Covariant type parameters can be used in the out-position only as follows:

•  Constructors can have out type parameters as parameters.

•  Methods can have out type parameters as return types.

•  Fields that have out type parameters as type must be readonly.

•  Otherwise, a compile-time error occurs.

Type parameters with the keyword in are _contravariant_. Contravariant type parameters can be used in the in-position only as follows:

•  Methods can have in type parameters as parameter types.

•  Otherwise, a compile-time error occurs.

Type parameters with no variance modifier are implicitly _invariant_, and can occur in any position.

1              <font style="color:#007021;">class  </font>X<font style="color:#666666;"><</font><font style="color:#007021;">in  </font>T1,  out  T2,  T3<font style="color:#666666;">>  </font>{

2

3                          _<font style="color:#40808F;">//  T1  can  be  used  in  in-position  only</font>_

4                          foo  (p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T1</font>)  {}    _<font style="color:#40808F;">// OK</font>_

5                          foo1(p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T1</font>) <font style="color:#666666;">:  </font>T1  {  <font style="color:#007021;">return  </font>p  }  _<font style="color:#40808F;">// error,  T1  in  out-position</font>_

6                          fldT1 <font style="color:#666666;">:  </font><font style="color:#8F2100;">T1  </font>_<font style="color:#40808F;">// error,  T1  in  invariant position</font>_

7

8                      <font style="color:#007021;">constructor  </font>(x <font style="color:#666666;">:  </font><font style="color:#8F2100;">T2</font>)  {  <font style="color:#007021;">this</font>.fldT2  <font style="color:#666666;">=  </font>x  }  _<font style="color:#40808F;">// OK</font>_

9                      bar(x <font style="color:#666666;">:  </font><font style="color:#8F2100;">T2</font>)  <font style="color:#666666;">:  </font>T2  {  <font style="color:#007021;">return  </font>x  }                     _<font style="color:#40808F;">// Compile-time  error,  x  in  in-position</font>_

10                   <font style="color:#007021;">readonly  </font>fldT2 <font style="color:#666666;">:  </font><font style="color:#8F2100;">T2                                         </font>_<font style="color:#40808F;">// OK</font>_

11                      bar1()  <font style="color:#666666;">:  </font>T2  {  <font style="color:#007021;">return  this</font>.fldT2  }           _<font style="color:#40808F;">// OK</font>_

12

13                          _<font style="color:#40808F;">//  T3  can  be  used  in  any position  (in-out,  write-read)</font>_

14                          fldT3 <font style="color:#666666;">:  </font><font style="color:#8F2100;">T3</font>

15                          method  (p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T3</font>) <font style="color:#666666;">:  </font>T3  {  <font style="color:#007021;">this</font>.fldT3  <font style="color:#666666;">=  </font>p;  <font style="color:#007021;">return  </font>p}   _<font style="color:#40808F;">// OK </font>_16              }



In case of function types (see _<font style="color:#355F7C;">Function Types</font>_), variance interleaving occurs.









1              <font style="color:#007021;">class  </font>X<font style="color:#666666;"><</font><font style="color:#007021;">in  </font>T1,  out  T2<font style="color:#666666;">>  </font>{

2                          foo  (p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T1</font>) <font style="color:#666666;">:  </font>T2  { . . .}                                                     _<font style="color:#40808F;">// in  -  out</font>_

3                          foo  (p <font style="color:#666666;">:  </font>(p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T2</font>)=>  T1)  { . . .}                                         _<font style="color:#40808F;">// out  -  in</font>_

4                       foo  (p <font style="color:#666666;">:  </font>(p <font style="color:#666666;">:  </font>(p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T1</font>)=>T2)=>  T1)  { . . .}                    _<font style="color:#40808F;">//  in  -  out  -  in</font>_

5                       foo  (p <font style="color:#666666;">:  </font>(p <font style="color:#666666;">:  </font>(p <font style="color:#666666;">:  </font>(p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T2</font>)=>  T1)=>T2)=>  T1)  { . . .}   _<font style="color:#40808F;">//  out  -  in  -  out  -  in</font>_

6                          _<font style="color:#40808F;">// and  further more </font>_7              }

A compile-time error occurs if function or method type parameters have a variance modifier specified.









**<font style="color:#20435C;">5.1.4 Wildcard Type</font>**

_Wildcard type _is a type that can be used as _type argument _when [_<font style="color:#355F7C;">Generic Instantiations</font>_](#bookmark2)denote an unknown instantiation of an _invariant Type Parameter _(see [_<font style="color:#355F7C;">Type Parameter Variance</font>_](#bookmark5)). _Wildcard type _is a semantic notion that can occur during type inference. _Wildcard type _cannot be represented with the ArkTS syntax.

The notation ‘*’ is used to refer to the _wildcard type _in example descriptions.

_Wildcard type _occurs during type inference of an instanceOf expression if the actual _type argument _of a generic type is unknown. It is only known in such a case is that _type argument _is certainly a subtype of a corresponding constraint (see [_<font style="color:#355F7C;">Type Parameter Constraint</font>_](#bookmark3)).

Subtyping and instantiation rules of _wildcard type _provide a notion of a generic type instantiated with some _type ar- guments_. The domain of operations applicable to the resultant type and the corresponding type inference rules ensure that a program operates on the _arbitrary _generic type in a type-safe manner:



1              <font style="color:#007021;">class  </font>X<font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>{

2                              p <font style="color:#666666;">:  </font><font style="color:#8F2100;">T</font>

3                              <font style="color:#007021;">constructor</font>(v <font style="color:#666666;">:  </font><font style="color:#8F2100;">T</font>)  {  <font style="color:#007021;">this</font>.p  <font style="color:#666666;">=  </font>v  } 4              }

5

6            <font style="color:#007021;">function  </font>bar(x <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>Any<font style="color:#666666;">></font>)  {  x .p  <font style="color:#666666;">=  </font><font style="color:#4070A1;">"a"  </font>}

7

8           <font style="color:#007021;">function  </font>foo(obj <font style="color:#666666;">:  </font><font style="color:#8F2100;">object</font>) <font style="color:#666666;">:  </font><font style="color:#007021;">void  </font>{

9                              <font style="color:#007021;">if  </font>(obj  <font style="color:#007021;">instanceof  </font>X)  {

10                                               <font style="color:#007021;">let  </font>x  <font style="color:#666666;">=  </font>obj  _<font style="color:#40808F;">// Instanceof guarantees  that  the  type  is  *some*  X</font>_

11                                                                                                 _<font style="color:#40808F;">// yet  the  type  parameter  is  unknown</font>_

12                                                                                                 _<font style="color:#40808F;">//  The  inferred  type  of obj  is  X<*></font>_

13

14                                               bar(x)          _<font style="color:#40808F;">// Compile-time  error,  X<*>  is  not  just  X<Any>,  and X<*>  is  not</font>_

15                                                                                                 _<font style="color:#40808F;">// a  subtype  of X<Any> .  The  type  parameter</font>_

16                                                                                                 _<font style="color:#40808F;">//  T is  invariant,  thus  an  arbitrary  instantiation  of</font>_

17                                                                                                 _<font style="color:#40808F;">// X is  not  strictly  an  X<Any> .</font>_

18

19                                               <font style="color:#007021;">let  </font>e  <font style="color:#666666;">=  </font>obj .p  _<font style="color:#40808F;">//  The  type  of expression  is  the  constraint</font>_

20                                                                                                         _<font style="color:#40808F;">// of the  corresponding  type parameter,  which</font>_

21                                                                                                         _<font style="color:#40808F;">// is  Any </font>_22                               }

23              }



_Wildcard type _is determined as follows:





•  _Wildcard type _is associated with a particular _invariant type parameter_.

•  _Wildcard type _is a subtype of the _constraint _of the corresponding _type parameter_.

•  When a _wildcard type _instantiates a generic type, the corresponding _type parameter_:

**–  **Is in the _out- _position, then substituted for _type parameter constraint_.

**–  **Is in the _in- _position, then substituted for the type _never_.

**–  **Otherwise, type is in the _invariant _position, and reads or writes to the corresponding property or field following the logic of the _out- _and _in- _position access (see [_<font style="color:#355F7C;">Type Parameter Variance</font>_](#bookmark5)).





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

_Wildcard type _certainly satisfies the constraint because any possible _type argument _must satisfy the corresponding _constraint_. This logic also applies in the _out- _position. Similarly, type never only guarantees type-safety in the _in- _position (see [_<font style="color:#355F7C;">Type Parameter Variance</font>_](#bookmark5)):



1             <font style="color:#007021;">class  </font>C { }

2

3            <font style="color:#007021;">interface  </font>X<font style="color:#666666;"><</font>T <font style="color:#007021;">extends  </font>C<font style="color:#666666;">> </font>{

4                              read() <font style="color:#666666;">: </font>T

5                             write(p <font style="color:#666666;">: </font><font style="color:#8F2100;">T</font>) <font style="color:#666666;">: </font><font style="color:#007021;">void</font>

6                               prop <font style="color:#666666;">: </font><font style="color:#8F2100;">T </font>7              }

8

9            <font style="color:#007021;">function  </font>foo(o <font style="color:#666666;">: </font><font style="color:#8F2100;">Object</font>) {

10                              <font style="color:#007021;">if  </font>(o <font style="color:#007021;">instanceof  </font>X) {

11                                               <font style="color:#007021;">let  </font>o1 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>C<font style="color:#666666;">> = </font>o      _<font style="color:#40808F;">// Compile-time  error,  X<*>  is  not  a  subtype  of X<C></font>_

12                                               <font style="color:#007021;">let  </font>o2 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>never<font style="color:#666666;">> = </font>o  _<font style="color:#40808F;">// Compile-time  error,  X<*>  is  not  a  subtype  of X<never></font>_

13

14                                               <font style="color:#007021;">let  </font>p<font style="color:#666666;">: </font>[<font style="color:#8F2100;">C  </font><font style="color:#666666;">= </font>o.read](C=o.read)()   _<font style="color:#40808F;">// OK,  T in  "out" position  is  instantiated  with  C</font>_

15                                               o.write(<font style="color:#007021;">new  </font>C())      _<font style="color:#40808F;">// Compile-time  error,  T in  "in" position  is  instantiated</font>_<font style="color:#FF0000;">␣ </font>_<font style="color:#FF0000;">˓→</font>_<font style="color:#FF0000;"> </font>_<font style="color:#40808F;">with  never</font>_

16                                               [o.prop <font style="color:#666666;">= </font>o.read](o.prop=o.read)()     _<font style="color:#40808F;">// Compile-time  error,  T in  "invariant" position </font>_17                                 }

18              }

_Wildcard type _never refers to _type parameters _of _out-variance _or _in-variance _because the notion of an _arbitrary _instan- tiation is efectively represented by one of the following:

•  Instantiation with the corresponding _constraint _for _out- _variant _type parameter_; or

• Instantiation with type never for _in- _variant _type parameter_.

For _out- _variance of a _type parameter_:

1             <font style="color:#007021;">class  </font>C { }

2

3            <font style="color:#007021;">interface  </font>X<font style="color:#666666;"><</font>out T <font style="color:#007021;">extends  </font>C<font style="color:#666666;">> </font>{

4                              read() <font style="color:#666666;">: </font>T 5              }

6

7            <font style="color:#007021;">function  </font>foo(o <font style="color:#666666;">: </font><font style="color:#8F2100;">Object</font>) {

8                           <font style="color:#007021;">if  </font>(o <font style="color:#007021;">instanceof  </font>X) {     _<font style="color:#40808F;">//  Type  of o  is  X<C></font>_

(continues on next page)





(continued from previous page)

9                                            <font style="color:#007021;">let  </font>o1 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>C<font style="color:#666666;">> = </font>o      _<font style="color:#40808F;">//  OK,  X<C>  is  a  subtype  of X<C></font>_

10                                               <font style="color:#007021;">let  </font>o2 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>never<font style="color:#666666;">> = </font>o  _<font style="color:#40808F;">// Compile-time  error,  X<C>  is  not  a  subtype  of X<never></font>_

11

12                                               <font style="color:#007021;">let  </font>p<font style="color:#666666;">: </font>[<font style="color:#8F2100;">C  </font><font style="color:#666666;">= </font>o.read](C=o.read)()   _<font style="color:#40808F;">// OK,  T  was  instantiated  with  C,  C  assigned  to  C </font>_13                                 }

14              }

For _in- _variance of a _type parameter_:

1             <font style="color:#007021;">class  </font>C { }

2

3            <font style="color:#007021;">interface  </font>X<font style="color:#666666;"><</font><font style="color:#007021;">in  </font>T <font style="color:#007021;">extends  </font>C<font style="color:#666666;">> </font>{

4                             write(p <font style="color:#666666;">: </font><font style="color:#8F2100;">T</font>) <font style="color:#666666;">: </font><font style="color:#007021;">void </font>5              }

6

7            <font style="color:#007021;">function  </font>foo(o <font style="color:#666666;">: </font><font style="color:#8F2100;">Object</font>) {

8                              <font style="color:#007021;">if  </font>(o <font style="color:#007021;">instanceof  </font>X) {     _<font style="color:#40808F;">//  Type  of o  is  X<never></font>_

9                                               <font style="color:#007021;">let  </font>o1 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>C<font style="color:#666666;">> = </font>o      _<font style="color:#40808F;">// Compile-time  error,  X<never>  is  not  a  subtype  of X<C></font>_

10                                            <font style="color:#007021;">let  </font>o2 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>never<font style="color:#666666;">> = </font>o  _<font style="color:#40808F;">//  OK,  X<never>  is  a  subtype  of X<never></font>_

11

12                                               o.write(<font style="color:#007021;">new  </font>C())      _<font style="color:#40808F;">// Compile-time  error,  T in  "in" position  is  instantiated</font>_<font style="color:#FF0000;">␣ </font>_<font style="color:#FF0000;">˓→</font>_<font style="color:#FF0000;"> </font>_<font style="color:#40808F;">with  never</font>_

13                               } 14              }



<!-- 这是一张图片，ocr 内容为： -->
![](https://cdn.nlark.com/yuque/0/2026/png/2697235/1781600199310-7669d777-9712-4616-a1b9-5930b3c33129.png)<font style="color:#145DEA;">.  </font>**Note**

_Wildcard type _for a certain _type parameter _is identical to itself as required by _<font style="color:#355F7C;">Subtyping</font>_:

1              <font style="color:#007021;">class  </font>X<font style="color:#666666;"><</font>T<font style="color:#666666;">> </font>{

2                              p <font style="color:#666666;">: </font><font style="color:#8F2100;">T</font>

3                           <font style="color:#007021;">constructor</font>(p <font style="color:#666666;">: </font><font style="color:#8F2100;">T</font>) { <font style="color:#007021;">this</font>.p <font style="color:#666666;">= </font>p } 4              }

5

6             <font style="color:#007021;">function  </font>foo(a <font style="color:#666666;">: </font><font style="color:#8F2100;">Any </font>, b <font style="color:#666666;">: </font><font style="color:#8F2100;">Any</font>) {

7                              <font style="color:#007021;">if  </font>(a <font style="color:#007021;">instanceof  </font>X <font style="color:#666666;">&& </font>b <font style="color:#007021;">instanceof  </font>X) {

8                                               <font style="color:#007021;">let  </font>a1 <font style="color:#666666;">= </font>a _<font style="color:#40808F;">// X<*></font>_

9                                               <font style="color:#007021;">let  </font>a2 <font style="color:#666666;">= </font>b _<font style="color:#40808F;">// X<*></font>_

10                                               a1 <font style="color:#666666;">= </font>a2    _<font style="color:#40808F;">// OK,  inferred X<*>  and X<*>  types  are  identical</font>_

11                                                                                             _<font style="color:#40808F;">// Despite  concrete  type  arguments  are  not  known,</font>_

12                                                                                             _<font style="color:#40808F;">//  the  code  is  type-safe</font>_

13

14                                               a.p <font style="color:#666666;">= </font>b.p  _<font style="color:#40808F;">// Compile-time  error  defined  by  invariance</font>_

15                               } 16              }

17

18             foo(<font style="color:#007021;">new  </font>X<font style="color:#666666;"><</font><font style="color:#8F2100;">string</font><font style="color:#666666;">></font>(<font style="color:#4070A1;">"a"</font>), <font style="color:#007021;">new  </font>X<font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">></font>(<font style="color:#21804F;">1</font>))





**<font style="color:#20435C;">5.2 Generic Instantiations</font>**

As mentioned before, a generic declaration defines a set of corresponding generic or non-generic entities. The process of instantiation is designed to do the following:

•  Allow producing new generic or non-generic entities;

•  Provide every type parameter with a type argument that can be any kind of type, including the type argument itself.

As a result of the instantiation process, a new class, interface, union, array, method, or function is created.



1             <font style="color:#007021;">class  </font>A  <font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>{}

2             <font style="color:#007021;">class  </font>B  <font style="color:#666666;"><</font>U,  V<font style="color:#666666;">>  </font><font style="color:#007021;">extends  </font>A<font style="color:#666666;"><</font>U<font style="color:#666666;">>  </font>{  _<font style="color:#40808F;">// A<U>  is  a  new  generic  type  here</font>_

3                            field <font style="color:#666666;">: </font><font style="color:#8F2100;">A</font><font style="color:#666666;"><</font>V<font style="color:#666666;">>                           </font>_<font style="color:#40808F;">// A<V>  is  a  new generic  type  here</font>_

4                           method  (p <font style="color:#666666;">:  </font><font style="color:#8F2100;">A</font><font style="color:#666666;"><</font><font style="color:#007021;">Object</font><font style="color:#666666;">></font>)  {}    _<font style="color:#40808F;">// A<Object>  is  a  new non-generic  type  here </font>_5              }











**<font style="color:#20435C;">5.2.1 Type Arguments</font>**

_Type arguments _are non-empty lists of types that are used for instantiation. The syntax of _type arguments _is presented below:



<font style="color:#0D85B5;">typeArguments </font>:

'< '  <font style="color:#0D85B5;">type  </font>( ' , '  <font style="color:#0D85B5;">type</font>)<font style="color:#666666;">*  </font>'> '

_<font style="color:#40808F;">;</font>_

The example below represents instantiations with diferent forms of type arguments:



1            <font style="color:#007021;">Array</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">>                                         </font>_<font style="color:#40808F;">// Instantiated  with  type  number</font>_

2           <font style="color:#007021;">Array</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">| </font><font style="color:#8F2100;">string</font><font style="color:#666666;">>                        </font>_<font style="color:#40808F;">// Instantiated  with  union  type</font>_

3           <font style="color:#007021;">Array</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font>[]<font style="color:#666666;">>                                     </font>_<font style="color:#40808F;">// Instantiated  with  array  type</font>_

4           <font style="color:#007021;">Array</font><font style="color:#666666;"><</font>[<font style="color:#8F2100;">number </font>,  <font style="color:#8F2100;">string </font>, <font style="color:#8F2100;">boolean</font>]<font style="color:#666666;">>   </font>_<font style="color:#40808F;">// Instantiated  with  tuple  type</font>_

5           <font style="color:#007021;">Array</font><font style="color:#666666;"><</font>()=><font style="color:#007021;">void</font><font style="color:#666666;">>                                     </font>_<font style="color:#40808F;">// Instantiated  with  function  type</font>_











**<font style="color:#20435C;">5.2.2  Explicit Generic Instantiations</font>**

An explicit generic instantiation is a language construct, which provides a list of _type arguments _(see [_<font style="color:#355F7C;">Type Arguments</font>_](#bookmark6)) that specify real types or type parameters to substitute corresponding type parameters of a generic:



1            <font style="color:#007021;">class  </font>G<font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>{}       _<font style="color:#40808F;">// Generic  class  declaration</font>_

2           <font style="color:#007021;">let  </font>x<font style="color:#666666;">:  </font><font style="color:#8F2100;">G</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">>  </font>_<font style="color:#40808F;">// Explicit  class  instantiation,  type  argument provided</font>_

3

4              <font style="color:#007021;">class  </font>A  {

5                       method  <font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>()  {}    _<font style="color:#40808F;">//  Generic method  declaration </font>_6              }

(continues on next page)









(continued from previous page)

7             <font style="color:#007021;">let  </font>a <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>A()

8           a.method<font style="color:#666666;"><</font><font style="color:#8F2100;">string</font><font style="color:#666666;">> </font>() _<font style="color:#40808F;">// Explicit method  instantiation,  type  argument provided</font>_

9

10            <font style="color:#007021;">function  </font>foo <font style="color:#666666;"><</font>T<font style="color:#666666;">> </font>() {} _<font style="color:#40808F;">// Generic  function  declaration</font>_

11           foo <font style="color:#666666;"><</font><font style="color:#8F2100;">string</font><font style="color:#666666;">> </font>() _<font style="color:#40808F;">// Explicit  function  instantiation,  type  argument provided</font>_

12

13            <font style="color:#007021;">type  </font>MyArray<font style="color:#666666;"><</font>T<font style="color:#666666;">> = </font>T[] _<font style="color:#40808F;">// Generic  type  declaration</font>_

14            <font style="color:#007021;">let  </font>array <font style="color:#666666;">: </font><font style="color:#8F2100;">MyArray</font><font style="color:#666666;"><</font><font style="color:#8F2100;">boolean</font><font style="color:#666666;">> = </font>[<font style="color:#007021;">true </font>, <font style="color:#007021;">false</font>] _<font style="color:#40808F;">// Explicit  array  instantiation,  type</font>_<font style="color:#FF0000;">␣ </font>_<font style="color:#FF0000;">˓→</font>__<font style="color:#40808F;">argument provided</font>_

15

16              <font style="color:#007021;">class  </font>X <font style="color:#666666;"><</font>T1, T2<font style="color:#666666;">> </font>{}

17           _<font style="color:#40808F;">// Different  forms  of explicit  instantiations  of class  X producing new generic  entities</font>_

18            <font style="color:#007021;">class  </font>Y<font style="color:#666666;"><</font>T<font style="color:#666666;">> </font><font style="color:#007021;">extends  </font>X<font style="color:#666666;"><</font><font style="color:#8F2100;">number </font>, T<font style="color:#666666;">> </font>{ _<font style="color:#40808F;">//  class  Y  extends  X  instantiated  with  number  and  T</font>_

19                          f1 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font><font style="color:#007021;">Object </font>, T<font style="color:#666666;">> </font>_<font style="color:#40808F;">// X instantiated  with  Object  and  T</font>_

20                          f2 <font style="color:#666666;">: </font><font style="color:#8F2100;">X</font><font style="color:#666666;"><</font>T, <font style="color:#8F2100;">string</font><font style="color:#666666;">> </font>_<font style="color:#40808F;">// X instantiated  with  T and  string</font>_

21                          <font style="color:#007021;">constructor</font>() {

22                               <font style="color:#007021;">this</font>.f1 <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>X<font style="color:#666666;"><</font><font style="color:#007021;">Object</font>,T<font style="color:#666666;">></font>

23                                  <font style="color:#007021;">this</font>.f2 <font style="color:#666666;">= </font><font style="color:#007021;">new  </font>X<font style="color:#666666;"><</font>T,<font style="color:#8F2100;">string</font><font style="color:#666666;">> </font>24                           }

25              }

A compile-time error occurs if type arguments are provided for non-generic class, interface, type alias, method, or function.

In the explicit generic instantiation _G _<T1 ,  ..., Tn >, _G _is the generic declaration, and <T1 ,  ..., Tn > is the list of its type arguments.

If type parameters _T_1 ,  ..., _T_n  of a generic declaration are constrained by the corresponding C1 ,  ..., Cn , then _T_i  is assignable to each constraint type _C_i (see _<font style="color:#355F7C;">Assignability</font>_). All subtypes of the type listed in the corresponding constraint have each type argument _T_i of the parameterized declaration ranging over them.

A generic instantiation _G _<T1 ,  ..., Tn > is _well-formed _if **all **of the following is true:

•  The generic declaration name is _G_;

•  The number of type arguments equals the number of type parameters of _G_; and

•  All type arguments are assignable to the corresponding type parameter constraint (see _<font style="color:#355F7C;">Assignability</font>_).

A compile-time error occurs if an instantiation is not well-formed.

Unless explicitly stated otherwise in appropriate sections, this specification discusses generic versions of class type, interface type, or function.

Any two generic instantiations are considered _provably distinct _if:

•  Both are parameterizations of distinct generic declarations; or

•  Any of their type arguments is provably distinct.





**<font style="color:#20435C;">5.2.3  Implicit Generic Instantiations</font>**

In an _implicit _instantiation, type arguments are not specified explicitly.  Such type arguments are inferred (see _<font style="color:#355F7C;">Type Inference</font>_) from the context in which a generic is referred.  If type arguments cannot be inferred, then a compile-time error occurs.

Diferent cases of type argument inference are represented in the examples below:

1            <font style="color:#007021;">function  </font>foo  <font style="color:#666666;"><</font>G<font style="color:#666666;">>  </font>(x <font style="color:#666666;">:  </font><font style="color:#8F2100;">G </font>,  y <font style="color:#666666;">:  </font><font style="color:#8F2100;">G</font>)  {}  _<font style="color:#40808F;">// Generic  function  declaration</font>_

2           foo  (<font style="color:#007021;">new  Object </font>, <font style="color:#007021;">new  Object</font>)        _<font style="color:#40808F;">// Implicit  generic  function  instantiation</font>_

3                   _<font style="color:#40808F;">//  based  on  argument  types:  the  type  argument  is  inferred</font>_

4

5             <font style="color:#007021;">function  </font>process  <font style="color:#666666;"><</font>P,  R<font style="color:#666666;">>  </font>(arg <font style="color:#666666;">:  </font><font style="color:#8F2100;">P </font>,  cb<font style="color:#666666;">? :  </font>(p <font style="color:#666666;">:  </font><font style="color:#8F2100;">P</font>)  =>  R) <font style="color:#666666;">:  </font>P   <font style="color:#666666;">|   </font>R  {

6                          _<font style="color:#40808F;">// Return  the  data  itself or  if the processing  function provided  the</font>_

7                          _<font style="color:#40808F;">// result  of processing</font>_

8                       <font style="color:#007021;">return  </font>cb  <font style="color:#666666;">!= </font><font style="color:#007021;">undefined  </font><font style="color:#666666;">?  </font>cb  (arg) <font style="color:#666666;">:  </font>arg 9              }

10           process  (<font style="color:#21804F;">123 </font>,  ()  =>  {})  _<font style="color:#40808F;">// P  is  inferred  as  'int ' ,  while  R  is  'void '</font>_

11

12            <font style="color:#007021;">function  </font>bar  <font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>(p <font style="color:#666666;">:  </font><font style="color:#8F2100;">number</font>)  {}

13            bar  (<font style="color:#21804F;">1</font>)  _<font style="color:#40808F;">// Compile-time  error,  type  argument  cannot  be  inferred</font>_



Implicit instantiation is only possible for generic functions and methods.

If a method of a generic class or interface _G _<T1 ,  ..., Tn > has its own type parameter U with default type (see [_<font style="color:#355F7C;">Type</font>_](#bookmark4)_<font style="color:#355F7C;"> </font>_[_<font style="color:#355F7C;">Parameter Default</font>_](#bookmark4)) that equals Ti , and an implicit generic instantiation of this method provides no information to infer a type argument, then the type argument correspondent to Ti is used as the type argument for U.

This situation is represented in the example below:

1            <font style="color:#007021;">class  </font>A  <font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>{    _<font style="color:#40808F;">//  T is  the  class  type  parameter</font>_

2                            foo<font style="color:#666666;"><</font>U  <font style="color:#666666;">=  </font>T<font style="color:#666666;">>  </font>(p <font style="color:#666666;">:  </font><font style="color:#8F2100;">U</font>)  {}  _<font style="color:#40808F;">// U is  own  type  parameter  with  default  T</font>_

3                           bar<font style="color:#666666;"><</font>V  <font style="color:#666666;">=  </font>T<font style="color:#666666;">>  </font>()  {}         _<font style="color:#40808F;">//  V is  own  type  parameter  with  default  T </font>_4              }

5

6            _<font style="color:#40808F;">// Assume  that  X1  and  X2  are  two  distinct  types</font>_

7              <font style="color:#007021;">let  </font>a  <font style="color:#666666;">=  </font><font style="color:#007021;">new  </font>A<font style="color:#666666;"><</font>X1<font style="color:#666666;">></font>

8

9             _<font style="color:#40808F;">// Implicit  instantiation:</font>_

10             [a.foo](a.foo) (<font style="color:#007021;">new  </font>X2)  _<font style="color:#40808F;">//  Type  argument  is  inferred  from  ``new X2``</font>_

11            [a.bar](a.bar) ()            _<font style="color:#40808F;">//  Class  type  argument  X1  is  used  as  no  other  information  is provided</font>_

12

13             _<font style="color:#40808F;">// explicit  instantiation:</font>_

14            [a.foo<font style="color:#666666;"><</font>X2<font style="color:#666666;">>  </font>(<font style="color:#007021;">new  </font>X2)  _<font style="color:#40808F;">// Explicit  type  argument  is  used</font>_](a.foo<X2>(newX2)//Explicittypeargumentisused)

15            [a.bar<font style="color:#666666;"><</font>X2<font style="color:#666666;">>  </font>()            _<font style="color:#40808F;">// Explicit  type  argument  is  used</font>_](a.bar<X2>()//Explicittypeargumentisused)

