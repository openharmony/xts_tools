# 9.7.3 抽象方法 - 测试执行报告

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
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 8 | 8 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **17** | **17** | **0** | **100%** |

**一次通过率：100%**（本次执行无任何用例失败）

---

## 详细执行结果

### compile-pass（4/4 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_ABSTRACT_METHOD_IMPL | abstract类声明abstract方法，非abstract子类提供实现，支持多级abstract继承链 | PASS |
| 002 | PASS_ABSTRACT_OVERRIDE_NONABSTRACT | abstract子类以abstract方法覆盖基类非abstract具体方法 | PASS |
| 003 | PASS_ABSTRACT_OVERRIDE_INTERFACE | abstract子类以abstract方法覆盖接口默认实现（implements Drawable） | PASS |
| 004 | PASS_ABSTRACT_OVERRIDE_ABSTRACT | abstract子类以abstract方法覆盖基类abstract方法，并新增abstract方法 | PASS |

### compile-fail（8/8 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 005 | FAIL_ABSTRACT_PRIVATE_NONABSTRACT | 非abstract类包含abstract方法 / abstract方法声明为private | PASS |
| 006 | FAIL_ABSTRACT_STATIC | abstract方法与static修饰符同时使用 | PASS |
| 007 | FAIL_ABSTRACT_FINAL | abstract方法与final修饰符同时使用 | PASS |
| 008 | FAIL_ABSTRACT_NATIVE (#017) | abstract方法与native修饰符同时使用 | PASS |
| 009 | FAIL_ABSTRACT_ASYNC | abstract方法与async修饰符同时使用 | PASS |
| 010 | FAIL_ABSTRACT_NOT_IMPLEMENTED | 非abstract子类未实现所有继承的abstract方法 | PASS |
| 011 | FAIL_ABSTRACT_STATIC (#019) | abstract不能与static组合（重复验证） | PASS |
| 012 | FAIL_ABSTRACT_NATIVE (#039) | abstract不能与native组合（重复验证） | PASS |

### runtime（5/5 — ark VM 真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | RUNTIME_ABSTRACT_DISPATCH (#020) | 基类引用指向Dog/Cat子类，多态分派到正确speak()实现 | 2 | PASS |
| 014 | RUNTIME_ABSTRACT_DISPATCH (#023) | 基类Calculator引用分派到Adder/Multiplier，验证非抽象方法describe()也可正常调用 | 2 | PASS |
| 015 | RUNTIME_ABSTRACT_MULTILEVEL | 三级抽象继承链（Layer1->Layer2->ConcreteLeaf），基类引用正确调用叶子类实现 | 3 | PASS |
| 016 | RUNTIME_ABSTRACT_OVERRIDE_NONABSTRACT | 子类override基类非抽象方法，基类引用分派到子类实现 | 1 | PASS |
| 017 | RUNTIME_ABSTRACT_MULTI_IMPL | Square和Rect两个子类分别实现Shape抽象方法，验证各自返回值正确 | 2 | PASS |

---

## 执行过程异常

**本次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.3_Abstract_Methods" bash run_classes_cases_wsl.sh
```
