# 9.10 继承 - 测试执行报告

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
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 14 | 14 | 0 | 100% |
| runtime（真实执行） | 15 | 15 | 0 | 100% |
| **总计** | **41** | **41** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（12个，001~004 + 013~016 + 020 + 026）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_10_001_PASS_BASIC_INHERITANCE | 子类继承父类所有非静态可访问成员（public/protected）并可新增自有成员 | PASS |
| 002 | CLS_09_10_002_PASS_MULTI_LEVEL_INHERITANCE | 多层继承链：祖父类→父类→子类，子类继承所有祖先的非静态可访问成员 | PASS |
| 003 | CLS_09_10_003_PASS_OVERRIDE_COMPATIBLE | 重写方法签名满足override-compatible：参数逆变、返回类型协变 | PASS |
| 004 | CLS_09_10_004_PASS_OVERRIDE_CONTRAVARIANCE | override-compatible签名：派生类参数类型是基类参数类型的超类型（逆变） | PASS |
| 013a | CLS_09_10_013_PASS_MULTI_INTERFACE | 类实现多个接口 | PASS |
| 013b | CLS_09_10_031_PASS_PROTECTED_ACCESSIBLE_IN_SUBCLASS | 父类protected成员被派生类继承且可在派生类方法中访问 | PASS |
| 014a | CLS_09_10_014_PASS_EXTENDS_IMPLEMENTS | 同时extends和implements | PASS |
| 014b | CLS_09_10_032_PASS_MULTIPLE_INTERFACE_IMPL | 类同时实现多个接口，必须实现所有接口中的抽象方法和required属性 | PASS |
| 015 | CLS_09_10_015_PASS_EXTENDS_IMPLEMENTS_COMBINED | 类同时extends继承父类并implements实现接口，合并两边成员 | PASS |
| 016 | CLS_09_10_016_PASS_FIELD_OVERRIDE_SAME_TYPE | 派生类同名字段类型与基类字段相同，可用override修饰符重写 | PASS |
| 020 | CLS_09_10_020_PASS_OVERRIDE_WITH_COVARIANT | override协变返回类型 | PASS |
| 026 | CLS_09_10_026_PASS_PROTECTED_ACCESS_SUBCLASS | protected成员在子类中可访问 | PASS |

### compile-fail（14个，005~009 + 015 + 017~021 + 025 + 028）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 005 | CLS_09_10_005_FAIL_NON_ABSTRACT_MISSING_IMPL | 非抽象子类未实现所有继承的抽象方法，编译失败 | PASS |
| 006 | CLS_09_10_006_FAIL_INTERFACE_NOT_IMPLEMENTED | 非抽象类实现接口时必须实现所有继承的抽象方法，否则编译失败 | PASS |
| 007 | CLS_09_10_007_FAIL_OVERRIDE_RETURN_NOT_COVARIANT | override重写但返回类型不满足协变（派生类返回类型不是基类返回类型的子类型） | PASS |
| 008 | CLS_09_10_008_FAIL_OVERRIDE_PARAM_NOT_CONTRAVARIANT | override重写但参数类型不满足逆变（派生类参数类型不是基类参数类型的超类型） | PASS |
| 009 | CLS_09_10_009_FAIL_CONSTRUCTOR_NOT_INHERITED | 父类构造函数不被继承，子类默认构造函数无法调用需要参数的父类构造函数 | PASS |
| 015 | CLS_09_10_033_FAIL_PRIVATE_MEMBER_NOT_INHERITED | private成员不被子类继承，子类无法访问父类private成员 | PASS |
| 017a | CLS_09_10_017_FAIL_FIELD_OVERRIDE_TYPE_MISMATCH | 派生类同名字段类型与基类字段类型不同，编译失败（override field要求类型相同） | PASS |
| 017b | CLS_09_10_035_FAIL_STATIC_NOT_INHERITED | static方法不被继承，子类无法通过实例访问父类static方法 | PASS |
| 018 | CLS_09_10_018_FAIL_PRIVATE_MEMBER_NOT_ACCESSIBLE | 父类private成员不可被子类直接访问，在子类中直接访问private字段或方法导致编译错误 | PASS |
| 019 | CLS_09_10_019_FAIL_FIELD_OVERRIDE_ACCESS_MODIFIER_MISMATCH | 重写字段的访问修饰符必须与基类被重写字段相同，否则编译失败 | PASS |
| 020 | CLS_09_10_038_FAIL_OVERRIDE_FIELD_NOT_IN_BASE | override字段在基类中不存在同名字段，编译失败 | PASS |
| 021 | CLS_09_10_021_FAIL_OVERRIDE_NON_COVARIANT | override返回非协变类型 | PASS |
| 025 | CLS_09_10_025_FAIL_OVERRIDE_NON_CONTRAVARIANT_PARAM | override参数非逆变 | PASS |
| 028 | CLS_09_10_028_FAIL_OVERRIDE_STATIC_METHOD | 不能用static override重写父类非static方法 | PASS |

### runtime（15个，010~012 + 016 + 018~019 + 021~024 + 027 + 029~030，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | CLS_09_10_010_RUNTIME_INHERITANCE_CHAIN | 多级继承链中子类正确继承并使用祖先类的非静态可访问成员 | 4 | PASS |
| 011 | CLS_09_10_011_RUNTIME_OVERRIDE_DISPATCH | 虚方法分派：通过基类引用调用方法，实际执行派生类重写版本 | 3 | PASS |
| 012 | CLS_09_10_012_RUNTIME_ACCESSOR_INHERITANCE | getter/setter继承与重写：派生类可继承和重写访问器 | 3 | PASS |
| 016 | CLS_09_10_034_RUNTIME_PROTECTED_ACCESS | protected成员在子类中可访问 | 1 | PASS |
| 018 | CLS_09_10_036_RUNTIME_INSTANCEOF_CHAIN | instanceof检查继承链 | 3 | PASS |
| 019 | CLS_09_10_037_RUNTIME_SUPER_METHOD_CALL | super.method()调用父类被重写的方法 | 2 | PASS |
| 021 | CLS_09_10_039_RUNTIME_SUPER_METHOD_CALL | 重写方法中通过super.method()调用父类原始实现 | 2 | PASS |
| 022a | CLS_09_10_022_RUNTIME_INSTANCEOF_CHAIN | instanceof操作符在继承链上的行为：子类实例instanceof祖先类返回true | 3 | PASS |
| 022b | CLS_09_10_040_RUNTIME_MULTI_LEVEL | 三级继承链方法调用 | 3 | PASS |
| 023a | CLS_09_10_023_RUNTIME_FIELD_OVERRIDE | 字段重写：派生类同名字段改变初始化值，运行时使用派生类初始值 | 2 | PASS |
| 023b | CLS_09_10_041_RUNTIME_OVERRIDE_VIA_BASE_REF | 通过基类引用调用重写方法 | 2 | PASS |
| 024 | CLS_09_10_024_RUNTIME_STATIC_NOT_INHERITED | 静态方法不被继承：父类静态方法只能通过父类名显式限定调用 | 1 | PASS |
| 027 | CLS_09_10_027_RUNTIME_PRIVATE_NOT_ACCESSIBLE | 验证private成员间接可访问性（通过父类public方法访问private字段） | 1 | PASS |
| 029 | CLS_09_10_029_RUNTIME_SUPER_CONSTRUCTOR_ARGS | super()传递参数给父类构造函数 | 2 | PASS |
| 030 | CLS_09_10_030_RUNTIME_TRIPLE_INHERITANCE_METHOD | 三层继承方法调用链运行时验证 | 3 | PASS |

---

## 执行过程异常

**本次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.10_Inheritance" bash run_classes_cases_wsl.sh
```
