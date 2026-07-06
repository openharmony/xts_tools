# 9.9.1 构造器体 - 测试执行报告

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
| compile-fail | 9 | 9 | 0 | 100% |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **18** | **18** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（3/3 通过）

覆盖 9.9.1 构造器体的合法语法形式，均为正向用例：

1. **CLS_09_09_001（主构造器基本用法）：** 声明带 `super()` 的主构造器，在构造器体内通过 `this.x = x` 完成字段初始化；编译通过，验证主构造器声明与 `this` 字段赋值的基本语义。
2. **CLS_09_09_002（辅助构造器）：** 声明无参辅助构造器，通过 `this(0, 0)` 调用同类的双参主构造器；编译通过，验证 `this()` 跨构造器委派语法的正确性。
3. **CLS_09_09_010（super() 前放置任意代码）：** 在继承类的主构造器中，`super()` 调用前放置局部变量计算（`let computed = x * 2 + 1`）和静态代码；编译通过，验证 spec 规定的 "Optional arbitrary code that uses neither this nor super" 规则。

### compile-fail（9/9 通过）

覆盖 9.9.1 中 8 项编译时禁止规则，所有反向用例均按预期编译失败：

1. **CLS_09_09_003（super() 非根级）：** `super()` 放在 `if` 块内而非构造器体根级位置，编译失败，验证 `super()` 必须是根级语句的约束。
2. **CLS_09_09_004（显式返回值）：** 构造器中使用 `return 42`，编译失败，验证 "Explicit return of a value is prohibited" 规则。
3. **CLS_09_09_006（super() 实参使用 this）：** `super(this.x)` 在实参中引用实例字段，编译失败，验证 "Call argument uses this or super" 约束中的 `this` 情形。
4. **CLS_09_09_007（super() 实参使用 super）：** `super(super.toString())` 在实参中使用 `super` 关键字，编译失败，验证 super 实参中禁止 `super` 关键字。
5. **CLS_09_09_008（构造器递归调用）：** 辅助构造器 `constructor(a, b) { this(a + b, 0) }` 形成自身递归，编译失败，验证 "constructor calls itself, directly or indirectly" 规则。
6. **CLS_09_09_009（this() 非根级）：** 辅助构造器中 `this(0, 0)` 放在 `if` 块内，编译失败，验证 `this()` 调用必须是根级语句。
7. **CLS_09_09_016（super() 实参使用 super 关键字 — 变体）：** 另一个 `super(super.toString())` 场景，编译失败，补充覆盖 super 实参规则。
8. **CLS_09_09_018（构造器直接自调用）：** 无参构造器 `this()` 直接自调用，编译失败，验证构造器不能直接调用自身的约束。
9. **CLS_09_09_025（辅助构造器 this() 非根级 — 简化版）：** `if (true) { this() }` 场景，编译失败，验证辅助构造器 `this()` 必须在根级的规则。

### runtime（6/6 — ark VM 真实执行 + assert）

覆盖 9.9.1 构造器体的运行时行为，所有用例编译后通过 ark VM 执行并满足 assert 断言：

1. **CLS_09_09_005（构造器执行顺序）：** 三级继承链 `GrandParent -> Parent -> Child`，验证执行顺序为 `"GPC"`（祖父母→父母→子女），pass。
2. **CLS_09_09_011（字段初始化与构造器交错顺序）：** 三级继承链中通过标记函数追踪执行顺序，验证结果为 `"GfGcPfPcCfCc"`（父类字段→父类 ctor→子类字段→子类 ctor→孙类字段→孙类 ctor），pass。
3. **CLS_09_09_012（构造器中 instanceof 检查）：** 构造器完全初始化后验证 `instanceof` 关系正确（`d instanceof Base012` 和 `d instanceof Derived012` 均为 true），且父类和子类字段值正确，pass。
4. **CLS_09_09_017（字段初始化顺序 — 简化版）：** 三级继承链 A->B->C，验证构造器执行顺序为 `"ABC"`，pass。
5. **CLS_09_09_020（辅助构造器运行时）：** 3D 点类通过无参辅助构造器调用 `this(1, 2, 3)` 完成默认初始化，验证字段值分别为 1、2、3，pass。
6. **CLS_09_09_023（三级继承字段值验证）：** 祖父母-父母-子女三级继承链，验证所有层级字段 `gpVal`、`pVal`、`cVal` 均正确初始化为预期值，pass。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.9.1_Constructor_Body" bash run_classes_cases_wsl.sh
```
