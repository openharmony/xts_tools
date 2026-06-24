# 3.4 Named Types - 测试执行报告

**测试日期：** 2026-06-11
**编译器：** es2panda
**运行时：** ark VM + boot files
**运行环境：** WSL2 Ubuntu 22.04
**对应规范：** ArkTS Static Spec §3.4 Named Types

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

**🎯 一次通过率：100%**（首次执行无任何用例失败）

---

## 详细执行结果

### compile-pass（10个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_CLASS_AS_NAMED | 类声明引入命名类型 | PASS |
| 002 | PASS_INTERFACE_AS_NAMED | 接口声明引入命名类型 | PASS |
| 003 | PASS_ENUM_AS_NAMED | 枚举声明引入命名类型 | PASS |
| 004 | PASS_TYPE_ALIAS_AS_NAMED | type alias 给匿名类型命名 | PASS |
| 005 | PASS_TYPE_PARAM_AS_NAMED | 类型参数 T 是命名类型 | PASS |
| 006 | PASS_PREDEFINED_AS_NAMED | 预定义类型作命名类型 | PASS |
| 007 | PASS_GENERIC_NAMED_TYPES | 泛型 class/interface/alias | PASS |
| 008 | PASS_NON_GENERIC_NAMED_TYPES | 非泛型命名类型 | PASS |
| 009 | PASS_TYPE_REFERENCE_WITH_ARGS | typeArguments 引用 | PASS |
| 010 | PASS_ANONYMOUS_VS_NAMED | 匿名 vs 命名透明等价 | PASS |

### compile-fail（6个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 011 | FAIL_DUPLICATE_NAME | class/interface 同名 | PASS |
| 012 | FAIL_DUPLICATE_ALIAS_ENUM | type alias/enum 同名 | PASS |
| 013 | FAIL_TYPE_PARAM_OUT_OF_SCOPE | 类型参数泛型外引用 | PASS |
| 014 | FAIL_USE_UNDEFINED_NAMED_TYPE | 未声明类型名 | PASS |
| 015 | FAIL_TYPE_ALIAS_NAME_CONFLICT_CLASS | type alias 与 class 同名 | PASS |
| 016 | FAIL_GENERIC_INSTANTIATE_WITHOUT_ARGS | 泛型缺类型参数 | PASS |

### runtime（4个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 017 | RUNTIME_NAMED_INSTANTIATE | class/interface/enum/alias 实例化 | 6 | PASS |
| 018 | RUNTIME_GENERIC_ERASURE | 泛型类型擦除 instanceof | 4 | PASS |
| 019 | RUNTIME_TYPE_ALIAS_TRANSPARENT | alias 与底层类型透明等价 | 5 | PASS |
| 020 | RUNTIME_INTERFACE_NAMED_TYPE | interface 多态分发 | 3 | PASS |

---

## 执行过程异常

**首次运行无失败用例，无需修复。**

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.4_Named_Types" bash run_types_cases_wsl.sh
```