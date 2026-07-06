# 9.7 方法声明 - 测试执行报告

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
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **8** | **8** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（3/3 通过）
- **CLS_09_07_001_PASS_GENERAL_METHOD_SYNTAX** — 验证基本方法声明语法：无修饰符方法、带返回类型方法、void返回方法、多参数与无参数方法均编译通过。
- **CLS_09_07_002_PASS_METHOD_MODIFIER_COMBO** — 验证合法修饰符组合：子类使用`override`重写父类普通方法，编译通过。
- **CLS_09_07_003_PASS_METHOD_IMPLEMENTS_INTERFACE** — 验证类中非静态方法实现接口声明的方法，编译通过。

### compile-fail（3/3 通过）
- **CLS_09_07_004_FAIL_METHOD_FIELD_CONFLICT** — 验证方法名与同声明中的字段名冲突时编译失败（`value`字段与`value()`方法同名）。
- **CLS_09_07_005_FAIL_DUPLICATE_MODIFIER** — 验证同一方法声明中修饰符重复出现（`abstract abstract`）时编译失败。
- **CLS_09_07_006_FAIL_STATIC_ABSTRACT_COMBO** — 验证`static`与`abstract`修饰符组合（`static abstract`）时编译失败，符合规范：抽象方法不能有static修饰符。

### runtime（2/2 — ark VM 真实执行 + assert）
- **CLS_09_07_007_RUNTIME_METHOD_DISPATCH** — 验证实例方法通过对象引用调用：`add(2,3)==5`、`mul(4,5)==20`，断言通过并输出`verified`。
- **CLS_09_07_008_RUNTIME_VOID_METHOD_CALL** — 验证void方法调用与副作用：`Counter008`的`increment()`/`reset()`方法通过全局计数器验证调用次数，两次`increment`后`gCounter==2`，断言通过并输出`verified`。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7_Method_Declarations" bash run_classes_cases_wsl.sh
```
