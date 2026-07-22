# 17.9.5 Explicit Constructor Overload - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 3 | 1 | 2 | 33% |
| **runtime（真实执行）** | **2** | **2** | **0** | **100%** |
| **总计** | **12** | **10** | **2** | **83%** |

> **注意：** compile-fail 的 2 个失败为 **SPEC INCONSISTENCY**（规范与实际行为不符），非真实 bug。详见下方说明。

---

## SPEC INCONSISTENCIES 详析

### 1. 空构造器重载列表编译通过（EXP2_CtorOverload_EmptyList_fail）

**案例文件：** `EXP2_CtorOverload_EmptyList_fail.ets`
**预期行为（规范）：** 空的 `overload constructor { }` 列表应为编译错误
**实际行为：** es2panda 编译器允许编译通过
**结论：** 规范不一致 —— 编译器未对空的构造器重载列表报错

### 2. 两个重载构造器声明编译通过（EXP2_CtorOverload_TwoDeclarations_fail）

**案例文件：** `EXP2_CtorOverload_TwoDeclarations_fail.ets`
**预期行为（规范）：** 只允许一个 `overload constructor` 声明
**实际行为：** es2panda 编译器允许两个 `overload constructor` 声明同时存在，编译通过
**结论：** 规范不一致 —— 编译器未限制重载声明数量为 1

### 3. 无匹配构造器按预期失败（EXP2_CtorOverload_NoMatchingCtor_fail）✅

**案例文件：** `EXP2_CtorOverload_NoMatchingCtor_fail.ets`
**预期行为：** 调用无匹配重载的构造器应报编译错误
**实际行为：** 编译正确报错，与规范一致

---

## 运行时执行验证

所有 runtime 用例均通过 `ark VM` 实际执行 + 断言验证：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 01 | 构造器重载决议（default/int/string/double 参数） | ✅ 验证正确构造器被调用 |
| 02 | 构造器顺序优先级（int 在 double 前，优先级验证） | ✅ 验证重载列表声明顺序决定优先级 |

### Runtime 1: 构造器重载决议（Resolution_runtime.ets）

验证 `overload constructor` 根据不同参数类型（default/int/string/double）正确分派到对应的命名构造器。四种参数类型各自匹配到正确的构造器，返回值符合预期。

### Runtime 2: 构造器顺序优先级（OrderPriority_runtime.ets）

验证重载列表中构造器的声明顺序影响决议优先级。当 `int` 类型构造器在 `double` 类型构造器之前声明时，传入字面量整数的调用优先匹配 `int` 版本而非 `double` 版本。

---

## 详细结果

### compile-pass（7个）

所有显式构造器重载基本声明用法均编译通过：

- **Basic** — 基本 `overload constructor` 声明
- **NamedConstructors** — 命名构造器重载
- **DifferentParamTypes** — 不同参数类型重载
- **DifferentParamCount** — 不同参数数量重载
- **AnonymousImplicitFirst** — 匿名构造器隐式在列表中
- **GenericClass** — 泛型类构造器重载
- **Inheritance** — 继承类构造器重载

### compile-fail（3个，含2个 SPEC INCONSISTENCY）

- **TwoDeclarations（SPEC INCONSISTENCY）** — 两个 `overload constructor` 声明预期报错但编译通过
- **NoMatchingCtor（OK ✅）** — 无匹配重载，编译正确报错
- **EmptyList（SPEC INCONSISTENCY）** — 空重载列表预期报错但编译通过

### runtime（2个）

所有用例真实执行通过，无异常。

---

## 关键发现：构造器重载语法

通过本次测试发现以下关于显式构造器重载语法的关键行为：

1. **匿名构造器隐式在列表中。** `overload constructor` 的重载列表仅列出**命名构造器**。匿名构造器（`constructor()`）自动、隐式地参与重载决议，无需也不应在列表中声明。

2. **`overload constructor { constructor }` 是语法错误。** 尝试在重载列表中包含匿名构造器会导致语法错误。必须使用命名构造器，如 `overload constructor { fromInt, fromStr }`。

3. **重载决议规则：**
   - 匿名构造器始终参与决议，优先级由其在类中的声明位置决定
   - 命名构造器按重载列表中的声明顺序决定优先级
   - 参数类型的匹配遵循 ArkTS 类型系统的标准重载决议规则

---

## 后续运行

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/17_Experimental_Features
bash run_exp_cases_wsl.sh
```
