# 17.16 Pattern Matching - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 4 | 3 | 1 | 75% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **12** | **11** | **1** | **92%** |

> 注：1 个 compile-fail 失败为 SPEC 不一致（D 类），详见下方。

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_16_001_PASS_INSTANCEOF_STRING | Object 变量使用 instanceof 检查 String 类型 | ✅ 编译通过 |
| 002 | EXP2_17_16_002_PASS_INSTANCEOF_CLASS | instanceof 检查用户自定义类层次（Animal/Dog/Cat） | ✅ 编译通过 |
| 003 | EXP2_17_16_003_PASS_INSTANCEOF_BRANCH | 基于 instanceof 的条件分支——模拟模式匹配类型分发 | ✅ 编译通过 |
| 004 | EXP2_17_16_004_PASS_INSTANCEOF_MULTI | 多个 instanceof 检查组合（String/Number/Object） | ✅ 编译通过 |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 010 | EXP2_17_16_010_FAIL_IS_OPERATOR | `is` 运算符触发 ESY169587 | ✅ 编译失败（符合预期） |
| 011 | EXP2_17_16_011_FAIL_TYPE_PREDICATE | 类型谓词 `val is string` 触发错误 | ✅ 编译失败（符合预期） |
| 012 | EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH | instanceof 检查不兼容类型——仅 W1001506 警告 | ⚠️ SPEC 不一致（编译通过，仅警告） |
| 013 | EXP2_17_16_013_FAIL_WRONG_TYPE_CONTEXT | instanceof 右侧为变量而非类型引用 | ✅ 编译失败（符合预期） |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 020 | EXP2_17_16_020_RUNTIME_INSTANCEOF_STRING | instanceof String 返回 true, Number 返回 false | 2 | ✅ PASS |
| 021 | EXP2_17_16_021_RUNTIME_INSTANCEOF_CLASS | 子类/父类 instanceof 层次检查 | 4 | ✅ PASS |
| 022 | EXP2_17_16_022_RUNTIME_INSTANCEOF_BRANCH | instanceof 多分支类型分发 (Apple/Banana/Fruit) | 3 | ✅ PASS |
| 023 | EXP2_17_16_023_RUNTIME_INSTANCEOF_NULL | null instanceof 始终为 false + 非 null 检查 | 3 | ✅ PASS |

---

## SPEC 不一致详情

### ⚠️ 012 — instanceof 不兼容类型检查仅警告不拒绝

- **用例 ID：** EXP2_17_16_012_FAIL_INSTANCEOF_MISMATCH
- **期望：** 编译错误（spec 期望对不兼容类型产生编译错误）
- **实际：** 仅 W1001506 警告，编译通过
- **分类：** D 类（Spec 与实现不一致）
- **说明：** ArkTS 编译器对编译期可确定结果的 instanceof 表达式仅发出 Warning，不拒绝编译。这与其余静态语言（如 Java 的 `inconvertible types` 编译错误）不同。

---

## 关键发现

1. **`is` 运算符不支持**：ArkTS 明确提示 "Use 'instanceof' instead"（ESY169587）
2. **类型谓词不支持**：TypeScript 的 `x is Type` 返回类型谓词在 ArkTS 中不编译
3. **不存在 `match` 关键字/表达式**：ArkTS 无独立的模式匹配构造
4. **instanceof 是唯一运行时类型检查手段**：对 instanceof 的依赖程度高
5. **instanceof 编译期已知检查仅警告**：不阻止编译（与 Java 的 `inconvertible types` 编译错误不同）

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
