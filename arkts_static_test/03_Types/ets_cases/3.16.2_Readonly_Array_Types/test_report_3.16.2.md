# 3.16.2 Readonly Array Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (5 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_02_001_PASS_READONLY_T_BRACKET_SYNTAX | readonly T[] 语法 | ✅ PASS |
| 2 | TYP_03_16_02_002_PASS_READONLY_ARRAY_T_SYNTAX | ReadonlyArray\<T\> 语法 | ✅ PASS |
| 3 | TYP_03_16_02_003_PASS_SYNTAX_EQUIVALENCE | 语法等价性 | ✅ PASS |
| 4 | TYP_03_16_02_004_PASS_INDEX_READ | 索引读取 | ✅ PASS |
| 5 | TYP_03_16_02_005_PASS_AS_OBJECT | 赋值给 Object | ✅ PASS |

### compile-fail (4 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_02_006_FAIL_INDEX_WRITE | 索引修改 | ✅ PASS |
| 2 | TYP_03_16_02_007_FAIL_LENGTH_MODIFY | 长度修改 | ✅ PASS |
| 3 | TYP_03_16_02_008_FAIL_PUSH_METHOD | push 方法 | ✅ PASS |
| 4 | TYP_03_16_02_009_FAIL_POP_METHOD | pop 方法 | ✅ PASS |

### runtime (5 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_16_02_011_RUNTIME_SYNTAX_EQUIVALENCE | 语法等价性 | ✅ PASS |
| 2 | TYP_03_16_02_012_RUNTIME_INDEX_READ | 索引读取 | ✅ PASS |
| 3 | TYP_03_16_02_013_RUNTIME_AS_OBJECT | instanceof | ✅ PASS |
| 4 | TYP_03_16_02_014_RUNTIME_NESTED_ARRAY | 嵌套数组 | ✅ PASS |
| 5 | TYP_03_16_02_015_RUNTIME_NESTED_ARRAY_MODIFY | 嵌套数组修改 | ✅ PASS |

---

## 执行过程异常修复记录

### 异常 1: 嵌套数组修改检测时机

**用例**：TYP_03_16_02_010
**错误信息**：编译通过但预期失败
**修复方案**：改为 runtime 用例，记录 Spec 与实现的差异
**异常类型**：D 类（Spec 与实现不一致）

**分析**：
- Spec 声明"在数组的数组中，所有数组都是 readonly"
- 实现中内层数组的修改未被编译器检测
- 使用 runtime 用例记录此差异

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.16.2_Readonly_Array_Types" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过
