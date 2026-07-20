# 14.4.1 Ambient Indexer — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **10** | **10** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_04_01_001_PASS_NUMBER_INDEX | number 索引 | ✅ PASS |
| 2 | AMB_14_04_01_002_PASS_INT_INDEX | int 索引 | ✅ PASS |
| 3 | AMB_14_04_01_003_PASS_STRING_INDEX | string 索引 | ✅ PASS |
| 4 | AMB_14_04_01_004_PASS_READONLY_INDEX | readonly 索引 | ✅ PASS |
| 5 | AMB_14_04_01_005_PASS_OBJECT_RETURN | Object 返回 | ✅ PASS |
| 6 | AMB_14_04_01_006_PASS_CLASS_WITH_OTHER_MEMBERS | 与字段共存 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_04_01_007_FAIL_TWO_INDEXERS | 两个 indexer | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_04_01_008_FAIL_NON_AMBIENT_INDEXER | 非 ambient | compile-time error | 报错 | ✅ PASS |
| 3 | AMB_14_04_01_009_FAIL_WRONG_INDEX_SYNTAX | 无返回类型 | compile-time error | 报错 | ✅ PASS |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_04_01_010_RUNTIME_INDEXER_CONTEXT | indexer + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.4.1_Ambient_Indexer" bash run_ambient_declarations_cases_wsl.sh
```
