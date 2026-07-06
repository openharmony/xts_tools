# 9.1.1 抽象类 - 测试执行报告

**测试日期：** 2026-06-22
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
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（4/4 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_01_013_PASS_ABSTRACT_CLASS_DECL | abstract 类声明 | PASS |
| 002 | CLS_09_01_014_PASS_ABSTRACT_CLASS_CONCRETE_METHOD | abstract 含具体方法 | PASS |
| 003 | CLS_09_01_015_PASS_ABSTRACT_SUBCLASS_EXTENDS_ABSTRACT | 抽象子类继承抽象类 | PASS |
| 004 | CLS_09_01_016_PASS_NON_ABSTRACT_SUBCLASS | 非抽象子类继承抽象类 | PASS |

### compile-fail（5/5 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 005 | CLS_09_01_017_FAIL_INSTANTIATE_ABSTRACT_CLASS | 实例化抽象类 | PASS |
| 006 | CLS_09_01_018_FAIL_NON_ABSTRACT_WITH_ABSTRACT_METHOD | 非抽象类含抽象方法 | PASS |
| 007 | CLS_09_01_019_FAIL_ABSTRACT_METHOD_FINAL | abstract+final | PASS |
| 008 | CLS_09_01_020_FAIL_ABSTRACT_METHOD_OVERRIDE | abstract+override | PASS |
| 009 | CLS_09_01_021_FAIL_NON_ABSTRACT_MISSING_IMPL | 非抽象子类未实现抽象方法 | PASS |

### runtime（3/3 — ark VM 真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | CLS_09_01_022_RUNTIME_ABSTRACT_SUBCLASS_DISPATCH | 抽象类→子类派发 | 3 | PASS |
| 011 | CLS_09_01_023_RUNTIME_ABSTRACT_CONSTRUCTOR_EXEC | 抽象类构造器执行 | 2 | PASS |
| 012 | CLS_09_01_024_RUNTIME_MULTI_LEVEL_ABSTRACT | 多层抽象继承 | 2 | PASS |

---

## 执行过程异常

**本次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.1.1_Abstract_Classes" bash run_classes_cases_wsl.sh
```
