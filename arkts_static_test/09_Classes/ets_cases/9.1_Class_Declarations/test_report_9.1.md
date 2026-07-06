# 9.1 类声明 - 测试执行报告

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
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（5/5 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_01_001_PASS_EMPTY_CLASS | 空类声明 | PASS |
| 002 | CLS_09_01_002_PASS_CLASS_WITH_FIELDS | 含字段的类 | PASS |
| 003 | CLS_09_01_003_PASS_CLASS_WITH_METHODS | 含方法的类 | PASS |
| 004 | CLS_09_01_004_PASS_GENERIC_CLASS | 泛型类声明 | PASS |
| 005 | CLS_09_01_005_PASS_CLASS_WITH_CONSTRUCTOR | 含构造器的类 | PASS |

### compile-fail（4/4 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 006 | CLS_09_01_006_FAIL_DUPLICATE_CLASS_MODIFIER | 重复类修饰符 | PASS |
| 007 | CLS_09_01_007_FAIL_CLASS_EXTENDS_ITSELF | extends 自身循环 | PASS |
| 008 | CLS_09_01_008_FAIL_CLASS_NAME_KEYWORD | 类名为关键字 | PASS |
| 009 | CLS_09_01_009_FAIL_CLASS_EXTENDS_INTERFACE | extends 接口 | PASS |

### runtime（3/3 — ark VM 真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | CLS_09_01_010_RUNTIME_CLASS_INSTANCE | 实例创建+字段访问 | 2 | PASS |
| 011 | CLS_09_01_011_RUNTIME_GENERIC_CLASS_INSTANCE | 泛型实例化 | 2 | PASS |
| 012 | CLS_09_01_012_RUNTIME_CLASS_METHOD_CALL | 方法调用 | 1 | PASS |

---

## 执行过程异常

**本次运行无失败用例，无需修复。**

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.1_Class_Declarations" bash run_classes_cases_wsl.sh
```
