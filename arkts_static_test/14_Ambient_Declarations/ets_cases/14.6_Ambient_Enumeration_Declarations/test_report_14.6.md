# 14.6 Ambient Enumeration Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 3 | 1 | 2 | 33% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **8** | **6** | **2** | **75%** |

> compile-fail 2 个失败为 D 类 Spec 不一致（成员初始化器检查缺失），编译器未强制执行，用例保留为看护。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_06_001_PASS_BASIC_ENUM | 基本 enum | ✅ PASS |
| 2 | AMB_14_06_002_PASS_SINGLE_MEMBER | 单成员 | ✅ PASS |
| 3 | AMB_14_06_003_PASS_EMPTY_ENUM | 空 enum | ✅ PASS |
| 4 | AMB_14_06_004_PASS_ENUM_WITH_BASE_TYPE | 基类型 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_06_005_FAIL_CONST_ENUM | const enum | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_06_006_FAIL_MEMBER_INITIALIZER | 成员初始化器 | compile-time error | 编译通过 | ⚠️ D 类 |
| 3 | AMB_14_06_007_FAIL_MIXED_INITIALIZER | 混合初始化器 | compile-time error | 编译通过 | ⚠️ D 类 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_06_008_RUNTIME_AMBIENT_ENUM_CONTEXT | enum + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.6_Ambient_Enumeration_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
