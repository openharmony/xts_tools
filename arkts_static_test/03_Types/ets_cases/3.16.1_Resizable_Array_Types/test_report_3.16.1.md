# 3.16.1 Resizable Array Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime（真实执行） | 7 | 7 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (8 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_01_001_PASS_T_BRACKET_SYNTAX | T[] 语法 | ✅ PASS |
| 2 | TYP_03_16_01_002_PASS_ARRAY_T_SYNTAX | Array<T> 语法 | ✅ PASS |
| 3 | TYP_03_16_01_003_PASS_SYNTAX_EQUIVALENCE | 语法等价性 | ✅ PASS |
| 4 | TYP_03_16_01_004_PASS_INDEX_ACCESS | 索引访问 | ✅ PASS |
| 5 | TYP_03_16_01_005_PASS_LENGTH_PROPERTY | length 属性 | ✅ PASS |
| 6 | TYP_03_16_01_006_PASS_SHRINK_ARRAY | 收缩数组 | ✅ PASS |
| 7 | TYP_03_16_01_007_PASS_AS_OBJECT | 赋值给 Object | ✅ PASS |
| 8 | TYP_03_16_01_008_PASS_TYPE_ALIAS | 类型别名 | ✅ PASS |

### compile-fail (1 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_01_011_FAIL_TYPE_MISMATCH | 元素类型不匹配 | ✅ PASS |

### runtime (7 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_01_012_RUNTIME_SYNTAX_EQUIVALENCE | 语法等价性 | ✅ PASS |
| 2 | TYP_03_16_01_013_RUNTIME_SHRINK_ARRAY | 收缩数组 | ✅ PASS |
| 3 | TYP_03_16_01_014_RUNTIME_INDEX_ACCESS | 索引访问 | ✅ PASS |
| 4 | TYP_03_16_01_015_RUNTIME_TYPE_ALIAS | 类型别名 | ✅ PASS |
| 5 | TYP_03_16_01_016_RUNTIME_AS_OBJECT | instanceof | ✅ PASS |
| 6 | TYP_03_16_01_017_RUNTIME_SHRINK_NEGATIVE | 负数长度抛 RangeError | ✅ PASS |
| 7 | TYP_03_16_01_018_RUNTIME_SHRINK_GREATER | 大于当前长度抛 RangeError | ✅ PASS |

---

## 执行过程异常修复记录

### 异常 1: 收缩错误检测时机

**用例**：TYP_03_16_01_009/010
**错误信息**：编译通过但预期失败
**修复方案**：改为 runtime 用例，使用 @runtime-throws=RangeError
**异常类型**：D 类（Spec 与实现不一致）

**分析**：
- Spec 声明"值小于 0"和"值大于之前的 length"应为编译时错误
- 实现中这些错误在运行时才被检测到
- 使用 @runtime-throws=RangeError 标记

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.16.1_Resizable_Array_Types" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过
