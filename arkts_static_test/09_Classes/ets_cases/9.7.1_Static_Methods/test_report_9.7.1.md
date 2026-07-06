# 9.7.1 静态方法 - 测试执行报告

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
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **18** | **18** | **0** | **100%** |

**一次通过率：100%**（本次执行无任何用例失败）

---

## 详细执行结果

### compile-pass（3/3 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_STATIC_METHOD_BASIC | 静态方法基本用法：static方法声明、static getter/setter、static字段访问，通过类名限定调用 | PASS |
| 004 | PASS_STATIC_METHOD_ACCESS_PROTECTED_PRIVATE | 静态方法内通过参数或局部变量访问同类型对象的protected/private成员，派生类静态方法访问基类protected字段 | PASS |
| 040 | PASS_STATIC_MULTI_PARAM | 静态方法支持多参数声明（sum3三参数求和、max两参数比较） | PASS |

### compile-fail（10/10 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 002 | FAIL_STATIC_ABSTRACT_THIS | static与abstract修饰符组合导致编译错误；静态方法中使用this导致编译错误 | PASS |
| 005 | FAIL_STATIC_METHOD_THIS_KEYWORD | 静态方法内使用this引用实例字段（this.x、this.y）导致编译错误 | PASS |
| 006 | FAIL_STATIC_METHOD_SUPER_KEYWORD | 静态方法内使用super调用父类方法（super.foo()）或访问父类字段（super.x）导致编译错误 | PASS |
| 007 | FAIL_STATIC_METHOD_TYPE_PARAMETER | 静态方法的方法签名或方法体中使用外围类泛型参数T作为返回类型、参数类型或局部变量类型导致编译错误 | PASS |
| 009 | FAIL_STATIC_METHOD_OVERRIDE_MODIFIER | static方法与override修饰符同时使用导致编译错误（静态方法不参与重写机制） | PASS |
| 010 | FAIL_STATIC_METHOD_CALLED_ON_INSTANCE | 通过实例对象调用静态方法（obj.getClassName()、obj.compute()）导致编译错误 | PASS |
| 017 | FAIL_STATIC_OVERRIDE | static方法不能与override组合（简化验证：static override foo()） | PASS |
| 022 | FAIL_STATIC_WITH_ABSTRACT | static不能与abstract组合（简化验证：abstract static foo()） | PASS |
| 028 | FAIL_STATIC_THIS | static方法不能使用this关键字（简化验证：static foo()内let x = this） | PASS |
| 029 | FAIL_STATIC_SUPER | static方法不能使用super关键字（简化验证：static foo()内super.toString()） | PASS |

### runtime（5/5 — ark VM 真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 003 | RUNTIME_STATIC_METHOD_CALL | 静态方法通过类名调用，私有静态字段递增/重置/读取，派生类通过基类名间接访问基类静态字段 | 3 | PASS |
| 008 | RUNTIME_STATIC_METHOD_NOT_INHERITED | 静态方法不被继承：派生类同名静态方法独立存在，Base008.baseOnly()与Derived008.baseOnly()分别返回不同字符串 | 6 | PASS |
| 021 | RUNTIME_STATIC_ACCESS_PROTECTED | static方法访问protected static字段，通过Container.getVal()验证返回值正确 | 1 | PASS |
| 038 | RUNTIME_STATIC_FACTORY | 静态工厂方法模式：private constructor配合static create()返回新实例 | 0 | PASS |
| 041 | RUNTIME_STATIC_CALC | 静态方法实现阶乘计算（Calc041.fact(5)），验证计算结果为120 | 1 | PASS |

---

## 执行过程异常

**本次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.1_Static_Methods" bash run_classes_cases_wsl.sh
```
