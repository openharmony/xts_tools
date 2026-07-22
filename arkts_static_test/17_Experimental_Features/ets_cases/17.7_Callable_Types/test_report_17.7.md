# 17.7 Callable Types - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux x86_64

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| **runtime（真实执行）** | **6** | **6** | **0** | **100%** |
| **总计** | **17** | **17** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_07_001_PASS_BASIC_INVOKE_NOARGS | 静态 $_invoke(): int 无参，类可调用 | PASS |
| 002 | EXP2_17_07_002_PASS_BASIC_INVOKE_WITH_ARGS | 静态 $_invoke(a: int, b: int): int 带参 | PASS |
| 003 | EXP2_17_07_003_PASS_BASIC_INSTANTIATE_NOARGS | 静态 $_instantiate(f: () => Self): Self 工厂 | PASS |
| 004 | EXP2_17_07_004_PASS_BASIC_INSTANTIATE_WITH_ARGS | 静态 $_instantiate(f, name): Self 带参工厂 | PASS |
| 005 | EXP2_17_07_005_PASS_MULTIPLE_INVOKE_OVERLOADS | 3 个 $_invoke 重载（0/1/2 参数） | PASS |
| 006 | EXP2_17_07_006_PASS_MULTIPLE_INSTANTIATE_OVERLOADS | 3 个 $_instantiate 重载（tag/count 参数） | PASS |
| 007 | EXP2_17_07_007_PASS_EXPLICIT_INVOKE_AND_INSTANTIATE | 显式调用 C.$_invoke() / C.$_instantiate() | PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 错误码 | 结果 |
|---|---------|---------|--------|------|
| 008 | EXP2_17_07_008_FAIL_BOTH_INVOKE_AND_INSTANTIATE | 同时声明 $_invoke 和 $_instantiate | ESE0221 | PASS |
| 009 | EXP2_17_07_009_FAIL_INSTANCE_INVOKE_NOT_CALLABLE | 仅实例 $_invoke（非 static），尝试 C() | ESE0172, ESE0002 | PASS |
| 010 | EXP2_17_07_010_FAIL_STATIC_INVOKE_USES_GENERIC_T | 泛型类中 static $_invoke 引用 T | ESE0371, ESE170021 | PASS |
| 011 | EXP2_17_07_011_FAIL_NO_INVOKE_CLASS_NOT_CALLABLE | 普通类无 $_invoke/$_instantiate，尝试 C() | ESE0172, ESE0002 | PASS |

### runtime（真实执行 + 断言验证）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | EXP2_17_07_012_RUNTIME_INVOKE_RETURN_VALUE | $_invoke 返回 int 100 | 1 | PASS |
| 013 | EXP2_17_07_013_RUNTIME_INSTANTIATE_RETURN_INSTANCE | $_instantiate 返回正确实例 | 1 | PASS |
| 014 | EXP2_17_07_014_RUNTIME_INVOKE_OVERLOAD_RESOLUTION | 3 个重载根据参数正确分发 | 3 | PASS |
| 015 | EXP2_17_07_015_RUNTIME_NEW_VS_INVOKE | new 调用构造函数，C() 调用 $_invoke | 2 | PASS |
| 016 | EXP2_17_07_016_RUNTIME_EXPLICIT_VS_SHORT | C.$_invoke() 与 C() 结果一致 | 3 | PASS |
| 017 | EXP2_17_07_017_RUNTIME_INSTANTIATE_WITH_PARAMS | $_instantiate 带参创建配置实例 | 4 | PASS |

---

## 执行过程异常修复记录

### 修复 1：$_instantiate 缺少 factory 参数

**受影响用例：** 003, 004, 006, 013, 017（5 个用例）

**异常现象：**
```
ESE0124: Expected 0 arguments, got 1
ESE0127: No matching call signature for $_instantiate(...)
```

**根本原因：**
`$_instantiate` 方法的第一个参数必须是 factory 函数 `f: () => Self`。当用户调用 `C()` 简写形式时，编译器自动传入隐式的 factory 参数。若方法签名不包含此参数，参数计数不匹配导致编译失败。

**修复方案：**
所有 `$_instantiate` 方法签名添加 `f: () => Self` 作为第一个参数，业务参数后移。

**修复后：** 所有 5 个用例编译通过。

---

## 后续运行命令

```bash
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
BASE=/home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features/ets_cases/17.7_Callable_Types

# Compile-only verification
for f in "$BASE"/compile-pass/*.ets; do
  $ES2PANDA --extension=ets --output=/tmp/t.abc "$f"
done

# Runtime verification
for f in "$BASE"/runtime/*.ets; do
  modname=$(basename "$f" .ets | tr '.' '_' | tr '-' '_')
  $ES2PANDA --extension=ets --output=/tmp/t.abc "$f"
  $ARK --load-runtimes=ets --boot-panda-files=$BOOT_PANDA:$BOOT_ETS /tmp/t.abc "$modname".ETSGLOBAL::main
done
```
