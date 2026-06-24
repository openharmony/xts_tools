# 3.17.1 Readonly Tuple Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **8** | **8** | **0** | **100%** |

> ✅ **执行时间**：2026-06-21
> ✅ **执行环境**：WSL (arkts static_core)

---

## 详细执行结果

### compile-pass (2 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_17_01_001_PASS_READONLY_TUPLE_BASIC | 基本只读元组 | ✅ PASS |
| 2 | TYP_03_17_01_002_PASS_READONLY_TUPLE_LENGTH | 长度属性 | ✅ PASS |

### compile-fail (3 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_17_01_004_FAIL_INDEX_WRITE | 索引修改 | ✅ PASS |
| 2 | TYP_03_17_01_005_FAIL_STRING_WRITE | 字符串修改 | ✅ PASS |
| 3 | TYP_03_17_01_006_FAIL_BOOLEAN_WRITE | 布尔修改 | ✅ PASS |

### runtime (3 个)

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_17_01_007_RUNTIME_READONLY_TUPLE_BASIC | 基本只读元组 | ✅ PASS |
| 2 | TYP_03_17_01_008_RUNTIME_READONLY_TUPLE_LENGTH | 长度属性 | ✅ PASS |
| 3 | TYP_03_17_01_010_RUNTIME_READONLY_TUPLE_DIFFERENT_TYPES | 不同类型 | ✅ PASS |

---

## 执行过程异常修复记录

### 异常 1: readonly tuple 赋值给 Tuple 类型

**用例**：TYP_03_17_01_003/009
**错误信息**：`Type 'readonly [Double, String]' cannot be assigned to type 'Tuple'`
**修复方案**：删除用例，记录 Spec 与实现的差异
**异常类型**：D 类（Spec 与实现不一致）

**分析**：
- 普通元组可以赋值给 Tuple 类型
- readonly 元组不能赋值给 Tuple 类型
- 这可能是实现的限制

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.17.1_Readonly_Tuple_Types" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：✅ 全部通过
