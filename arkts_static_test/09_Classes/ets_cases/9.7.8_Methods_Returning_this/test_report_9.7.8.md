# 9.7.8 返回this的方法 - 测试执行报告

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
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **8** | **8** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（2/2 通过）

正向用例，验证合法声明返回this的实例方法并通过编译。

- **CLS_09_07_011_PASS_METHOD_RETURN_THIS**：非泛型类中声明返回`this`的setter方法（setName/setCount），方法体内直接`return this`；configure方法返回另一返回this方法的结果（`return this.setName(name).setCount(count)`实现方法链）；子类SubBuilder011重写setName仍返回`this`，同时新增setExtra方法扩展链式调用。
- **CLS_09_07_016_PASS_GENERIC_RETURN_THIS**：泛型类Builder016\<T\>中声明返回`this`的setData/setTag方法；build方法链式调用setData和setTag并返回this；子类SubBuilder016\<T\>通过`override`重写setTag和build，build中使用`super.build(data, tag).setExtra("built")`扩展父类方法链；NonGeneric016继承Builder016\<string\>后重写setData返回this。验证泛型类、泛型子类、非泛型子类三种场景下返回this的声明均通过编译。

### compile-fail（3/3 通过）

反向用例，验证违反this返回类型规则时代码被编译器正确拒绝。

- **CLS_09_07_013_FAIL_OVERRIDE_WRONG_RETURN_TYPE**：父类Builder013声明`setValue(v: int): this`，子类BadBuilder013重写时声明返回`void`，违反override必须兼容返回类型的规则（子类须返回`this`或其超类型）。编译正确报错。
- **CLS_09_07_014_FAIL_RETURN_NON_THIS**：方法`clone()`声明返回`this`，但实际`return new Factory014()`返回一个新对象实例；方法`badReturn()`声明返回`this`，但`return 0`返回字面量。声明为this返回类型的方法不能返回非this的值（new对象、字面量等）。编译正确报错。
- **CLS_09_07_037_FAIL_RETURN_NON_THIS**：最小用例，`foo(): this { return new Bad37() }`返回new实例而非this。编译正确报错。

### runtime（3/3 — ark VM 真实执行 + assert）

运行时用例，验证返回this的方法在ark VM中方法链正确执行、对象一致性保持、子类/泛型类型正确。

- **CLS_09_07_012_RUNTIME_RETURN_THIS**：非泛型类Chain012方法链调用`c.setValue(10).setLabel("hello")`后通过assert验证值与对象一致性；子类SubChain012三连链式调用`sc.setValue(42).setLabel("world").setExtra(99)`后逐一assert验证；验证链式调用返回值可赋值给子类类型`let chained: SubChain012 = sc.setValue(1).setLabel("x")`。
- **CLS_09_07_015_RUNTIME_GENERIC_RETURN_THIS**：泛型类Chain015\<T\>分别以string和int实例化，验证setLabel→setData链式调用后值正确；泛型子类SubChain015\<string\>三连调用后assert验证；验证链式返回值保持泛型类型`let chained: SubChain015<string> = sc.setLabel("retest").setData("again")`。
- **CLS_09_07_027_RUNTIME_CHAIN_RETURN_THIS**：最小运行时用例，`c.setA(1).setB("x")`链式调用后输出验证通过。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.8_Methods_Returning_this" bash run_classes_cases_wsl.sh
```
