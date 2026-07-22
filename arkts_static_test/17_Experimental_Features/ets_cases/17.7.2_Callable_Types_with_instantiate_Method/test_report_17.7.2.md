# 17.7.2 Callable Types with $_instantiate Method - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_07_02_001_PASS_BASIC_INSTANTIATE | 基本 $_instantiate 声明，短格式 C() 和显式调用 | ✅ 编译通过 |
| 002 | EXP2_17_07_02_002_PASS_ADDITIONAL_PARAMS | $_instantiate 带额外参数，短格式 C("arg") | ✅ 编译通过 |
| 003 | EXP2_17_07_02_003_PASS_EXPLICIT_CALL | 显式调用 C.$_instantiate(factory, ...) 传递自定义工厂 | ✅ 编译通过 |
| 004 | EXP2_17_07_02_004_PASS_MULTIPLE_OVERLOADS | 多个 $_instantiate 不同参数列表（重载） | ✅ 编译通过 |
| 005 | EXP2_17_07_02_005_PASS_VOID_RETURN | $_instantiate 返回 void，短格式调用 | ✅ 编译通过 |
| 006 | EXP2_17_07_02_006_PASS_GENERIC_CLASS | 泛型类中的 $_instantiate（签名使用具体类型） | ✅ 编译通过 |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP2_17_07_02_007_FAIL_NO_FACTORY_PARAM | $_instantiate 第一参数非工厂类型，短格式调用 | ✅ ESE0127: No matching call signature for $_instantiate |
| 008 | EXP2_17_07_02_008_FAIL_NO_PARAMETERLESS_CONSTRUCTOR | 无无参构造函数 + $_instantiate，短格式调用 | ✅ ESE0124/ESE0127: 无匹配构造函数和调用签名 |
| 009 | EXP2_17_07_02_009_FAIL_SAME_PARAMS_DIFF_RETURN | 多个 $_instantiate 同参数不同返回类型 | ✅ ESE0130: Function $_instantiate is already declared |
| 010 | EXP2_17_07_02_010_FAIL_GENERIC_TYPE_PARAM_ACCESS | $_instantiate 签名引用泛型类型参数 | ✅ ESE170021: Static members cannot reference class type parameters |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 011 | EXP2_17_07_02_011_RUNTIME_BASIC_VERIFICATION | 短格式 C() 和显式 C.$_instantiate 返回正确实例 | 3 | ✅ verified |
| 012 | EXP2_17_07_02_012_RUNTIME_ADDITIONAL_PARAMS | 额外参数正确传递：name 和 count | 4 | ✅ verified |
| 013 | EXP2_17_07_02_013_RUNTIME_EXPLICIT_FACTORY | 隐式工厂 vs 自定义工厂行为对比 | 3 | ✅ verified |
| 014 | EXP2_17_07_02_014_RUNTIME_OVERLOAD_DISPATCH | 重载根据参数正确分发到不同版本 | 4 | ✅ verified |

---

## 运行时执行验证详情

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 011 | $_instantiate 基本调用 | ✅ 短格式 C() 返回实例 tag="instantiated"，显式调用等价，自定义工厂结果一致 |
| 012 | 额外参数传递 | ✅ name="hello" count=42 正确传递；显式调用 name="world" count=100 |
| 013 | 显式 vs 隐式工厂 | ✅ 隐式工厂用默认构造 source=""，自定义工厂 source="custom"/"direct" |
| 014 | 重载分发 | ✅ 无参 -> tag="" multiplier=1，单参 -> tag="alpha"，双参 -> tag="beta" multiplier=5 |

---

## 执行过程异常修复记录

| # | 异常 | 修复 |
|---|------|------|
| 1 | 005 初版编译失败：`$_instantiate` 3个参数 vs 期望2个（短格式+MyFactory5返回值+string） | 重新设计：void 返回的 $_instantiate 所在类自身作为工厂目标，短格式 C("label") 只传非工厂参数 |
| 2 | 007 初版仅声明无调用 -> 编译通过（仅声明非工厂参数的 $_instantiate 不触发错误） | 增加短格式 C() 调用触发错误：ESE0127 No matching call signature for $_instantiate |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
SECTIONS="17.7.2_Callable_Types_with_instantiate_Method" bash run_experimental_features_cases_wsl.sh
```

手动编译运行：
```bash
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc

$ES2PANDA --extension=ets --output=/tmp/t.abc file.ets
$ARK --load-runtimes=ets --boot-panda-files=$BOOT_PANDA:$BOOT_ETS /tmp/t.abc MODNAME.ETSGLOBAL::main
```
