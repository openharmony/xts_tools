# 14.1 Ambient Constant or Variable Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 14 | 14 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **26** | **26** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_01_001_PASS_LET_INT | declare let int 类型 | ✅ PASS |
| 2 | AMB_14_01_002_PASS_LET_STRING | declare let string 类型 | ✅ PASS |
| 3 | AMB_14_01_003_PASS_LET_BOOLEAN | declare let boolean 类型 | ✅ PASS |
| 4 | AMB_14_01_004_PASS_LET_DOUBLE | declare let double 类型 | ✅ PASS |
| 5 | AMB_14_01_005_PASS_LET_ARRAY | declare let 数组类型 | ✅ PASS |
| 6 | AMB_14_01_006_PASS_CONST_INT | declare const int 类型 | ✅ PASS |
| 7 | AMB_14_01_007_PASS_CONST_STRING | declare const string 类型 | ✅ PASS |
| 8 | AMB_14_01_008_PASS_CONST_BOOLEAN | declare const boolean 类型 | ✅ PASS |
| 9 | AMB_14_01_009_PASS_MULTIPLE_LET | declare let 多声明 | ✅ PASS |
| 10 | AMB_14_01_010_PASS_MULTIPLE_CONST | declare const 多声明 | ✅ PASS |
| 11 | AMB_14_01_011_PASS_LET_OBJECT | declare let Object 类型 | ✅ PASS |
| 12 | AMB_14_01_012_PASS_LET_ANY | declare let Any 类型 | ✅ PASS |
| 13 | AMB_14_01_013_PASS_LET_UNION | declare let 联合类型 | ✅ PASS |
| 14 | AMB_14_01_014_PASS_LET_FUNCTION_TYPE | declare let 函数类型 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_01_015_FAIL_LET_WITH_INIT | let 有初始化器 | ✅ PASS（ESE125125 报错） |
| 2 | AMB_14_01_016_FAIL_CONST_WITH_INIT | const 有初始化器 | ✅ PASS（ESE125125 报错） |
| 3 | AMB_14_01_017_FAIL_LET_NO_TYPE | let 无类型注解 | ✅ PASS（ESE1111 报错） |
| 4 | AMB_14_01_018_FAIL_CONST_NO_TYPE | const 无类型注解 | ✅ PASS（ESE1111 报错） |
| 5 | AMB_14_01_019_FAIL_LET_STRING_INIT | let 字符串初始化器 | ✅ PASS（ESE125125 报错） |
| 6 | AMB_14_01_020_FAIL_CONST_STRING_INIT | const 字符串初始化器 | ✅ PASS（ESE125125 报错） |
| 7 | AMB_14_01_021_FAIL_LET_BOOL_INIT | let 布尔初始化器 | ✅ PASS（ESE125125 报错） |
| 8 | AMB_14_01_022_FAIL_CONST_BOOL_INIT | const 布尔初始化器 | ✅ PASS（ESE125125 报错） |
| 9 | AMB_14_01_023_FAIL_LET_ARRAY_INIT | let 数组初始化器 | ✅ PASS（ESE125125 报错） |
| 10 | AMB_14_01_024_FAIL_MULTI_WITH_INIT | 多声明含初始化器 | ✅ PASS（ESE125125 报错） |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_01_025_RUNTIME_AMBIENT_CONTEXT | ambient 声明与 main 共存 | 1 | ✅ PASS |
| 2 | AMB_14_01_026_RUNTIME_AMBIENT_WITH_MAIN | 多 ambient 声明+正常代码 | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.1_Ambient_Constant_or_Variable_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
