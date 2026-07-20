# 14.2 Ambient Function Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_02_001_PASS_BASIC_VOID | declare function void 返回 | ✅ PASS |
| 2 | AMB_14_02_002_PASS_MULTI_PARAM | declare function 多参数 | ✅ PASS |
| 3 | AMB_14_02_003_PASS_OPTIONAL_PARAM | declare function 可选参数 | ✅ PASS |
| 4 | AMB_14_02_004_PASS_NO_PARAM | declare function 无参数 | ✅ PASS |
| 5 | AMB_14_02_005_PASS_ARRAY_RETURN | declare function 数组返回 | ✅ PASS |
| 6 | AMB_14_02_006_PASS_OBJECT_RETURN | declare function Object 返回 | ✅ PASS |
| 7 | AMB_14_02_007_PASS_UNION_PARAM | declare function 联合类型参数 | ✅ PASS |
| 8 | AMB_14_02_008_PASS_MULTI_PARAM_OPTIONAL | declare function 混合参数 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_02_009_FAIL_NO_RETURN_TYPE | 无返回类型 | ✅ PASS |
| 2 | AMB_14_02_010_FAIL_DEFAULT_PARAM | 参数默认值 | ✅ PASS |
| 3 | AMB_14_02_011_FAIL_FUNC_BODY | 有函数体 | ✅ PASS |
| 4 | AMB_14_02_012_FAIL_ASYNC_MODIFIER | async 修饰符 | ✅ PASS |
| 5 | AMB_14_02_013_FAIL_OPTIONAL_DEFAULT_PARAM | 可选参数+默认值 | ✅ PASS |
| 6 | AMB_14_02_014_FAIL_MULTI_DEFAULT_PARAM | 多参数含默认值 | ✅ PASS |
| 7 | AMB_14_02_015_FAIL_DEFAULT_PARAM_BOOL | 布尔默认值 | ✅ PASS |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_02_016_RUNTIME_AMBIENT_FUNC_CONTEXT | ambient function + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.2_Ambient_Function_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
