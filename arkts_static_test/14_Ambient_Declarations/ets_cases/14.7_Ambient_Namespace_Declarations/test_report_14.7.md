# 14.7 Ambient Namespace Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 9 | 9 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_07_001_PASS_EMPTY_NAMESPACE | 空 namespace | ✅ PASS |
| 2 | AMB_14_07_002_PASS_NS_WITH_FUNCTION | 含 function | ✅ PASS |
| 3 | AMB_14_07_003_PASS_NS_WITH_VARIABLE | 含 variable | ✅ PASS |
| 4 | AMB_14_07_004_PASS_NS_NESTED | 嵌套 namespace | ✅ PASS |
| 5 | AMB_14_07_005_PASS_NS_MIXED_MEMBERS | 多种成员 | ✅ PASS |
| 6 | AMB_14_07_006_PASS_NS_TYPE_ALIAS | type alias | ✅ PASS |
| 7 | AMB_14_07_008_PASS_NS_ACCESSOR | 访问器 | ✅ PASS |
| 8 | AMB_14_07_009_PASS_NS_CLASS | class | ✅ PASS |
| 9 | AMB_14_07_010_PASS_NS_INTERFACE | interface | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_07_011_FAIL_EXPORT_NONEXISTENT | export 不存在的成员 | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_07_013_FAIL_CONST_ENUM | const enum 不支持 | compile-time error | 报错 | ✅ PASS |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_07_012_RUNTIME_AMBIENT_NS_CONTEXT | namespace + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.7_Ambient_Namespace_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
