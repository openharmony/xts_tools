# 17.10.3 Native Constructors - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

> ✅ **执行时间**：2026-06-23
> ✅ **执行环境**：WSL (arkts static_core)
> ✅ **错误码**：ESE0084 = "Native constructor declaration cannot have a body."

---

## 详细用例清单

### compile-pass (5 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | EXP2_17_10_03_001_PASS_NATIVE_CONSTRUCTOR_NO_PARAMS | native constructor 无参数声明 | ✅ PASS |
| 2 | EXP2_17_10_03_002_PASS_NATIVE_CONSTRUCTOR_WITH_PARAMS | native constructor 带参数声明 | ✅ PASS |
| 3 | EXP2_17_10_03_003_PASS_NATIVE_CONSTRUCTOR_IN_SUBCLASS | 子类中的 native constructor | ✅ PASS |
| 4 | EXP2_17_10_03_004_PASS_NATIVE_AND_REGULAR_CONSTRUCTOR | native 与 regular constructor 共存 | ✅ PASS |
| 5 | EXP2_17_10_03_005_PASS_NATIVE_CONSTRUCTOR_TYPE_USAGE | native constructor 类作为类型使用 | ✅ PASS |

### compile-fail (5 个)

| # | 用例 ID | 测试内容 | 预期错误 | 结果 |
|---|---------|----------|----------|------|
| 1 | EXP2_17_10_03_006_FAIL_NATIVE_CONSTRUCTOR_NONEMPTY_BODY | native constructor 包含 console.log 语句体 | ESE0084 | ✅ PASS |
| 2 | EXP2_17_10_03_007_FAIL_NATIVE_CONSTRUCTOR_EMPTY_BODY | native constructor 包含空 {} 体 | ESE0084 | ✅ PASS |
| 3 | EXP2_17_10_03_008_FAIL_NATIVE_CONSTRUCTOR_BODY_WITH_EXPR | native constructor 体包含表达式 | ESE0084 | ✅ PASS |
| 4 | EXP2_17_10_03_009_FAIL_NATIVE_CONSTRUCTOR_BODY_WITH_RETURN | native constructor 体包含 return 语句 | ESE0084 | ✅ PASS |
| 5 | EXP2_17_10_03_010_FAIL_NATIVE_CONSTRUCTOR_PARAMS_WITH_BODY | native constructor 带参数且包含函数体 | ESE0084 | ✅ PASS |

### runtime (3 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | EXP2_17_10_03_011_RUNTIME_NATIVE_CONSTRUCTOR_TYPE_REFERENCE | native constructor 类作为类型引用 (运行时) | ✅ PASS |
| 2 | EXP2_17_10_03_012_RUNTIME_NATIVE_AND_REGULAR_CONSTRUCTOR | 混合 constructor 类通过 regular constructor 实例化 | ✅ PASS |
| 3 | EXP2_17_10_03_013_RUNTIME_NATIVE_CONSTRUCTOR_CLASS_METHODS | native constructor 类方法运行时验证 | ✅ PASS |

---

## 测试覆盖分析

### 覆盖的 Spec 要点

| Spec 要点 | 覆盖用例 |
|-----------|----------|
| native constructor 无参数声明 | 001 |
| native constructor 带参数声明 | 002 |
| 子类中声明 native constructor | 003 |
| native 与 regular constructor 共存 | 004, 012 |
| native constructor 类作为类型 | 005, 011 |
| native constructor 不能有函数体 (ESE0084) | 006-010 |
| native constructor 包含非空语句体被拒绝 | 006 |
| native constructor 包含空 {} 体被拒绝 | 007 |
| native constructor 体含表达式被拒绝 | 008 |
| native constructor 体含 return 被拒绝 | 009 |
| native constructor 带参数且含体被拒绝 | 010 |
| native constructor 类方法运行时行为 | 013 |

### 编译错误覆盖分析

所有 compile-fail 用例均验证 **ESE0084** 错误码：`Native constructor declaration cannot have a body.`

| 违规场景 | 用例 | 说明 |
|----------|------|------|
| 非空函数体 (console.log) | 006 | 任何可执行语句都不允许 |
| 空函数体 {} | 007 | 即使是空体也不允许 |
| 表达式体 | 008 | 表达式形式同样违规 |
| return 语句体 | 009 | return 语句构成函数体 |
| 参数 + 函数体 | 010 | 组合参数与体的场景 |

---

## 执行过程异常修复记录

本次执行无异常，所有 13 个用例全部一次性通过。

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/17_Experimental_Features
SECTIONS="17.10.3_Native_Constructors" bash run_experimental_cases_wsl.sh
```

---

**报告生成时间**：2026-06-23
**报告状态**：✅ 全部通过
