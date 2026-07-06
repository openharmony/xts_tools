# 9.7.6 本地方法 - 测试执行报告

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
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime（真实执行） | 0 | 0 | 0 | 100% |
| **总计** | **3** | **3** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（2/2 通过）

验证合法的 native 方法声明可通过编译：

- **CLS_09_07_045_PASS_NATIVE_DECLARATION.ets** -- native 方法基本声明。在类中声明 `native foo(): void`，以分号结尾，无方法体。符合 ArkTS 规范要求：native 方法仅允许声明，不允许提供实现体。编译通过。
- **CLS_09_07_046_PASS_NATIVE_STATIC.ets** -- native static 方法。在类中声明 `native static foo(): void`，native 修饰符与 static 同时使用。ArkTS 允许 native 方法与 static 组合，表明该方法为静态本地方法。编译通过。

### compile-fail（1/1 通过）

验证不合法 native 声明的编译期报错：

- **CLS_09_07_013_FAIL_NATIVE_WITH_BODY.ets** -- native 方法违规。包含两个编译期错误场景：(1) 在非抽象类中声明 native 方法 `native externalCall(): int` 并提供了 block 方法体 `{ return 42 }`，违反了 native 方法不得有方法体的规则；(2) 在抽象类中同时使用 `abstract native badCombo(): void`，native 与 abstract 修饰符互斥，不允许组合使用。编译器正确拒绝以上声明并报告错误。

### runtime（0/0 — ark VM 真实执行 + assert）

本节暂无运行时用例。native 方法的运行时行为依赖外部本地实现，无法在纯 ark VM 环境中独立验证。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.6_Native_Methods" bash run_classes_cases_wsl.sh
```
