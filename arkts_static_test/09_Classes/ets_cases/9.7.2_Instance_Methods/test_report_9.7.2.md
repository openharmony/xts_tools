# 9.7.2 实例方法 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `09_Classes/run_classes_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（7/7 通过）

全部7个正向用例编译通过，覆盖以下场景：

- **CLS_09_07_004_PASS_INSTANCE_METHOD_BASIC** -- 实例方法基本用法：声明并调用实例方法，验证`this`引用、`implements`接口方法实现、子类`override`重写超类方法、以及类自身新增方法。
- **CLS_09_07_015_PASS_INSTANCE_METHOD_THIS_FIELDS** -- 实例方法通过`this`访问实例字段：涵盖读取（`getValue`）、赋值（`setValue`）、复合赋值（`increment`）、多字段组合访问（`summary`）及条件表达式中的字段引用（`isPositive`）。
- **CLS_09_07_016_PASS_INSTANCE_METHOD_INTERFACE_IMPL** -- 实例方法实现多个接口的方法：`Circle016`同时`implements Shape016`和`Labeled016`，实例方法为两个接口的所有方法提供具体实现（`area`、`perimeter`、`scale`、`getLabel`、`setLabel`），并包含额外的`diameter`方法。
- **CLS_09_07_018_PASS_INSTANCE_METHOD_COMPLEX_PARAMS** -- 实例方法接收复杂参数类型：数组参数（`processNumbers`、`prefixAll`）、联合类型参数（`setLabel: string | null`）、可选参数（`addBonus`）、布尔类型参数控制流，以及多类型参数组合（`compute: int, double, string`），两个类均通过`this`维护内部状态。
- **CLS_09_07_018_PASS_INSTANCE_OVERRIDE_INTERFACE** -- 实例方法实现接口方法的精简版用例：`HelloGreeter implements Greeter`，`greet()`方法返回`"hello"`。
- **CLS_09_07_019_PASS_INSTANCE_METHOD_PARAM_SHADOW** -- 参数名与实例字段名相同时的类型遮蔽：`setValue(_value)`中参数`_value`遮蔽字段`this._value`，编译器正确区分参数（裸名引用）与字段（`this.field`引用）。`ShadowTest019`和`Calculator019`两个类覆盖读取、写入、比较和条件判断等场景。
- **CLS_09_07_030_PASS_INSTANCE_ACCESS_THIS** -- 实例方法通过`this`访问实例字段的最简用例：`Acc`类包含`val`字段和`getVal()`方法，验证`this.val`的正确解析。

### compile-fail（2/2 通过）

全部2个反向用例编译失败，编译器正确检测到预期错误：

- **CLS_09_07_020_FAIL_INSTANCE_METHOD_DUP_SIG** -- 实例方法签名冲突：类`DuplicateMethod020`中两次声明`process(value: int): int`（同名称、同参数类型列表），以及两次声明`processStr(value: string): string`；类`DuplicateMethodNoParam020`中两次声明`getData(): int`（无参数的同名方法）。编译器正确报告方法重复定义错误，拒绝ArkTS不支持方法重载的写法。
- **CLS_09_07_048_FAIL_METHOD_NAME_CONFLICT** -- 方法名冲突：类`Bad048`中`work()`声明为`void`返回类型后又声明为`int`返回类型，编译器正确识别为同名方法冲突并报告编译错误。

### runtime（3/3 — ark VM 真实执行 + assert）

全部3个运行时用例在ark VM上真实执行并通过所有断言：

- **CLS_09_07_017_RUNTIME_INSTANCE_METHOD_CALLS** -- 实例方法调用行为验证：`BankAccount017`类通过对象引用调用`deposit`、`withdraw`、`transferTo`等实例方法，验证方法分派正确性、`this`绑定到正确对象、字段状态在方法调用后正确变化（存取款和转账场景），以及转账资金不足时返回`false`且余额不变。
- **CLS_09_07_034_RUNTIME_INSTANCE_THIS_FIELD** -- 实例方法通过`this`读写字段：`C34`类调用`setVal(77)`后`getVal()`返回`77`，验证`this.val`赋值与读取的运行时正确性。
- **CLS_09_07_049_RUNTIME_OVERRIDE_CHAIN** -- 多级继承链实例方法重写：`Base049` -> `Mid049` -> `Derived049`三级继承链中每级均`override val()`并通过`super.val()`调用上级实现，最终`Derived049`实例的`val()`返回`3`，验证`super`调用链和`override`运行时分派正确性。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.2_Instance_Methods" bash run_classes_cases_wsl.sh
```
