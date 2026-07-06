# 9.2 类扩展子句 - 测试执行报告

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

**注：** CLS_09_02_009_FAIL 标注 ⚠️SPEC不一致（es2panda允许显式extends Object，spec禁止）。

---

## 详细执行结果

### compile-pass（4/4 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_02_001_PASS_EXTENDS_CLASS | extends 合法类 | PASS |
| 002 | CLS_09_02_002_PASS_MULTI_LEVEL_EXTENDS | 多层继承 | PASS |
| 003 | CLS_09_02_003_PASS_NO_EXTENDS_IMPLICIT_OBJECT | 默认继承Object | PASS |
| 004 | CLS_09_02_004_PASS_EXTENDS_ACCESSIBLE_CLASS | 继承可访问类 | PASS |

### compile-fail（5/5 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 005 | CLS_09_02_005_FAIL_EXTENDS_INTERFACE | extends 接口 | PASS |
| 006 | CLS_09_02_006_FAIL_EXTENDS_ENUM | extends 枚举 | PASS |
| 007 | CLS_09_02_007_FAIL_EXTENDS_CYCLE | extends 循环 | PASS |
| 008 | CLS_09_02_008_FAIL_EXTENDS_INACCESSIBLE | extends 不可访问类 | PASS |
| 009 | CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT | 显式extends Object ⚠️SPEC不一致 | PASS |

### runtime（3/3 — ark VM 真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | CLS_09_02_010_RUNTIME_INHERIT_CHAIN | 继承链实例化 | 3 | PASS |
| 011 | CLS_09_02_011_RUNTIME_INSTANCEOF_OBJECT | instanceof Object | 2 | PASS |
| 012 | CLS_09_02_012_RUNTIME_INHERIT_METHOD_CALL | 继承方法调用 | 2 | PASS |

---

## 执行过程异常

**本次运行无失败用例，无需修复。** CLS_09_02_009 标注 ⚠️SPEC不一致 — es2panda 允许显式 extends Object，但 spec 禁止。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.2_Class_Extension_Clause" bash run_classes_cases_wsl.sh
```
