# 9.7.5 重写方法 - 测试执行报告

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
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **9** | **9** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（4/4 通过）

验证合法的 override 方法声明可通过编译：

- **CLS_09_07_007_PASS_OVERRIDE_METHOD.ets** -- override 基本用法。测试 Vehicle007→Car007/Truck007 继承链，在子类中使用 `override` 关键字重写实例方法 `start()`、`stop()`，包括带默认参数且保持相同默认值 (`immediate: boolean = false`) 的重写。同时验证省略 `override` 关键字（`getType()`）仍可正常工作。编译通过。
- **CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT.ets** -- 重写方法使用不同默认参数值。Printer015→CustomPrinter015 继承，子类 `override print(text: string = "World")` 将默认值从 `"Hello"` 改为 `"World"`，`override format(prefix: string = "[CUSTOM]", ...)` 将默认值从 `"[INFO]"` 改为 `"[CUSTOM]"`。@expect 为 compile-pass，说明 ArkTS 编译器当前允许重写方法使用不同的默认参数值，编译通过。
- **CLS_09_07_017_PASS_OVERRIDE_INTERFACE_DEFAULT.ets** -- override 重写接口默认实现的方法。Shape017 实现 Drawable017 接口中的 `draw()` 和 `getShapeName()`，Circle017/Rectangle017 继承 Shape017 并 override 重写这两个方法，验证从接口→基类→子类继承链中 override 的合法性。编译通过。
- **CLS_09_07_018_PASS_OVERRIDE_COVARIANT_RETURN.ets** -- 协变返回类型。Shelter018→DogShelter018/CatShelter018 继承，子类 `override getAnimal()` 方法返回类型从 `Animal018` 协变为子类型 `Dog018`/`Cat018`，符合返回类型协变规则。同时验证通过基类引用 (`Shelter018`) 调用协变重写方法时类型安全。编译通过。

### compile-fail（2/2 通过）

验证不合法的 override 声明被编译器拒绝：

- **CLS_09_07_008_FAIL_OVERRIDE_NOTHING_STATIC.ets** -- override 未重写任何超类方法 + override 与 static 组合。BadOverride008 继承 Base008，`override bar()` 试图重写不存在的超类方法；`static override foo()` 试图组合 static 和 override 修饰符。编译器正确拒绝这两种违规声明并报告错误。
- **CLS_09_07_016_FAIL_OVERRIDE_STATIC.ets** -- static 与 override 修饰符组合。SubService016 继承 Service016，声明 `static override process()` 和 `static override handle()`，违反 static 方法不能使用 override 修饰符的规则。编译器正确拒绝并报告错误。

### runtime（3/3 — ark VM 真实执行 + assert）

验证 override 方法在 ark VM 上的运行时多态行为：

- **CLS_09_07_019_RUNTIME_OVERRIDE_BASE_REF.ets** -- 基类引用多态分派。Vehicle019→Car019/Bike019 继承链，通过 `let v1: Vehicle019 = new Car019()` 基类引用指向子类对象，验证方法调用动态分派到子类重写方法。assert 验证 `getType()` 返回 `"Car"`/`"Bike"`/`"Vehicle"`，`maxSpeed()` 返回各自正确的速度值。输出 `verified`，多态行为符合预期。
- **CLS_09_07_020_RUNTIME_OVERRIDE_MULTILEVEL.ets** -- 三层继承链多态分派。Logger020→FileLogger020→TimestampFileLogger020 三层重写链，通过基类引用 `Logger020` 验证每层 `log()`、`getLevel()`、`format()` 方法正确分发到对应层级；通过中间层引用 `FileLogger020` 指向 `TimestampFileLogger020` 实例，验证中层引用的多态分派同样正确。assert 验证字符串精确匹配（如 `"[2024-01-01][FILE] test3"`、`"[FILE] test2"`）。输出 `verified`，三层多态分派全部正确。
- **CLS_09_07_036_RUNTIME_OVERRIDE_DEFAULT_PARAM.ets** -- 运行时默认参数重写。Base36→Child36 继承，子类 override `greet(name: string)` 方法，通过基类引用 `let b: Base36 = new Child36()` 调用 `b.greet("x")` 并 assert 结果等于 `"hello x"`，验证动态分派和参数传递正确。输出 `verified`，运行时行为符合预期。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.5_Overriding_Methods" bash run_classes_cases_wsl.sh
```
