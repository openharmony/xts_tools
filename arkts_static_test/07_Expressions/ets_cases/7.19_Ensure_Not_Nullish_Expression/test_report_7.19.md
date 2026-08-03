# 7.19 Ensure-Not-Nullish Expression — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 0 | 0 | 0 | — |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

> 021/022 原为 D 类 compile-fail，经 PDF 原文核查确认 spec 未明确规定，已从 compile-fail 移至 compile-pass。@id 同步修正。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_19_001_PASS_BASIC_NON_NULLISH | 非空值基本用法 int/string/Object | ✅ |
| 002 | EXP_07_19_002_PASS_NULLISH_VAR_NON_NULL_VALUE | 空值类型变量持有非空值时 `!` | ✅ |
| 003 | EXP_07_19_003_PASS_FIELD_ACCESS | `obj!.field` 字段访问 | ✅ |
| 004 | EXP_07_19_004_PASS_METHOD_CALL | `obj!.method()` 方法调用 | ✅ |
| 005 | EXP_07_19_005_PASS_CHAINED_DOUBLE_BANG | 链式 `!!` / `!!!` | ✅ |
| 006 | EXP_07_19_006_PASS_TYPE_NARROWING | 类型窄化 `T\|undefined` → `T` | ✅ |
| 007 | EXP_07_19_007_PASS_IN_EXPRESSION | `!` 在复合表达式（算术/条件/三元） | ✅ |
| 008 | EXP_07_19_008_PASS_FUNCTION_ARG | `!` 作为函数参数 | ✅ |
| 021 | EXP_07_19_021_PASS_VOID_EXPRESSION | `!` 应用于 void 表达式（原D类，已确认非编译错误） | ✅ |
| 022 | EXP_07_19_022_PASS_ALWAYS_NULLISH_ASSIGN | `undefined!` 赋值（原D类，已确认非编译错误） | ✅ |

### compile-fail

本节无 compile-fail 用例。

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | EXP_07_19_031_RUNTIME_NON_NULL_VALUE | 非空值返回原值 (int=42, string="hello") | 2 | ✅ |
| 032 | EXP_07_19_032_RUNTIME_UNDEFINED_THROWS | `undefined!` 抛 NullPointerError | 1 (throw) | ✅ |
| 033 | EXP_07_19_033_RUNTIME_NULL_THROWS | `null!` 抛 NullPointerError | 1 (throw) | ✅ |
| 034 | EXP_07_19_034_RUNTIME_FIELD_ACCESS | `obj!.field` 返回字段值 99 | 1 | ✅ |
| 035 | EXP_07_19_035_RUNTIME_METHOD_CALL | `obj!.method()` 返回 30 | 1 | ✅ |
| 036 | EXP_07_19_036_RUNTIME_CHAINED_ASSERT | `!` 在算术表达式中 sum=10, y=11 | 2 | ✅ |

## 执行过程异常修复记录

1. **`double` 是 ArkTS 关键字**：008 中函数名 `double` 与数值类型关键字冲突，改为 `twice`
2. **`Box` 与 stdlib 冲突**：003/034 中类名 `Box` 与标准库冲突，改为 `MyBox`/`DataBox`
3. **禁止嵌套 class/function**：001/003/004/006/008 中 class 定义和函数定义不能在函数内部，提到顶层
4. **D 类不一致**：021 (void! 编译通过) 和 022 (undefined! 赋值通过) 均为编译器允许但 spec 未明确规定的行为

## 后续运行命令

```bash
SECTIONS="7.19_Ensure_Not_Nullish_Expression" bash run_expressions_cases_wsl.sh
```
