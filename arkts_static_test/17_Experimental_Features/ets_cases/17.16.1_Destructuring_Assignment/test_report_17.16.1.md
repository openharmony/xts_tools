# 17.16.1 Destructuring Assignment - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_16_1_001_PASS_ARRAY_DESTRUCTURING | 基本数组解构 `let [a, b] = arr` | ✅ 编译通过 |
| 002 | EXP2_17_16_1_002_PASS_ARRAY_SKIP | 跳过元素解构 `let [first, , third] = arr` | ✅ 编译通过 |
| 003 | EXP2_17_16_1_003_PASS_TUPLE_DESTRUCTURING | 元组解构 `let [num, str] = tup` | ✅ 编译通过 |
| 004 | EXP2_17_16_1_004_PASS_LITERAL_RHS | 字面量 RHS 解构 `let [a, b] = [100, 200]` | ✅ 编译通过 |
| 005 | EXP2_17_16_1_005_PASS_SINGLE_ELEMENT | 单元素数组解构 `let [val] = arr` | ✅ 编译通过 |

### compile-fail

| # | 用例 ID | 测试内容 | 错误码 | 结果 |
|---|---------|---------|--------|------|
| 010 | EXP2_17_16_1_010_FAIL_NON_ARRAY_RHS | 非数组 RHS `let [a, b] = 42` | ESY0049 | ✅ 编译失败 |
| 011 | EXP2_17_16_1_011_FAIL_DUPLICATE_BINDING | 重复变量绑定 `let [a, a] = arr` | ESE0351 | ✅ 编译失败 |
| 012 | EXP2_17_16_1_012_FAIL_MORE_LHS_THAN_TUPLE | LHS 超过元组元素数 | ESY82935 | ✅ 编译失败 |
| 013 | EXP2_17_16_1_013_FAIL_REST_ELEMENT | Rest 元素 `let [a, ...rest] = arr` | ESY165518 | ✅ 编译失败 |
| 014 | EXP2_17_16_1_014_FAIL_TYPE_ANNOTATION_IN_PATTERN | 解构模式内类型注释 `let [a: int, b]` | ESY0229 | ✅ 编译失败 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 020 | EXP2_17_16_1_020_RUNTIME_ARRAY_VALUES | `let [a, b] = [10, 20, 30]` 提取 a=10, b=20 | 2 | ✅ PASS |
| 021 | EXP2_17_16_1_021_RUNTIME_SKIP_ELEMENT | `let [first, , third]` 跳过第二个元素 | 2 | ✅ PASS |
| 022 | EXP2_17_16_1_022_RUNTIME_TUPLE_VALUES | `let [num, str] = [42, "world"]` 正确类型和值 | 2 | ✅ PASS |
| 023 | EXP2_17_16_1_023_RUNTIME_STRING_ARRAY | 字符串数组解构 `[first, , third]` | 2 | ✅ PASS |

---

## 关键发现

### 已支持的特性
1. **数组解构声明**：`let [a, b] = arr` 语法完整支持
2. **元组解构声明**：`let [num, str] = tup` 支持不同类型元素
3. **跳过元素**：`let [a, , b]` 中间逗号跳过元素
4. **字面量 RHS**：直接解构数组字面量 `let [a, b] = [1, 2]`

### 不支持的特性
1. **Rest 元素**：`let [a, ...rest]` → ESY165518 "Rest is not supported in destructuring"
2. **嵌套解构**：`let [[a,b], [c,d]]` → 编译器崩溃 (segfault) —— **严重 Bug**
3. **解构赋值到已有变量**：`[x, y] = arr`（非声明）→ 不支持
4. **类型注释在解构模式内**：`let [a: int, b]` → ESY0229 语法错误
5. **对象解构**：`let {x, y} = obj` → 因 inline type 限制不支持

### 编译器 Bug
- **嵌套解构崩溃**：es2panda 在处理 `let [[a,b],[c,d]] = arr` 时发生 segfault，这是一个需要上报的编译器崩溃 Bug。

---

## 后续运行命令

```bash
# 编译单个文件
/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda --extension=ets --output=/tmp/t.abc <file>.ets

# 运行
/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark \
  --load-runtimes=ets \
  --boot-panda-files=<BOOT_PANDA>:<BOOT_ETS> \
  /tmp/t.abc <MODNAME>.ETSGLOBAL::main
```
