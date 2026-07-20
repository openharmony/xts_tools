# 14.4.3 Ambient Iterable — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **7** | **7** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_04_03_001_PASS_BASIC_ITERABLE | 基本 Iterator<int> | ✅ PASS |
| 2 | AMB_14_04_03_002_PASS_ITERABLE_WITH_FIELD | 与字段共存 | ✅ PASS |
| 3 | AMB_14_04_03_003_PASS_ITERABLE_INT_RETURN | Iterator<boolean> | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_04_03_004_FAIL_TWO_ITERABLES | 两个 iterable | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_04_03_005_FAIL_NON_AMBIENT_ITERABLE | 非 ambient | compile-time error | 报错 | ✅ PASS |
| 3 | AMB_14_04_03_006_FAIL_NO_RETURN_TYPE | 缺返回类型 | compile-time error | 报错 | ✅ PASS |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_04_03_007_RUNTIME_ITERABLE_CONTEXT | iterable + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.4.3_Ambient_Iterable" bash run_ambient_declarations_cases_wsl.sh
```
