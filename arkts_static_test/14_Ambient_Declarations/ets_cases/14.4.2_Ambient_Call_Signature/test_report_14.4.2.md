# 14.4.2 Ambient Call Signature — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **9** | **9** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_04_02_001_PASS_SINGLE_SIGNATURE | 单个 signature | ✅ PASS |
| 2 | AMB_14_04_02_002_PASS_TWO_DISTINCT | 两个 distinct | ✅ PASS |
| 3 | AMB_14_04_02_003_PASS_THREE_DISTINCT | 三个 distinct | ✅ PASS |
| 4 | AMB_14_04_02_004_PASS_DIFFERENT_PARAM_COUNT | 参数个数不同 | ✅ PASS |
| 5 | AMB_14_04_02_005_PASS_WITH_OTHER_MEMBERS | 与其余成员共存 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_04_02_006_FAIL_NON_DISTINCT | non-distinct | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_04_02_007_FAIL_NON_AMBIENT | 非 ambient | compile-time error | 报错 | ✅ PASS |
| 3 | AMB_14_04_02_008_FAIL_NO_RETURN_TYPE | 缺返回类型 | compile-time error | 报错 | ✅ PASS |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_04_02_009_RUNTIME_CALL_SIGNATURE_CONTEXT | call sig + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.4.2_Ambient_Call_Signature" bash run_ambient_declarations_cases_wsl.sh
```
