# 17.9.2 Explicit Class Method Overload - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04
**运行脚本：** `17_Experimental_Features/run_experimental_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| **runtime（真实执行）** | **3** | **3** | **0** | **100%** |
| **总计** | **18** | **18** | **0** | **100%** |

---

## 运行时执行验证

所有 runtime 用例均通过 `ark VM` 实际执行 + 断言验证：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 1 | 实例方法重载派发（int vs string 参数） | ✅ 断言验证 |
| 2 | 静态方法重载派发（int vs string 参数） | ✅ 断言验证 |
| 3 | 重写/多态派发（父类类型持有子类实例） | ✅ 断言验证 |

---

## 详细结果

### compile-pass（8个）
Basic, Static, Async, PublicAccess, Override, OverrideAdd, SpecialNames, MultiOverload — 所有显式类方法重载合法声明用法均编译通过。

### compile-fail（7个）
StaticMismatch, InstanceMismatch, AsyncMismatch, AccessMismatch, OverrideMissing, SyncAsyncMismatch, NameConflict — 所有违反重载规则的用例均按预期产生编译错误。

### runtime（3个）
InstanceDispatch, StaticDispatch, OverrideDispatch — 所有用例真实执行通过，覆盖实例方法重载派发、静态方法重载派发、以及重写/多态派发场景。

---

## 后续运行

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/17_Experimental_Features
bash run_experimental_cases_wsl.sh
```

支持指定章节：
```bash
SECTIONS="17.9.2_Explicit_Class_Method_Overload" bash run_experimental_cases_wsl.sh
```
