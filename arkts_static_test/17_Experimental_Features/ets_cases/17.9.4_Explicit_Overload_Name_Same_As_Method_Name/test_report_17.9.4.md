# 17.9.4 Explicit Overload Name Same As Method Name - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| **runtime（真实执行）** | **1** | **1** | **0** | **100%** |
| **总计** | **8** | **8** | **0** | **100%** |

---

## 运行时执行验证

runtime 用例通过 `ark VM` 实际执行 + 断言验证：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 001 | 重载名称与函数名相同时的无歧义派发 | ✅ 实际执行通过，无歧义 |

---

## 详细结果

### compile-pass（5个）
所有显式重载名称与函数名相同的合法声明用法均编译通过：OverloadNameSameAsMethod、CrossInheritance、SameNameInterface、NoAmbiguity、MethodRef。

### compile-fail（2个）
违反重载规则的用例（MethodNotInList、CrossInheritanceFail）均按预期产生编译错误。

### runtime（1个）
Dispatch_runtime：验证当重载名称与函数名相同时，运行时派发无歧义，结果正确。

---

## 后续运行

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/17_Experimental_Features
bash run_17_cases.sh
```

支持指定章节：
```bash
SECTIONS="17.9.4_Explicit_Overload_Name_Same_As_Method_Name" bash run_17_cases.sh
```
