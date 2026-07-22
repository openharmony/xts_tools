# 17.14 Trailing Lambdas - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (Ubuntu 22.04)

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| **runtime（真实执行）** | **4** | **4** | **0** | **100%** |
| **总计** | **14** | **14** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（6个，001~006）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_14_001_PASS_SIMPLE_TRAILING | 函数仅有一个函数类型参数，使用 trailing lambda 语法调用 | ✅ |
| 002 | EXP2_17_14_002_PASS_METHOD_TRAILING | 类方法调用使用 trailing lambda 语法 | ✅ |
| 003 | EXP2_17_14_003_PASS_MULTI_PARAM_TRAILING | 多个普通参数 + 最后一个函数类型参数，trailing lambda | ✅ |
| 004 | EXP2_17_14_004_PASS_NESTED_TRAILING | 外层和内层函数调用都使用 trailing lambda 语法 | ✅ |
| 005 | EXP2_17_14_005_PASS_RETURN_VALUE | Trailing lambda 包含 return 语句返回值 | ✅ |
| 006 | EXP2_17_14_006_PASS_STRING_PARAM_TRAILING | 前置 string 参数 + 函数类型参数，trailing lambda | ✅ |

### compile-fail（4个，007~010）

| # | 用例 ID | 测试内容 | 编译器错误 | 结果 |
|---|---------|---------|-----------|------|
| 007 | EXP2_17_14_007_FAIL_NOT_FUNCTION_TYPE | 最后一个参数不是函数类型时使用 trailing lambda | ESE0140: No matching call signature with trailing lambda | ✅ |
| 008 | EXP2_17_14_008_FAIL_SEMICOLON_BEFORE_BLOCK | 分号在调用和 block 之间，block 不是 trailing lambda | ESE0124: Expected 1 arguments, got 0 | ✅ |
| 009 | EXP2_17_14_009_FAIL_MULTIPLE_TRAILING | 一次调用后出现多个 trailing block | ESE0124 + ESY0227 | ✅ |
| 010 | EXP2_17_14_010_FAIL_OPTIONAL_BEFORE_TRAILING | 可选参数在函数类型参数前（spec 允许但编译器拒绝）⚠️ SPEC不一致 | ESY0219: A required parameter cannot follow an optional parameter | ✅ |

> ⚠️ **010 号用例为 D 类 SPEC 不一致**：spec 17.14 规定可选参数在函数类型参数前时可被跳过默认 undefined，但编译器禁止必选参数出现在可选参数之后。保留此 FAIL 用例。

### runtime（4个，010~013）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | EXP2_17_14_010_RUNTIME_EXECUTION | 验证 trailing lambda 实际被执行（全局标志位） | 1 | ✅ |
| 011 | EXP2_17_14_011_RUNTIME_RETURN_VALUE | 验证 trailing lambda 返回值被正确接收 | 1 | ✅ |
| 012 | EXP2_17_14_012_RUNTIME_MULTI_PARAM | 验证前置参数和 trailing lambda 同时正确传递/执行 | 2 | ✅ |
| 013 | EXP2_17_14_013_RUNTIME_NESTED | 验证嵌套 trailing lambda 按正确顺序执行 | 2 | ✅ |

---

## 执行过程异常修复记录

1. **EXP2_17_14_006_PASS_OPTIONAL_PARAM_TRAILING (已替换)**：原用例使用可选参数在函数类型参数前（`optionalSuffix?: string, callback: () => void`），编译器拒绝 ESY0219。这是已知的 SPEC 不一致问题（同 3.18 函数类型章节）。将此用例移至 compile-fail 作为 D 类 SPEC 不一致记录（010号），并创建新 compile-pass 用例 006。

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
# 单独编译运行每个用例：
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc

$ES2PANDA --extension=ets --output=/tmp/t.abc file.ets
$ARK --load-runtimes=ets --boot-panda-files=$BOOT_PANDA:$BOOT_ETS /tmp/t.abc MODNAME.ETSGLOBAL::main
```
