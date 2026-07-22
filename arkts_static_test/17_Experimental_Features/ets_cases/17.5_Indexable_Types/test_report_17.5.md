# 17.5 Indexable Types - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **15** | **15** | **0** | **100%** |

---

## 运行时执行验证

所有 runtime 用例通过 `ark VM` 实际执行 + 断言验证：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 020 | 基本索引读写 | 4 个断言：读、写、覆盖写 |
| 021 | 字符串键索引 | 3 个读断言 + 1 个写操作 |
| 022 | 泛型索引操作 | 5 个断言：number 和 string 参数化 + 覆盖写 |

---

## 详细结果

### compile-pass（8个，001~008）

| # | 用例 ID | 测试内容 | 结果 |
|---|--------|---------|------|
| 001 | EXP2_17_05_001_PASS_BASIC_GET_SET | 基本 $_get + $_set 声明与使用 | PASS |
| 002 | EXP2_17_05_002_PASS_GET_ONLY | 仅 $_get 的只读索引 | PASS |
| 003 | EXP2_17_05_003_PASS_SET_ONLY | 仅 $_set 的只写索引 | PASS |
| 004 | EXP2_17_05_004_PASS_INTERFACE_IMPL | 接口中声明抽象 $_get/$_set | PASS |
| 005 | EXP2_17_05_005_PASS_OVERRIDE | 子类重写 $_get | PASS |
| 006 | EXP2_17_05_006_PASS_GENERIC_CLASS | 泛型类中使用 $_get/$_set | PASS |
| 007 | EXP2_17_05_007_PASS_STRING_INDEX | 字符串键索引 | PASS |
| 008 | EXP2_17_05_008_PASS_OVERLOAD | 抽象类声明 + 不同参数类型索引 | PASS |

### compile-fail（4个，010~013）

| # | 用例 ID | 测试内容 | 错误码 | 结果 |
|---|--------|---------|--------|------|
| 010 | EXP2_17_05_010_FAIL_ASYNC_GET | async $_get | ESY0220 | FAIL (expected) |
| 011 | EXP2_17_05_011_FAIL_ASYNC_SET | async $_set | ESY0220 + ESE0094 | FAIL (expected) |
| 012 | EXP2_17_05_012_FAIL_READ_ONLY_WRITE | 对只读索引写操作 | ESE0250 | FAIL (expected) |
| 013 | EXP2_17_05_013_FAIL_WRITE_ONLY_READ | 对只写索引读操作 | ESE0250 | FAIL (expected) |

### runtime（3个，020~022）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|--------|---------|--------|------|
| 020 | EXP2_17_05_020_RUNTIME_BASIC_INDEX | 基本索引读写 + 覆盖写 | 4 | PASS |
| 021 | EXP2_17_05_021_RUNTIME_STRING_INDEX | 字符串键索引读写 | 4 | PASS |
| 022 | EXP2_17_05_022_RUNTIME_GENERIC_INDEX | 泛型 PairStore number/string | 5 | PASS |

---

## 发现的问题

### SPEC 不一致 #1：索引参数类型为 int 而非 number

**现象：** ArkTS Static Spec 17.5 声称索引参数可以是 "string or number" 类型，但当前 es2panda 实现要求 `int` 类型。使用 `number`（即 `double`）作为索引参数类型时，编译报错 `ESE0046: Type 'Double' is not compatible with type 'Int'`。

**影响用例：** 001, 002, 003, 004, 006, 020, 022（已修改为 `int` 绕过）

**分类：** D 类（Spec 与实现不一致）

### SPEC 不一致 #2：不支持 TypeScript 风格的方法重载语法

**现象：** Spec 声称 $_get "Can be overloaded with explicit overloads"，但 ArkTS 不支持 TypeScript 风格的多重载签名语法（报错 `ESE0017: Only abstract or native methods can't have body`）。

**影响用例：** 008（已改为抽象类 + 不同实现类的方案绕过）

**分类：** D 类（Spec 与实现不一致）

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
# 单独编译测试：
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
$ES2PANDA --extension=ets --output=/tmp/t.abc ets_cases/17.5_Indexable_Types/compile-pass/EXP2_17_05_001_PASS_BASIC_GET_SET.ets
```
