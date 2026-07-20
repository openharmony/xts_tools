# 14.5 Ambient Interface Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_05_001_PASS_EMPTY_INTERFACE | 空接口 | ✅ PASS |
| 2 | AMB_14_05_002_PASS_INTERFACE_PROPERTIES | 属性 | ✅ PASS |
| 3 | AMB_14_05_003_PASS_INTERFACE_METHODS | 方法 | ✅ PASS |
| 4 | AMB_14_05_004_PASS_INTERFACE_DEFAULT_METHOD | default 方法 | ✅ PASS |
| 5 | AMB_14_05_005_PASS_INTERFACE_EXTENDS | extends | ✅ PASS |
| 6 | AMB_14_05_006_PASS_INTERFACE_GENERIC | 泛型 | ✅ PASS |
| 7 | AMB_14_05_007_PASS_INTERFACE_INDEXER | indexer | ✅ PASS |
| 8 | AMB_14_05_008_PASS_INTERFACE_ITERABLE | iterable | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_05_009_FAIL_METHOD_BODY | 方法有体 | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_05_010_FAIL_METHOD_NO_RETURN_TYPE | 无返回类型 | compile-time error | 报错 | ✅ PASS |
| 3 | AMB_14_05_011_FAIL_TWO_INDEXERS | 两个 indexer | compile-time error | 报错 | ✅ PASS |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_05_012_RUNTIME_AMBIENT_INTERFACE_CONTEXT | interface + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.5_Ambient_Interface_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
