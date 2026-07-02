

**CHAPTER ****FOUR**



**NAMES, DECLARATIONS AND SCOPES**







This chapter introduces the following three mutually-related notions:

•  Names,

•  Declarations, and

•  Scopes.

Each entity in an ArkTS program—a variable, a constant, a class, a type, a function, a method, etc.—is introduced via a _declaration_. An entity declaration defines a _name _of the entity. The name is used to refer to the entity further in the program text. The declaration binds the entity name with the _scope _(see[_<font style="color:#355F7C;">Scopes</font>_](#bookmark1)). The scope afects the accessibility of a new entity, and how it can be referred to by its qualified or simple (unqualified) name.









**<font style="color:#20435C;">4.1  Names</font>**

A name is a sequence of one or more identifiers. A name allows referring to any declared entity. Names can have two syntactical forms:

•  _Simple name _that consists of a single identifier;

•  _Qualified name _that consists of a sequence of identifiers with the token  ' . ' as separator.

Both situations are covered by the below syntax rule:



<font style="color:#0D85B5;">qualifiedName </font>:

<font style="color:#0D85B5;">identifier  </font>( ' . '  <font style="color:#0D85B5;">identifier  </font>)<font style="color:#666666;">*</font>

_<font style="color:#40808F;">;</font>_

In a qualified name _N.x _(where _N _is a simple name, and x is an identifier that can follow a sequence of identifiers separated with ' . ' tokens), _N _can name the following:

• Name of a module (see _<font style="color:#355F7C;">Module Declarations</font>_) that is introduced as a result of import  *  as  N (see _<font style="color:#355F7C;">Bind All with Qualified Access</font>_) with x to name the exported entity;

•  A class or interface type (see _<font style="color:#355F7C;">Classes</font>_, _<font style="color:#355F7C;">Interfaces</font>_) with x to name its static member;

•  A class or interface type variable with x to name its instance member.













**59**





**<font style="color:#20435C;">4.2  Declarations</font>**

A declaration introduces a named entity in an appropriate _declaration scope _(see [_<font style="color:#355F7C;">Scopes</font>_](#bookmark1)), see

• _<font style="color:#355F7C;">Namespace Declarations</font>_;

• [_<font style="color:#355F7C;">Type Declarations</font>_](#bookmark3);

• [_<font style="color:#355F7C;">Variable and Constant Declarations</font>_](#bookmark4);

• [_<font style="color:#355F7C;">Function Declarations</font>_](#bookmark5);

• _<font style="color:#355F7C;">Classes</font>_;

• _<font style="color:#355F7C;">Interfaces</font>_;

• _<font style="color:#355F7C;">Enumerations</font>_;

• _<font style="color:#355F7C;">Constant Or Variable Declarations</font>_;

• _<font style="color:#355F7C;">Top-Level Declarations</font>_;

• _<font style="color:#355F7C;">Explicit Overload Declarations</font>_;

• _<font style="color:#355F7C;">Annotations</font>_;

• _<font style="color:#355F7C;">Ambient Declarations</font>_;

• _<font style="color:#355F7C;">Accessor Declarations</font>_;

• _<font style="color:#355F7C;">Functions with Receiver</font>_.

Each declaration in the declaration scope (see [_<font style="color:#355F7C;">Scopes</font>_](#bookmark1)) must be _distinguishable_.

Declarations are _distinguishable _if they have:

• Diferent names,

•  Diferent signatures (see [_<font style="color:#355F7C;">Declaration Distinguishable by Signatures</font>_](#bookmark6)).

Distinguishable declarations are represented by the examples below:

1             <font style="color:#007021;">const  </font>PI  <font style="color:#666666;">=  </font><font style="color:#21804F;">3.14</font>

2              <font style="color:#007021;">const  </font>pi  <font style="color:#666666;">=  </font><font style="color:#21804F;">3</font>

3              <font style="color:#007021;">function  </font>Pi()  {}

4             <font style="color:#007021;">type  </font>IP  <font style="color:#666666;">=  </font><font style="color:#8F2100;">number </font>[]

5              <font style="color:#007021;">class  </font>A  {

6                              <font style="color:#007021;">static </font>method()  {}

7                              method()  {}

8                               field <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font>PI

9                              <font style="color:#007021;">static  </font>field <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font>PI  <font style="color:#666666;">+  </font>pi 10              }



If a declaration is not distinguishable by name, except a valid overload (see [_<font style="color:#355F7C;">Declaration Distinguishable by Signatures</font>_](#bookmark6)), then a compile-time error occurs:

1            _<font style="color:#40808F;">// Compile-time  error,  the  constant  and  the  function  have  the  same  name .</font>_

2             <font style="color:#007021;">const  </font>PI  <font style="color:#666666;">=  </font><font style="color:#21804F;">3.14</font>

3           <font style="color:#007021;">function  </font>PI()  {  <font style="color:#007021;">return  </font><font style="color:#21804F;">3.14  </font>}

4

5            _<font style="color:#40808F;">// Compile-time  error,  the  type  and  the  variable  have  the  same  name .</font>_

6            <font style="color:#007021;">class  </font>Person  {}

7              <font style="color:#007021;">let  </font>Person <font style="color:#666666;">:  </font><font style="color:#8F2100;">Person</font>

(continues on next page)





(continued from previous page)

8

9            _<font style="color:#40808F;">//  Compile-time  error,  the  field  and  the  method have  the  same  name .</font>_

10             <font style="color:#007021;">class  </font>C  {

11                             counter <font style="color:#666666;">:  </font><font style="color:#8F2100;">number</font>

12                              counter() <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{

13                                      <font style="color:#007021;">return  this</font>.counter 14                             }

15              }

16

17           _<font style="color:#40808F;">/*  compile-time  error,  name  of the  declaration  clashes  with  the predefined</font>_

18                               _<font style="color:#40808F;">type  or  standard  library  entity name .  */</font>_

19              <font style="color:#007021;">let </font><font style="color:#8F2100;">number </font><font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">1</font>

20              <font style="color:#007021;">let  String  </font><font style="color:#666666;">=  </font><font style="color:#007021;">true</font>

21            <font style="color:#007021;">function  </font>Record  ()  {}

22              <font style="color:#007021;">interface  Object  </font>{}

23              <font style="color:#007021;">let  Array  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">42</font>

24

25

26           _<font style="color:#40808F;">/*  compile-time  error,  ambient  and non-ambient  declarations  refer  to  the</font>_

27                          _<font style="color:#40808F;">same  entity  in  a  single module </font>_28              _<font style="color:#40808F;">*/</font>_

29           <font style="color:#007021;">declare  function  </font>foo()

30           <font style="color:#007021;">function  </font>foo()  {}











**<font style="color:#20435C;">4.2.1  Declaration Distinguishable by Signatures</font>**

The following kinds of same-name declarations are distinguishable by signatures if signatures are not overload- equivalent (see _<font style="color:#355F7C;">Overload-Equivalent Signatures</font>_):

•  Functions of the same name in the same _declaration scope _(see _<font style="color:#355F7C;">Implicit Function Overloading</font>_);

•  Methods of the same class with the same name (see _<font style="color:#355F7C;">Implicit Method Overloading</font>_);

•  Unnamed constructors of the same class.

A compile-time error occurs if two same-name functions declared in diferent scopes are made accessible in one scope:

1             <font style="color:#007021;">import  </font>{foo,  goo  <font style="color:#007021;">as  </font>bar}  <font style="color:#007021;">from  </font><font style="color:#4070A1;">"some  module"</font>

2

3           <font style="color:#007021;">function  </font>foo()  {}  _<font style="color:#40808F;">// Compile-time  error,  duplicate  declaration</font>_

4           <font style="color:#007021;">function  </font>bar()  {}  _<font style="color:#40808F;">// Compile-time  error,  duplicate  declaration</font>_



Functions distinguishable by signatures are represented in the example below:

1                      <font style="color:#007021;">function  </font>foo()  {}

2                   <font style="color:#007021;">function  </font>foo(x <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>)  {}

3                      <font style="color:#007021;">function  </font>foo(x <font style="color:#666666;">: </font><font style="color:#8F2100;">number </font>[])  {}

4                      <font style="color:#007021;">function  </font>foo(x <font style="color:#666666;">:  </font><font style="color:#8F2100;">string</font>)  {}



Functions with overload-equivalent signatures cause a compile-time error as represented in the following example:









1                      _<font style="color:#40808F;">// Functions  have  overload-equivalent  signatures</font>_

2                   <font style="color:#007021;">function  </font>foo(x <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>)  {}

3                   <font style="color:#007021;">function  </font>foo(y <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>)  {}

4

5                   _<font style="color:#40808F;">// Functions  have  overload-equivalent  signatures  because  of type  erasure</font>_

6                   <font style="color:#007021;">function  </font>bar(x <font style="color:#666666;">: </font><font style="color:#8F2100;">Array</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">></font>)  {}

7                      <font style="color:#007021;">function  </font>bar(x <font style="color:#666666;">: </font><font style="color:#8F2100;">Array</font><font style="color:#666666;"><</font><font style="color:#8F2100;">string</font><font style="color:#666666;">></font>)  {}











**<font style="color:#20435C;">4.3 Scopes</font>**

Diferent entity declarations introduce new names in diferent _scopes_. Scope is the region of program text where an entity is declared, along with other regions it can be used in.  The following entities are always referred to by their qualified names only:

•  Class and interface members (both static and instance ones);

• Entities imported via qualified import; and

•  Entities declared in namespaces (see _<font style="color:#355F7C;">Namespace Declarations</font>_).

Other entities are referred to by their simple (unqualified) names.

Entities within the scope are accessible (see [_<font style="color:#355F7C;">Accessible</font>_](#bookmark7)).

The scope level of an entity depends on the context the entity is declared in:

•  _Module level scope _is applicable to modules only. _Constants _and _variables _are accessible (see[_<font style="color:#355F7C;">Accessible</font>_](#bookmark7)) from their respective points of declaration to the end of the module.  Other entities are accessible through the entire scope level. If exported, a name can be accessed in other modules.

•  _Namespace level scope _is applicable to namespaces only. _Constants _and _variables _are accessible (see[_<font style="color:#355F7C;">Accessible</font>_](#bookmark7)) from their respective points of declaration to the end of the namespace including all embedded namespaces. Other entities are accessible through the entire namespace scope level including embedded namespaces. If exported, a name can be accessed outside the namespace with mandatory namespace name qualification.

•  A name declared inside a class (_class level scope_) is accessible (see [_<font style="color:#355F7C;">Accessible</font>_](#bookmark7)) in the class and sometimes, depending on the access modifier (see _<font style="color:#355F7C;">Access Modifiers</font>_), outside the class, or by means of a derived class.

Access to names inside the class is qualified with one of the following:

**–  **Keywords this or super;

**–  **Class instance expression for the names of instance entities; or

**–  **Name of the class for static entities.

Outside access is qualified with one of the following:

**–  **The expression the value stores;

**–  **A reference to the class instance for the names of instance entities; or

**–  **Name of the class for static entities.

ArkTS supports using the same identifier as names of a static entity and of an instance entity. The two names are _distinguishable _by the context, which is either a name of a class for static entities or an expression that denotes an instance.





•  A name declared inside an interface (_interface level scope_) is accessible (see[_<font style="color:#355F7C;">Accessible</font>_](#bookmark7)) inside and outside that interface (default public).

•  _The scope of a type parameter _name in a class or interface declaration is that entire declaration, excluding static member declarations.

•  The scope of a type parameter name in a function declaration is that entire declaration (_function type parameter scope_).

•  The scope of a name declared inside the body of a function or a method declaration is the body of that declaration from the point of declaration and up to the end of the body (_method _or_function scope_). This scope is also applied to function or method parameter names.

•  The scope of a name declared inside a block is the body of the block from the point of the name declaration and up to the end of the block (_block scope_).



1           <font style="color:#007021;">function  </font>foo()  {

2                              <font style="color:#007021;">let  </font>x  <font style="color:#666666;">=  </font>y  _<font style="color:#40808F;">// Compile-time  error  -  y  is  not  accessible  yet</font>_

3                              <font style="color:#007021;">let  </font>y  <font style="color:#666666;">=  </font><font style="color:#21804F;">1 </font>4              }

Scopes of two names can overlap (e.g., when statements are nested). If scopes of two names overlap, then:

•  The innermost declaration takes precedence; and

•  Access to the outer name is not possible.

Class, interface, and enumeration members can only be accessed by applying the dot operator  ' . ' to an instance or to a type. Accessing them otherwise is not possible.









**<font style="color:#20435C;">4.4 Accessible</font>**

Entity is considered accessible if it belongs to the current scope (see [_<font style="color:#355F7C;">Scopes</font>_](#bookmark1)) and means that its name can be used for diferent purposes as follows:

•  Type name is used to declare variables, constants, parameters, class fields, or interface properties;

•  Function or method name is used to call the function or method;

•  Variable name is used to read or change the value of the variable;

• Name of a module introduced as a result of import with Bind All with Qualified Access (see _<font style="color:#355F7C;">Bind All with Qualified Access</font>_) is used to deal with exported entities.









**<font style="color:#20435C;">4.5 Type Declarations</font>**

An interface declaration (see _<font style="color:#355F7C;">Interfaces</font>_), a class declaration (see _<font style="color:#355F7C;">Classes</font>_), an enum declaration (see _<font style="color:#355F7C;">Enumerations</font>_), or a type alias (see [_<font style="color:#355F7C;">Type Alias Declaration</font>_](#bookmark8)) are type declarations.

The syntax of _type declaration _is presented below:









<font style="color:#0D85B5;">typeDeclaration </font>:

<font style="color:#0D85B5;">classDeclaration</font>

|   <font style="color:#0D85B5;">interfaceDeclaration</font>

|   <font style="color:#0D85B5;">enumDeclaration</font>

|   <font style="color:#0D85B5;">constEnumDeclaration</font>

|  <font style="color:#0D85B5;">typeAlias</font>

_<font style="color:#40808F;">;</font>_











**<font style="color:#20435C;">4.5.1 Type Alias Declaration</font>**

Type aliases enable using meaningful and concise notations by providing the following:

•  Names for anonymous types (array, function, and union types); or

•  Alternative names for existing types.

Scopes of type aliases are module or namespace level scopes.  Names of all type aliases must follow the uniqueness rules of [_<font style="color:#355F7C;">Declarations</font>_](#bookmark2)in the current context.

The syntax of _type alias _is presented below:



<font style="color:#0D85B5;">typeAlias </font>:

'<font style="color:#0D85B5;">type </font>'  <font style="color:#0D85B5;">identifier  typeParameters</font>?  '<font style="color:#666666;">= </font>'  <font style="color:#0D85B5;">type</font>

_<font style="color:#40808F;">;</font>_

Meaningful names can be provided for anonymous types as follows:

1            <font style="color:#007021;">type  </font>Matrix  <font style="color:#666666;">= </font><font style="color:#8F2100;">number </font>[] []

2            <font style="color:#007021;">type  </font>Handler  <font style="color:#666666;">=  </font>(s <font style="color:#666666;">:  </font><font style="color:#8F2100;">string </font>,  no <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>)  =>  <font style="color:#8F2100;">string</font>

3             <font style="color:#007021;">type  </font>Predicate<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font>(x <font style="color:#666666;">:  </font><font style="color:#8F2100;">T</font>)  =>  <font style="color:#8F2100;">boolean</font>

4             <font style="color:#007021;">type  </font>NullishNumber  <font style="color:#666666;">= </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">|  </font><font style="color:#007021;">undefined</font>



If the existing type name is too long, then a shorter new name can be introduced by using type alias (particularly for a generic type).

1            <font style="color:#007021;">type  </font>Dictionary  <font style="color:#666666;">=  </font><font style="color:#007021;">Map</font><font style="color:#666666;"><</font><font style="color:#8F2100;">string </font>,  <font style="color:#8F2100;">string</font><font style="color:#666666;">></font>

2             <font style="color:#007021;">type  </font>MapOfString<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font><font style="color:#007021;">Map</font><font style="color:#666666;"><</font>T,  <font style="color:#8F2100;">string</font><font style="color:#666666;">></font>



A type alias acts as a new name only. It neither changes the original type meaning nor introduces a new type.

1              <font style="color:#007021;">type  </font>Vector  <font style="color:#666666;">= </font><font style="color:#8F2100;">number </font>[]

2            <font style="color:#007021;">function  </font>max(x <font style="color:#666666;">: </font><font style="color:#8F2100;">Vector</font>) <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{

3                              <font style="color:#007021;">let </font>m  <font style="color:#666666;">=  </font>x [[<font style="color:#21804F;">0</font>](#bookmark9)]

4                              <font style="color:#007021;">for  </font>(<font style="color:#007021;">let  </font>v  <font style="color:#007021;">of  </font>x)

5                                               <font style="color:#007021;">if  </font>(v  <font style="color:#666666;">> </font>m) m  <font style="color:#666666;">=  </font>v

6                              <font style="color:#007021;">return </font>m 7              }

8

9            <font style="color:#007021;">let  </font>x<font style="color:#666666;">: </font><font style="color:#8F2100;">Vector  </font><font style="color:#666666;">=  </font>[[<font style="color:#21804F;">2</font>](#bookmark10)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">3</font>](#bookmark11)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">1</font>](#bookmark12)]

10           console.log(max(x))  _<font style="color:#40808F;">// output:  3</font>_



Type aliases can be recursively referenced inside the right-hand side of a type alias declaration.





In a type alias defined as type  A  =  something, _A _can be used recursively if it is one of the following:

• Array element type: type  A  =  A []; or

•  Type argument of a generic type: type  A  =  C<A>.

1             <font style="color:#007021;">type  </font>A  <font style="color:#666666;">=  </font>A []  _<font style="color:#40808F;">// OK,  used  as  element  type</font>_

2

3            <font style="color:#007021;">class  </font>C<font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>{  _<font style="color:#40808F;">/*body*/</font>_}

4              <font style="color:#007021;">type  </font>B  <font style="color:#666666;">=  </font>C<font style="color:#666666;"><</font>B<font style="color:#666666;">>  </font>_<font style="color:#40808F;">// OK,  used  as  a  type  argument</font>_

5

6              <font style="color:#007021;">type  </font>D  <font style="color:#666666;">=  </font><font style="color:#8F2100;">string  </font><font style="color:#666666;">|  </font><font style="color:#007021;">Array</font><font style="color:#666666;"><</font>D<font style="color:#666666;">>  </font>_<font style="color:#40808F;">// OK</font>_



Any other use including unresolvable circular references causes a compile-time error, because the compiler does not have enough information about the defined alias:

1            <font style="color:#007021;">type  </font>E  <font style="color:#666666;">=  </font>E                   _<font style="color:#40808F;">// Compile-time  error</font>_

2            <font style="color:#007021;">type  </font>F  <font style="color:#666666;">=  </font><font style="color:#8F2100;">string  </font><font style="color:#666666;">|   </font>F  _<font style="color:#40808F;">// Compile-time  error</font>_

3              <font style="color:#007021;">type  </font>C<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font>T

4              <font style="color:#007021;">type  </font>A  <font style="color:#666666;">=  </font>C<font style="color:#666666;"><</font>A<font style="color:#666666;">>             </font>_<font style="color:#40808F;">// Compile-time  error</font>_



The same rules apply to a generic type alias defined as type  A<T>  =  something:

1             <font style="color:#007021;">type  </font>A<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font><font style="color:#007021;">Array</font><font style="color:#666666;"><</font>A<font style="color:#666666;"><</font>T<font style="color:#666666;">>>  </font>_<font style="color:#40808F;">//  OK,  A<T>  is  used  as  a  type  argument</font>_

2             <font style="color:#007021;">type  </font>A<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font><font style="color:#8F2100;">string  </font><font style="color:#666666;">|  </font><font style="color:#007021;">Array</font><font style="color:#666666;"><</font>A<font style="color:#666666;"><</font>T<font style="color:#666666;">>>  </font>_<font style="color:#40808F;">// OK</font>_

3

4            <font style="color:#007021;">type  </font>A<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font>A<font style="color:#666666;"><</font>T<font style="color:#666666;">>  </font>_<font style="color:#40808F;">// Compile-time  error</font>_



A compile-time error occurs if a generic type alias is used without a type argument:

<!-- 这是一张图片，ocr 内容为： -->
![](https://cdn.nlark.com/yuque/0/2026/png/2697235/1781600194043-de4e41bc-d2f4-49a2-90c4-e53c72decead.png)1            <font style="color:#007021;">type  </font>A<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font><font style="color:#007021;">Array</font><font style="color:#666666;"><</font>A<font style="color:#666666;">>  </font>_<font style="color:#40808F;">// Compile-time  error</font>_





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

There is no restriction on using a type parameter _T _in the right side of a type alias declaration. The following code is valid:



1              <font style="color:#007021;">type  </font>NodeValue<font style="color:#666666;"><</font>T<font style="color:#666666;">>  =  </font>T   <font style="color:#666666;">|   </font><font style="color:#007021;">Array</font><font style="color:#666666;"><</font>T<font style="color:#666666;">>  |   </font><font style="color:#007021;">Array</font><font style="color:#666666;"><</font>NodeValue<font style="color:#666666;"><</font>T<font style="color:#666666;">>> </font>;



A type parameter of a type alias can _depend _on another type parameter of the same generic.

1              <font style="color:#007021;">type  </font>X<font style="color:#666666;"><</font>T,  S  <font style="color:#007021;">extends  </font>T<font style="color:#666666;">>  =  </font>T   <font style="color:#666666;">|   </font>S



A compile-time error occurs if a type parameter in the type parameter section depends on itself directly or indirectly:

1         <font style="color:#007021;">type  </font>X<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>T<font style="color:#666666;">>  =  </font>T  _<font style="color:#40808F;">// circular  dependency</font>_

2         <font style="color:#007021;">type  </font>Y<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>R,  R  <font style="color:#007021;">extends  </font>T<font style="color:#666666;">>    =  </font>T  _<font style="color:#40808F;">// circular  dependency</font>_

3         <font style="color:#007021;">type  </font>Z<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  </font>R,  R  <font style="color:#007021;">extends  </font>T  <font style="color:#666666;">|  </font><font style="color:#007021;">undefined</font><font style="color:#666666;">>  =  </font>T  _<font style="color:#40808F;">// circular  dependency</font>_





**<font style="color:#20435C;">4.6 Variable and Constant Declarations</font>**

**<font style="color:#20435C;">4.6.1 Variable Declarations</font>**

A non-ambient _variable declaration _introduces a new variable which is in fact a named storage location.  A declared variable must be assigned an initial value before the first usage.  The initial value is assigned either as a part of the declaration or in various forms via initialization.

The syntax of _variable declarations _is presented below:



<font style="color:#0D85B5;">variableDeclarations </font>:

'<font style="color:#0D85B5;">let </font>'  <font style="color:#0D85B5;">variableDeclarationList</font>

_<font style="color:#40808F;">;</font>_



<font style="color:#0D85B5;">variableDeclarationList </font>:

<font style="color:#0D85B5;">variableDeclaration  </font>( ' , '  <font style="color:#0D85B5;">variableDeclaration</font>)<font style="color:#666666;">*</font>

_<font style="color:#40808F;">;</font>_



<font style="color:#0D85B5;">variableDeclaration </font>:

<font style="color:#0D85B5;">identifier  </font>' : '  <font style="color:#0D85B5;">type  initializer</font>?

|  <font style="color:#0D85B5;">identifier  initializer</font>

_<font style="color:#40808F;">;</font>_

<font style="color:#0D85B5;">initializer </font>:

'<font style="color:#666666;">= </font>'  <font style="color:#0D85B5;">expression</font>

_<font style="color:#40808F;">;</font>_

When a variable is introduced by a variable declaration, type T of the variable is determined as follows:

•  T is the type specified in a type annotation (if any) of the declaration.

**–  **If the declaration also has an initializer, then the initializer expression type must be assignable to T (see [_<font style="color:#355F7C;">Assignability with Initializer</font>_](#bookmark13)).

•  If no type annotation is available, then T is inferred from the initializer expression (see [_<font style="color:#355F7C;">Type Inference from</font>_](#bookmark14)_<font style="color:#355F7C;"> </font>_[_<font style="color:#355F7C;">Initializer</font>_](#bookmark14)).

An ambient variable declaration (see _<font style="color:#355F7C;">Ambient Constant or Variable Declarations</font>_) must have _type _but no _initializer_. Otherwise, a compile-time error occurs.

1            <font style="color:#007021;">let  </font>a<font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>_<font style="color:#40808F;">// OK</font>_

2              <font style="color:#007021;">let  </font>b  <font style="color:#666666;">=  </font><font style="color:#21804F;">1  </font>_<font style="color:#40808F;">// OK,  type  'int '  is  inferred</font>_

3            <font style="color:#007021;">let  </font>c <font style="color:#666666;">:  </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">6 </font>,  d  <font style="color:#666666;">=  </font><font style="color:#21804F;">1 </font>,  e  <font style="color:#666666;">=  </font><font style="color:#4070A1;">"hello"  </font>_<font style="color:#40808F;">//  OK</font>_

4

5            _<font style="color:#40808F;">// OK,  type  of lambda  and  type  of  'f'  can  be  inferred</font>_

6             <font style="color:#007021;">let  </font>f  <font style="color:#666666;">=  </font>(p <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>)  =>  b  <font style="color:#666666;">+  </font>p

7              <font style="color:#007021;">let  </font>x  _<font style="color:#40808F;">// Compile-time  error,  either  type  or  initializer</font>_



Every variable in a program must have an initial value before it can be used:

•  If the _initializer _of a variable is specified explicitly, then its execution produces the initial value for this variable.

•  Otherwise, the following situations are possible:

**–  **If the type of a variable is T, and T has a _default value _(see _<font style="color:#355F7C;">Default Values for Types</font>_), then the variable is initialized with the default value.

**–  **If a variable has no default value, then its value must be set by the _<font style="color:#355F7C;">Simple Assignment Operator</font>_before any use of the variable.











**<font style="color:#20435C;">4.6.2  Constant Declarations</font>**

A _constant declaration _introduces a named variable with a mandatory explicit value.  The value of a constant cannot be changed by an assignment expression (see _<font style="color:#355F7C;">Assignment</font>_).  If the constant is an object or array, then object fields or array elements can be modified.

The syntax of _constant declarations _is presented below:



<font style="color:#0D85B5;">constantDeclarations </font>:

'<font style="color:#0D85B5;">const </font>'  <font style="color:#0D85B5;">constantDeclarationList</font>

_<font style="color:#40808F;">;</font>_



<font style="color:#0D85B5;">constantDeclarationList </font>:

<font style="color:#0D85B5;">constantDeclaration  </font>( ' , '  <font style="color:#0D85B5;">constantDeclaration</font>)<font style="color:#666666;">*</font>

_<font style="color:#40808F;">;</font>_



<font style="color:#0D85B5;">constantDeclaration </font>:

<font style="color:#0D85B5;">identifier  </font>( ' : '  <font style="color:#0D85B5;">type</font>)?  <font style="color:#0D85B5;">initializer</font>

_<font style="color:#40808F;">;</font>_

The type T of a constant declaration is determined as follows:

•  If T is the type specified in a type annotation (if any) of the declaration, then the initializer expression must be assignable to T (see[_<font style="color:#355F7C;">Assignability with Initializer</font>_](#bookmark13)).

•  If no type annotation is available, then T is inferred from the initializer expression (see [_<font style="color:#355F7C;">Type Inference from</font>_](#bookmark14)_<font style="color:#355F7C;"> </font>_[_<font style="color:#355F7C;">Initializer</font>_](#bookmark14)).



1             <font style="color:#007021;">const  </font>a<font style="color:#666666;">:  </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">1  </font>_<font style="color:#40808F;">//  OK</font>_

2              <font style="color:#007021;">const  </font>b  <font style="color:#666666;">=  </font><font style="color:#21804F;">1  </font>_<font style="color:#40808F;">// OK,  int  type  is  inferred</font>_

3             <font style="color:#007021;">const  </font>c <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">1 </font>,  d  <font style="color:#666666;">=  </font><font style="color:#21804F;">2 </font>,  e  <font style="color:#666666;">=  </font><font style="color:#4070A1;">"hello"  </font>_<font style="color:#40808F;">//  OK</font>_

4           <font style="color:#007021;">const  </font>x  _<font style="color:#40808F;">// Compile-time  error,  initializer  is mandatory</font>_

5           <font style="color:#007021;">const  </font>y <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>_<font style="color:#40808F;">// Compile-time  error,  initializer  is mandatory</font>_











**<font style="color:#20435C;">4.6.3 Validity of Initializer</font>**

If a variable or constant initializer expression refers to a variable or to a constant, and the declaration of that variable or constant is textually located after the current declaration, then a compile-time error occurs.



1            <font style="color:#007021;">const  </font>a<font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font>b  _<font style="color:#40808F;">// Compile-time  error</font>_

2              <font style="color:#007021;">let     </font>b  <font style="color:#666666;">=  </font><font style="color:#21804F;">1</font>

3            <font style="color:#007021;">let      </font>c <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font>d  _<font style="color:#40808F;">// Compile-time  error</font>_

4              <font style="color:#007021;">const  </font>d  <font style="color:#666666;">=  </font><font style="color:#21804F;">123</font>





**<font style="color:#20435C;">4.6.4 Assignability with Initializer</font>**

If a variable or constant declaration contains type annotation T and initializer expression _E_, then the type of _E _must be assignable to T (see_<font style="color:#355F7C;">Assignability</font>_).









**<font style="color:#20435C;">4.6.5 Type Inference from Initializer</font>**

The type of a declaration that contains no explicit type annotation is inferred from the initializer expression as follows:

•  In a variable declaration (not in a constant declaration, though), if the initializer expression is of a literal type, then the literal type is replaced with its supertype, if any (see _<font style="color:#355F7C;">Subtyping for Literal Types</font>_).  If the initializer expression is of a union type that contains literal types, then each literal type is replaced with its supertype (see _<font style="color:#355F7C;">Subtyping for Literal Types</font>_), and then normalized (see _<font style="color:#355F7C;">Union Types Normalization</font>_).

•  Otherwise, type of a declaration is inferred from its initializer expression.

• Type of an expression with ternary operator condition  ?  expr1  :    expr2 (see _<font style="color:#355F7C;">Ternary Conditional Expres- sions</font>_) is inferred as follows:

**–  **If condition can be evaluated at compile time, then the type of the entire expression is inferred from expr1 (where condition is true) or expr2 (where condition is false) in accordance with the rules above.

**–  **Otherwise, type of the ternary expression is a normalized union of the inferred types of expr1 and expr2. If type of an initializer expression cannot be inferred, then a compile-time error occurs.



1            _<font style="color:#40808F;">//  Get  boolean  value  unknown  at  compile  time</font>_

2            <font style="color:#007021;">function  </font>cond() <font style="color:#666666;">: </font><font style="color:#8F2100;">boolean  </font>{  <font style="color:#007021;">return  Math </font>.random()  <font style="color:#666666;"><  </font><font style="color:#21804F;">0.5  </font><font style="color:#666666;">?  </font>true  <font style="color:#666666;">:  </font><font style="color:#8F2100;">false </font>;  }

3

4           <font style="color:#007021;">let  </font>a  <font style="color:#666666;">= </font><font style="color:#007021;">null                               </font>_<font style="color:#40808F;">//  Type  of  'a '  is  null</font>_

5            <font style="color:#007021;">let  </font>aa  <font style="color:#666666;">= </font><font style="color:#007021;">undefined                   </font>_<font style="color:#40808F;">//  Type  of  'aa '  is  undefined</font>_

6           <font style="color:#007021;">let  </font>arr  <font style="color:#666666;">=  </font>[<font style="color:#007021;">null </font>, <font style="color:#007021;">undefined</font>]  _<font style="color:#40808F;">//  Type  of  'arr '  is  (null  |  undefined) []</font>_

7

8            <font style="color:#007021;">let  </font>b  <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font>1  <font style="color:#666666;">:  </font><font style="color:#8F2100;">2       </font>_<font style="color:#40808F;">//  Type  of  'b '  is  int</font>_

9

10            <font style="color:#007021;">let  </font>c  <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font>3  <font style="color:#666666;">:  </font><font style="color:#8F2100;">3.14  </font>_<font style="color:#40808F;">//  Type  of  'c '  is  int  |  double</font>_

11            <font style="color:#007021;">let  </font>c1  <font style="color:#666666;">=  </font><font style="color:#007021;">true  </font><font style="color:#666666;">?  </font>3  <font style="color:#666666;">:  </font><font style="color:#8F2100;">3.14    </font>_<font style="color:#40808F;">//  Type  of  'c1 '  is  int</font>_

12            <font style="color:#007021;">let  </font>c2  <font style="color:#666666;">=  </font><font style="color:#007021;">false  </font><font style="color:#666666;">?  </font>3  <font style="color:#666666;">:  </font><font style="color:#8F2100;">3.14  </font>_<font style="color:#40808F;">//  Type  of  'c1 '  is  double</font>_

13

14            <font style="color:#007021;">let  </font>d  <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font><font style="color:#4070A1;">"one"  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"two"  </font>_<font style="color:#40808F;">//  Type  of  'd '  is  string</font>_

15

16            <font style="color:#007021;">let  </font>e  <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font><font style="color:#21804F;">1  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"one"  </font>_<font style="color:#40808F;">//  Type  of  'e '  is  int  |  string</font>_

17            <font style="color:#007021;">let  </font>e1  <font style="color:#666666;">=  </font><font style="color:#007021;">true  </font><font style="color:#666666;">?  </font><font style="color:#21804F;">1  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"one"    </font>_<font style="color:#40808F;">//  Type  of  'e1 '  is  int</font>_

18            <font style="color:#007021;">let  </font>e2  <font style="color:#666666;">=  </font><font style="color:#007021;">false  </font><font style="color:#666666;">?  </font><font style="color:#21804F;">1  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"one"  </font>_<font style="color:#40808F;">//  Type  of  'e2 '  is  string</font>_

19

20            <font style="color:#007021;">const  </font>bb    <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font>1  <font style="color:#666666;">:  </font><font style="color:#8F2100;">2         </font>_<font style="color:#40808F;">//  Type  of  'bb '  is  int</font>_

21

22            <font style="color:#007021;">const  </font>cc    <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font>1  <font style="color:#666666;">:  </font><font style="color:#8F2100;">3.14    </font>_<font style="color:#40808F;">//  Type  of  'cc '  is  int  |  double</font>_

23            <font style="color:#007021;">const  </font>cc1  <font style="color:#666666;">=  </font><font style="color:#007021;">true     </font><font style="color:#666666;">?  </font>1  <font style="color:#666666;">:  </font><font style="color:#8F2100;">3.14    </font>_<font style="color:#40808F;">//  Type  of  'cc1 '  is  int</font>_

24            <font style="color:#007021;">const  </font>cc2  <font style="color:#666666;">=  </font><font style="color:#007021;">false    </font><font style="color:#666666;">?  </font>1  <font style="color:#666666;">:  </font><font style="color:#8F2100;">3.14    </font>_<font style="color:#40808F;">//  Type  of  'cc2 '  is  double</font>_

25

26            <font style="color:#007021;">const  </font>dd    <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font><font style="color:#4070A1;">"one"  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"two"  </font>_<font style="color:#40808F;">//  Type  of  'dd '    is  "one"  |  "two"</font>_

(continues on next page)









(continued from previous page)

27            <font style="color:#007021;">const  </font>dd1  <font style="color:#666666;">=  </font><font style="color:#007021;">true      </font><font style="color:#666666;">?  </font><font style="color:#4070A1;">"one"  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"two"  </font>_<font style="color:#40808F;">//  Type  of  'dd1 '  is  "one"</font>_

28            <font style="color:#007021;">const  </font>dd2  <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font><font style="color:#4070A1;">"one"  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"two"  </font>_<font style="color:#40808F;">//  Type  of  'dd2 '  is  "two"</font>_

29

30            <font style="color:#007021;">const  </font>ee  <font style="color:#666666;">=  </font>cond()  <font style="color:#666666;">?  </font><font style="color:#21804F;">1  </font><font style="color:#666666;">:  </font><font style="color:#4070A1;">"one"  </font>_<font style="color:#40808F;">//  Type  of  'ee '  is  int  |  "one"</font>_

31

32           <font style="color:#007021;">let  </font>f  <font style="color:#666666;">=  </font>{name <font style="color:#666666;">:  </font><font style="color:#4070A1;">"aa"</font>}  _<font style="color:#40808F;">// Compile-time  error,  type  of object  literal  is  not  inferred</font>_

33

34            <font style="color:#007021;">let     </font>x1  <font style="color:#666666;">=  </font><font style="color:#21804F;">1  </font>_<font style="color:#40808F;">//  Type  of  'x1 '  is  int</font>_

35            <font style="color:#007021;">const  </font>x2  <font style="color:#666666;">=  </font><font style="color:#21804F;">1  </font>_<font style="color:#40808F;">//  Type  of  'x2 '  is  int</font>_

36

37            <font style="color:#007021;">let     </font>s1  <font style="color:#666666;">=  </font><font style="color:#4070A1;">"1"  </font>_<font style="color:#40808F;">//  Type  of  's1 '  is  string</font>_

38            <font style="color:#007021;">const  </font>s2  <font style="color:#666666;">=  </font><font style="color:#4070A1;">"1"  </font>_<font style="color:#40808F;">//  Type  of  's2 '  is  "1"</font>_





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

The presence of an initializer for _<font style="color:#355F7C;">Ambient Constant or Variable Declarations</font>_causes a compile-time error.











**<font style="color:#20435C;">4.7  Function Declarations</font>**

_Function declarations _specify names, signatures, and bodies when introducing _named functions_. An optional function body is a block (see _<font style="color:#355F7C;">Block</font>_).

The syntax of _function declarations _is presented below:



<font style="color:#0D85B5;">functionDeclaration </font>:

<font style="color:#0D85B5;">modifiers</font>?  '<font style="color:#0D85B5;">function </font>'  <font style="color:#0D85B5;">identifier typeParameters</font>?  <font style="color:#0D85B5;">signature block</font>?

_<font style="color:#40808F;">;</font>_

<font style="color:#0D85B5;">modifiers </font>:

'<font style="color:#0D85B5;">native </font>'  |   '<font style="color:#0D85B5;">async </font>'

_<font style="color:#40808F;">;</font>_

Functions must be declared on the top level (see _<font style="color:#355F7C;">Top-Level Statements</font>_).

If a function is declared _generic _(see_<font style="color:#355F7C;">Generics</font>_), then its type parameters must be specified.

The modifier native indicates that the function is a _native function _(see _<font style="color:#355F7C;">Native Functions</font>_in Experimental Features). If a _native function _has a body, then a compile-time error occurs.

Functions with the modifier async are discussed in _<font style="color:#355F7C;">Asynchronous Functions</font>_.





**<font style="color:#20435C;">4.7.1 Signatures</font>**

A signature defines parameters and the return type (see [_<font style="color:#355F7C;">Return Type</font>_](#bookmark15)) of a function, method, or constructor. The syntax of _signature _is presented below:



<font style="color:#0D85B5;">signature </font>:

' ( '  <font style="color:#0D85B5;">parameterList</font>?  ') '  <font style="color:#0D85B5;">returnType</font>?

_<font style="color:#40808F;">;</font>_











**<font style="color:#20435C;">4.7.2  Parameter List</font>**

A signature can contain a _parameter list _that specifies an identifier of each parameter name, and the type of each parameter. The type of each parameter must be defined explicitly. If the _parameter list _is omitted, then the function or the method has no parameters.

The syntax of _parameter list _is presented below:



<font style="color:#0D85B5;">parameterList </font>:

<font style="color:#0D85B5;">parameter  </font>( ' , '  <font style="color:#0D85B5;">parameter</font>)<font style="color:#666666;">*  </font>( ' , '  <font style="color:#0D85B5;">restParameter</font>)?  ' , '?

|  <font style="color:#0D85B5;">restParameter  </font>' , '?

_<font style="color:#40808F;">;</font>_

<font style="color:#0D85B5;">parameter </font>:

<font style="color:#0D85B5;">annotationUsage</font>?  (<font style="color:#0D85B5;">requiredParameter  </font>|  <font style="color:#0D85B5;">optionalParameter</font>)

_<font style="color:#40808F;">;</font>_



<font style="color:#0D85B5;">requiredParameter </font>:

<font style="color:#0D85B5;">identifier  </font>' : '  <font style="color:#0D85B5;">type</font>

_<font style="color:#40808F;">;</font>_

<font style="color:#0D85B5;">optionalParameter </font>:

<font style="color:#0D85B5;">identifier  </font>' : '  <font style="color:#0D85B5;">type  </font>'<font style="color:#666666;">= </font>'  <font style="color:#0D85B5;">expression</font>

|   <font style="color:#0D85B5;">identifier  </font>'? '  ' : '  <font style="color:#0D85B5;">type</font>

_<font style="color:#40808F;">;</font>_

If a parameter is _required_, then each function or method call must contain an argument corresponding to that parameter. [_<font style="color:#355F7C;">Optional Parameters</font>_](#bookmark16)_<font style="color:#355F7C;"> </font>_are described in a separate section. The function below has _required parameters_:



1             <font style="color:#007021;">function  </font>power(base <font style="color:#666666;">: </font><font style="color:#8F2100;">number </font>,  exponent <font style="color:#666666;">:  </font><font style="color:#8F2100;">number</font>) <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{

2                    <font style="color:#007021;">return  Math </font>.pow(base,  exponent) 3              }

4            power(<font style="color:#21804F;">2 </font>,  <font style="color:#21804F;">3</font>)  _<font style="color:#40808F;">// both  arguments  are  required  in  the  call</font>_

Several parameters can be _optional_, allowing to omit corresponding arguments in a call (see[_<font style="color:#355F7C;">Optional Parameters</font>_](#bookmark16)). A compile-time error occurs if an _optional parameter _precedes a _required parameter_.

The last parameter of a function or a method can be a single _rest parameter _(see [_<font style="color:#355F7C;">Rest Parameter</font>_](#bookmark17)).

If a parameter type is prefixed with readonly, then there are additional restrictions on the parameter as described in [_<font style="color:#355F7C;">Readonly Parameters</font>_](#bookmark18).











**<font style="color:#20435C;">4.7.3  Readonly Parameters</font>**

If the parameter type is readonly array or tuple type, then no assignment and no function or method call can modify elements of this array or tuple. Otherwise, a compile-time error occurs:

1            <font style="color:#007021;">function  </font>foo(array <font style="color:#666666;">:  </font><font style="color:#8F2100;">readonly number </font>[] ,  tuple <font style="color:#666666;">:  </font><font style="color:#8F2100;">readonly  </font>[<font style="color:#8F2100;">number </font>,  <font style="color:#8F2100;">string</font>])  {

2                           <font style="color:#007021;">let  </font>element  <font style="color:#666666;">=  </font>array [[<font style="color:#21804F;">0</font>](#bookmark19)]  _<font style="color:#40808F;">// OK,  one  can  get  array  element</font>_

3                              array [[<font style="color:#21804F;">0</font>](#bookmark20)]  <font style="color:#666666;">=  </font>element  _<font style="color:#40808F;">// Compile-time  error,  array  is  readonly</font>_

4

5                           element  <font style="color:#666666;">=  </font>tuple [[<font style="color:#21804F;">0</font>](#bookmark21)]  _<font style="color:#40808F;">// OK,  one  can  get  tuple  element</font>_

6                              tuple [[<font style="color:#21804F;">0</font>](#bookmark22)]  <font style="color:#666666;">=  </font>element  _<font style="color:#40808F;">// Compile-time  error,  tuple  is  readonly </font>_7              }



Any assignment of readonly parameters and variables must follow the limitations stated in _<font style="color:#355F7C;">Type of Expression</font>_.









**<font style="color:#20435C;">4.7.4  Optional Parameters</font>**

_Optional parameters _can be of two forms as follows:



<font style="color:#0D85B5;">optionalParameter </font>:

<font style="color:#0D85B5;">identifier  </font>' : '  <font style="color:#0D85B5;">type  </font>'<font style="color:#666666;">= </font>'  <font style="color:#0D85B5;">expression </font>|   <font style="color:#0D85B5;">identifier  </font>'? '  ' : '  <font style="color:#0D85B5;">type</font>

_<font style="color:#40808F;">;</font>_

The first form contains an expression that specifies a _default value_. It is called _parameter with default value_, and acts as an optional parameter of the type of a function and ofits call sites. If a corresponding argument value is undefined (i.e., a parameter is omitted, or undefined is passed explicitly), then the default value is used:



1            <font style="color:#007021;">function  </font>pair(x <font style="color:#666666;">:  </font><font style="color:#8F2100;">number </font>,  y <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">7</font>) 2              {

3                              console.log(x,  y) 4              }

5             pair(<font style="color:#21804F;">1 </font>,  <font style="color:#21804F;">2</font>)  _<font style="color:#40808F;">// prints:  1  2</font>_

6          pair(<font style="color:#21804F;">1</font>)  _<font style="color:#40808F;">// prints:  1  7</font>_

7           pair(<font style="color:#21804F;">1 </font>, <font style="color:#007021;">undefined</font>)  _<font style="color:#40808F;">// prints:  1  7</font>_





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

_undefined _passed as an argument does not afect the _type _of the parameter in a function, a method, or a constructor body.

The second form is a short-cut notation and identifier  '? '  ' : '    type efectively means that identifier has type T  |  undefined with the default value undefined.

For example, the following two functions can be used in the same way:









1            <font style="color:#007021;">function  </font>hello1(name <font style="color:#666666;">:  </font><font style="color:#8F2100;">string  </font><font style="color:#666666;">|  </font><font style="color:#007021;">undefined  </font><font style="color:#666666;">=  </font><font style="color:#007021;">undefined</font>)  {}

2           <font style="color:#007021;">function  </font>hello2(name? <font style="color:#666666;">:  </font><font style="color:#8F2100;">string</font>)  {}

3

4            hello1()  _<font style="color:#40808F;">//  'name ' has  'undefined '  value</font>_

5            hello1(<font style="color:#4070A1;">"John"</font>)  _<font style="color:#40808F;">//  'name ' has  a  string  value</font>_

6            hello2()  _<font style="color:#40808F;">//  'name ' has  'undefined '  value</font>_

7            hello2(<font style="color:#4070A1;">"John"</font>)  _<font style="color:#40808F;">//  'name ' has  a  string  value</font>_

8

9            <font style="color:#007021;">function  </font>foo1  (p? <font style="color:#666666;">: </font><font style="color:#8F2100;">number</font>)  {}

10            <font style="color:#007021;">function  </font>foo2  (p <font style="color:#666666;">:  </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">|  </font><font style="color:#007021;">undefined  </font><font style="color:#666666;">=  </font><font style="color:#007021;">undefined</font>)  {}

11

12            foo1()    _<font style="color:#40808F;">//  'p ' has  'undefined '  value</font>_

13              foo1(<font style="color:#21804F;">5</font>)  _<font style="color:#40808F;">//  'p ' has  a  numeric  value</font>_

14            foo2()    _<font style="color:#40808F;">//  'p ' has  'undefined '  value</font>_

15              foo2(<font style="color:#21804F;">5</font>)  _<font style="color:#40808F;">//  'p ' has  a  numeric  value</font>_











**<font style="color:#20435C;">4.7.5  Rest Parameter</font>**

_Rest parameters _allow functions, methods, constructors, or lambdas to take arbitrary numbers of arguments.  _Rest parameters _have the spread operator  ' ... ' as a prefix before the parameter name.





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

The spread operator ' ... ' is also used as a prefix in _spread expressions _in ArkTS. The concepts _rest parameter _and _spread expression _are syntactically similar as a result.  The diference between the two is clarified in _<font style="color:#355F7C;">Spread Expression</font>_.



The syntax of _rest parameter _is presented below:



<font style="color:#0D85B5;">restParameter </font>:

<font style="color:#0D85B5;">annotationUsage</font>?  ' ... '  <font style="color:#0D85B5;">identifier  </font>' : '  <font style="color:#0D85B5;">type</font>

_<font style="color:#40808F;">;</font>_

A compile-time error occurs if a _rest parameter_:

•  Is followed by a parameter, which is not a _rest parameter _;

•  Has a type that is not an array type, a tuple type, nor a type parameter constrained by an array or a tuple type.

A call of entity with a _rest parameter _of array type T [] (or FixedArray<T>) can accept any number of arguments of types that are assignable (see _<font style="color:#355F7C;">Assignability</font>_) to T:



1             <font style="color:#007021;">function  </font>sum( <u>     </u> numbers <font style="color:#666666;">:  </font><font style="color:#8F2100;">number </font>[]) <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{

2                   <font style="color:#007021;">let  </font>res  <font style="color:#666666;">=  </font><font style="color:#21804F;">0</font>

3                   <font style="color:#007021;">for  </font>(<font style="color:#007021;">let  </font>n  <font style="color:#007021;">of  </font>numbers)

4                              res  <font style="color:#666666;">+=  </font>n

5                      <font style="color:#007021;">return  </font>res 6              }

7

(continues on next page)





(continued from previous page)

8              sum()  _<font style="color:#40808F;">// returns  0</font>_

9            sum(<font style="color:#21804F;">1</font>)  _<font style="color:#40808F;">// returns  1</font>_

10            sum(<font style="color:#21804F;">1 </font>,  <font style="color:#21804F;">2 </font>,  <font style="color:#21804F;">3</font>)  _<font style="color:#40808F;">// returns  6</font>_



If an argument of array type T [] is to be passed to a call of entity with the _rest parameter_, then the spread expression (see _<font style="color:#355F7C;">Spread Expression</font>_) must be used with the spread operator  ' ... ' as a prefix before the array argument:

1             <font style="color:#007021;">function  </font>sum( <u>     </u> numbers <font style="color:#666666;">:  </font><font style="color:#8F2100;">number </font>[]) <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{

2                   <font style="color:#007021;">let  </font>res  <font style="color:#666666;">=  </font><font style="color:#21804F;">0</font>

3                   <font style="color:#007021;">for  </font>(<font style="color:#007021;">let  </font>n  <font style="color:#007021;">of  </font>numbers)

4                              res  <font style="color:#666666;">+=  </font>n

5                      <font style="color:#007021;">return  </font>res 6              }

7

8              <font style="color:#007021;">let  </font>x<font style="color:#666666;">: </font><font style="color:#8F2100;">number </font>[]  <font style="color:#666666;">=  </font>[ [<font style="color:#21804F;">1</font>](#bookmark23)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">2</font>](#bookmark24)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">3</font>](#bookmark25)]

9              sum( . . .x)  _<font style="color:#40808F;">// spread  an  array  'x '</font>_

10                          _<font style="color:#40808F;">// returns  6</font>_

A call of entity with a _rest parameter _of tuple type  [T1   ,   . . . ,  Tn ] can accept only n arguments of types that are assignable (see _<font style="color:#355F7C;">Assignability</font>_) to the corresponding Ti:

1             <font style="color:#007021;">function  </font>sum( <u>     </u> numbers <font style="color:#666666;">:   </font>[<font style="color:#8F2100;">number </font>, <font style="color:#8F2100;">number </font>, <font style="color:#8F2100;">number</font>]) <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{

2                    <font style="color:#007021;">return  </font>numbers [[<font style="color:#21804F;">0</font>](#bookmark26)]  <font style="color:#666666;">+  </font>numbers [ [<font style="color:#21804F;">1</font>](#bookmark27)]  <font style="color:#666666;">+  </font>numbers [[<font style="color:#21804F;">2</font>](#bookmark28)] 3              }

4

5            sum()                 _<font style="color:#40808F;">//  Compile-time  error,  wrong  number  of arguments,  0  instead  of 3</font>_

6            sum(<font style="color:#21804F;">1</font>)                _<font style="color:#40808F;">// Compile-time  error,  wrong  number  of arguments,  1  instead  of 3</font>_

7            sum(<font style="color:#21804F;">1 </font>,  <font style="color:#21804F;">2 </font>,  <font style="color:#4070A1;">"a"</font>)  _<font style="color:#40808F;">// Compile-time  error,  wrong  type  of  the  3rd  argument</font>_

8            sum(<font style="color:#21804F;">1 </font>,  <font style="color:#21804F;">2 </font>,  <font style="color:#21804F;">3</font>)     _<font style="color:#40808F;">// returns  6</font>_



It is legal though meaningless to declare a function with an optional parameter followed by a _rest parameter _of a tuple type. However, using such a function without explicitly set optional and _rest parameters _causes compile-time error:

1           _<font style="color:#40808F;">// optional  tuple  +  rest  tuple</font>_

2           <font style="color:#007021;">function  </font>g(opt<font style="color:#666666;">? :  </font>[<font style="color:#8F2100;">number </font>,  <font style="color:#8F2100;">string</font>],  . . .tail <font style="color:#666666;">:  </font>[<font style="color:#8F2100;">number </font>,<font style="color:#8F2100;">string</font>])  {  _<font style="color:#40808F;">// OK </font>_3                          _<font style="color:#40808F;">//  </font>__<u><font style="color:#40808F;">      </font></u>_

4              }

5

6           g()  _<font style="color:#40808F;">// Compile-time  error,  no  rest  tuple</font>_

7           g([<font style="color:#21804F;">1 </font>,  <font style="color:#4070A1;">"str"</font>])  _<font style="color:#40808F;">// Compile-time  error,  no  rest  tuple</font>_

8              g([  <font style="color:#21804F;">1 </font>,  <font style="color:#4070A1;">"str"</font>],  <font style="color:#21804F;">1 </font>,  <font style="color:#4070A1;">"str"</font>)  _<font style="color:#40808F;">// OK</font>_



If an argument of tuple type [T1   ,   . . . ,  Tn ] is to be passed to a call of entity with the rest parameter, then a spread expression (see _<font style="color:#355F7C;">Spread Expression</font>_) must have the spread operator  ' ... ' as a prefix before the tuple argument:

1             <font style="color:#007021;">function  </font>sum( <u>     </u> numbers <font style="color:#666666;">:   </font>[<font style="color:#8F2100;">number </font>, <font style="color:#8F2100;">number </font>, <font style="color:#8F2100;">number</font>]) <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{

2                    <font style="color:#007021;">return  </font>numbers [[<font style="color:#21804F;">0</font>](#bookmark29)]  <font style="color:#666666;">+  </font>numbers [ [<font style="color:#21804F;">1</font>](#bookmark30)]  <font style="color:#666666;">+  </font>numbers [[<font style="color:#21804F;">2</font>](#bookmark31)] 3              }

4

5             <font style="color:#007021;">let  </font>x<font style="color:#666666;">:  </font>[<font style="color:#8F2100;">number </font>, <font style="color:#8F2100;">number </font>, <font style="color:#8F2100;">number</font>]  <font style="color:#666666;">=  </font>[ [<font style="color:#21804F;">1</font>](#bookmark32)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">2</font>](#bookmark33)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">3</font>](#bookmark34)]

6            sum( . . .x)  _<font style="color:#40808F;">// spread  tuple  'x '</font>_

7                          _<font style="color:#40808F;">// returns  6</font>_

If an argument of fixed-size array type FixedArray<T> istobe passed to a function or a method with the rest parameter,





then the spread expression (see _<font style="color:#355F7C;">Spread Expression</font>_) must be used with the spread operator  ' ... ' as a prefix before the fixed-size array argument:

1             <font style="color:#007021;">function  </font>sum( <u>     </u> numbers <font style="color:#666666;">:  </font><font style="color:#8F2100;">Array</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">></font>) <font style="color:#666666;">:  </font><font style="color:#8F2100;">number  </font>{

2                   <font style="color:#007021;">let  </font>res  <font style="color:#666666;">=  </font><font style="color:#21804F;">0</font>

3                   <font style="color:#007021;">for  </font>(<font style="color:#007021;">let  </font>n  <font style="color:#007021;">of  </font>numbers)

4                              res  <font style="color:#666666;">+=  </font>n

5                      <font style="color:#007021;">return  </font>res 6              }

7

8             <font style="color:#007021;">let  </font>x<font style="color:#666666;">:  </font><font style="color:#8F2100;">FixedArray</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">>  =  </font>[ [<font style="color:#21804F;">1</font>](#bookmark35)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">2</font>](#bookmark36)<font style="color:#21804F;"> </font>,  [<font style="color:#21804F;">3</font>](#bookmark37)]

9            sum( . . .x)  _<font style="color:#40808F;">// spread  an  fixed-size  array  'x '</font>_

10                          _<font style="color:#40808F;">// returns  6</font>_

If constrained by an array or a tuple type, a type parameter can be used with generics as a _rest parameter_.

1             <font style="color:#007021;">function  </font>sum<font style="color:#666666;"><</font>T  <font style="color:#007021;">extends  Array</font><font style="color:#666666;"><</font><font style="color:#8F2100;">number</font><font style="color:#666666;">>></font>( <u>     </u> numbers <font style="color:#666666;">:  </font><font style="color:#8F2100;">T</font>) <font style="color:#666666;">:  </font><font style="color:#8F2100;">number  </font>{

2                   <font style="color:#007021;">let  </font>res  <font style="color:#666666;">=  </font><font style="color:#21804F;">0</font>

3                   <font style="color:#007021;">for  </font>(<font style="color:#007021;">let  </font>n  <font style="color:#007021;">of  </font>numbers)

4                              res  <font style="color:#666666;">+=  </font>n

5                      <font style="color:#007021;">return  </font>res 6              }





<font style="color:#145DEA;">	.  </font>**Note                                                                                                                                                                  **

Any call to a function, method, constructor, or lambda with a rest parameter implies that a new array or tuple is created from the arguments provided.





1            <font style="color:#007021;">function  </font>rest_array( <u>     </u> array_parameter <font style="color:#666666;">: </font><font style="color:#8F2100;">number </font>[])  {

2                       _<font style="color:#40808F;">//  array_parameter  is  a  new array  created  from  the  arguments passed</font>_

3                        array_parameter [[<font style="color:#21804F;">0</font>](#bookmark38)]  <font style="color:#666666;">=  </font><font style="color:#21804F;">1234</font>

4                          console.log  (array_parameter [[<font style="color:#21804F;">0</font>](#bookmark39)])  _<font style="color:#40808F;">//  1234  is  the  output</font>_

5              }

6           <font style="color:#007021;">function  </font>rest_tuple( . . .tuple_parameter <font style="color:#666666;">:  </font>[<font style="color:#8F2100;">number </font>,  <font style="color:#8F2100;">string</font>])  {

7                       _<font style="color:#40808F;">//  tuple_parameter  is  a  new  tuple  created  from  the  arguments passed</font>_

8                        tuple_parameter [[<font style="color:#21804F;">0</font>](#bookmark40)]  <font style="color:#666666;">=  </font><font style="color:#21804F;">1234</font>

9                          console.log  (tuple_parameter [[<font style="color:#21804F;">0</font>](#bookmark41)])  _<font style="color:#40808F;">//  1234  is  the  output</font>_

10              }

11

12             <font style="color:#007021;">const  </font>array_argument <font style="color:#666666;">: </font><font style="color:#8F2100;">number </font>[]  <font style="color:#666666;">=    </font>[ [<font style="color:#21804F;">1</font>](#bookmark42)<font style="color:#21804F;"> </font>,[<font style="color:#21804F;">2</font>](#bookmark43)<font style="color:#21804F;"> </font>,[<font style="color:#21804F;">3</font>](#bookmark44)<font style="color:#21804F;"> </font>,[<font style="color:#21804F;">4</font>](#bookmark45)]

13            <font style="color:#007021;">const  </font>tuple_argument <font style="color:#666666;">:  </font>[<font style="color:#8F2100;">number </font>,  <font style="color:#8F2100;">string</font>]  <font style="color:#666666;">=    </font>[<font style="color:#21804F;">1 </font>,<font style="color:#4070A1;">"234"</font>]

14

15            console.log  (array_argument [[<font style="color:#21804F;">0</font>](#bookmark46)] ,  tuple_argument [[<font style="color:#21804F;">0</font>](#bookmark46)])  _<font style="color:#40808F;">//  1  1  is  the  output </font>_16

17            rest_array  ( . . .array_argument)

18                                  _<font style="color:#40808F;">// array_argument  is  spread  into  a  sequence  of its  elements</font>_

19

20              rest_tuple  ( . . .tuple_argument)

21                                  _<font style="color:#40808F;">//  tuple_argument  is  spread  into  a  sequence  of its  elements</font>_

22

23            console.log  (array_argument [[<font style="color:#21804F;">0</font>](#bookmark47)] ,  tuple_argument [[<font style="color:#21804F;">0</font>](#bookmark47)])  _<font style="color:#40808F;">//  1  1  is  the  output</font>_











**<font style="color:#20435C;">4.7.6 Shadowing by Parameter</font>**

If the name of a parameter is identical to the name of a top-level variable accessible (see [_<font style="color:#355F7C;">Accessible</font>_](#bookmark7)) within the body of a function or a method with that parameter, then the name of the parameter shadows the name of the top-level variable within the body of that function or method:



1             <font style="color:#007021;">let  </font>x<font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font><font style="color:#666666;">=  </font><font style="color:#21804F;">1</font>

2           <font style="color:#007021;">function  </font>foo  (x <font style="color:#666666;">:  </font><font style="color:#8F2100;">string</font>)  {

3                              _<font style="color:#40808F;">//  'x '  refers  to  the parameter  and has  type  string </font>_4              }

5             <font style="color:#007021;">class  </font>SomeClass  {

6                    method  (x <font style="color:#666666;">: </font><font style="color:#8F2100;">boolean</font>)  {

7                           _<font style="color:#40808F;">//  'x '  refers  to  the  method parameter  and  has  type  boolean </font>_8                      }

9              }

10              x<font style="color:#666666;">++  </font>_<font style="color:#40808F;">//  'x '  refers  to  the  global  variable</font>_











**<font style="color:#20435C;">4.7.7  Return Type</font>**

A function, a method, or a lambda return type defines the resultant type of the function, method, or lambda execution (see _<font style="color:#355F7C;">Function Call Expression</font>_, _<font style="color:#355F7C;">Method Call Expression</font>_, and _<font style="color:#355F7C;">Lambda Expressions</font>_). During the execution, the function, method, or lambda can produce a value of a type that is assignable to the return type (see _<font style="color:#355F7C;">Assignability</font>_).

The syntax of _return type _is presented below:



<font style="color:#0D85B5;">returnType </font>:

' : '  (<font style="color:#0D85B5;">type  </font>|   '<font style="color:#0D85B5;">this </font>')

_<font style="color:#40808F;">;</font>_

If a function, a method, or a lambda return type is other than void or undefined (see _<font style="color:#355F7C;">Type void or undefined</font>_), or than a union type containing void or undefined, and the execution path in the function, method, or lambda body has neither a return statement (see _<font style="color:#355F7C;">return Statements</font>_) nor a throw statement (see_<font style="color:#355F7C;">throw Statements</font>_), then a compile-time error occurs.

If a function, a method, or a lambda return type is never (see _<font style="color:#355F7C;">Type never</font>_), and there is an execution path in which all statements execute normally (see _<font style="color:#355F7C;">Normal and Abrupt Statement Execution</font>_), then a compile-time error occurs.

A special form of return type with the keyword this as type annotation can be used in class instance methods only (see _<font style="color:#355F7C;">Methods Returning this</font>_).

If a function, a method, or a lambda return type is not specified, then it is inferred from its body (see _<font style="color:#355F7C;">Return Type Inference</font>_). If there is no body, then the function, method, or lambda return type is void (see_<font style="color:#355F7C;">Type void or undefined</font>_).



1            <font style="color:#007021;">function  </font>foo1  () <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>{}   _<font style="color:#40808F;">// Compile-time  error,  return  or  throw missing</font>_

2            <font style="color:#007021;">let  </font>foo2  <font style="color:#666666;">=    </font>() <font style="color:#666666;">: </font><font style="color:#8F2100;">number  </font>=>  {}  _<font style="color:#40808F;">// Compile-time  error,  return  or  throw missing</font>_

3

4            <font style="color:#007021;">function  </font>foo3  () <font style="color:#666666;">: </font><font style="color:#007021;">undefined  </font>{}   _<font style="color:#40808F;">// OK,  it  returns  'undefined '  value</font>_

5            <font style="color:#007021;">let  </font>foo4  <font style="color:#666666;">=    </font>() <font style="color:#666666;">: </font><font style="color:#007021;">undefined  </font>=>  {}  _<font style="color:#40808F;">// OK,  it  returns  'undefined '  value</font>_

6

(continues on next page)









(continued from previous page)

7            <font style="color:#007021;">function  </font>foo5 () <font style="color:#666666;">: </font>never {}  _<font style="color:#40808F;">//  Compile-time  error,  no  throw  or return  never  type</font>_<font style="color:#FF0000;">␣ </font>_<font style="color:#FF0000;">˓→</font>__<font style="color:#40808F;">function  call</font>_

8            <font style="color:#007021;">let  </font>foo6 <font style="color:#666666;">=  </font>() <font style="color:#666666;">: </font>never => {} _<font style="color:#40808F;">//  Compile-time  error,  no  throw  or return  never  type</font>_<font style="color:#FF0000;">␣ </font>_<font style="color:#FF0000;">˓→</font>__<font style="color:#40808F;">function  call</font>_

9

10            <font style="color:#007021;">function  </font>foo7 () <font style="color:#666666;">: </font><font style="color:#007021;">void  </font>{}  _<font style="color:#40808F;">// OK,  it  returns  undefined  value</font>_

11            <font style="color:#007021;">let  </font>foo8 <font style="color:#666666;">=  </font>() <font style="color:#666666;">: </font><font style="color:#007021;">void  </font>=> {} _<font style="color:#40808F;">// OK,  it  returns  undefined  value</font>_

12

13            <font style="color:#007021;">function  </font>foo9 () {}   _<font style="color:#40808F;">// OK,  return  type  is  void  and  return  value  is  'undefined '</font>_

14            <font style="color:#007021;">let  </font>foo10 <font style="color:#666666;">=  </font>() => {} _<font style="color:#40808F;">// OK,  return  type  is  void  and  return  value  is  'undefined '</font>_

