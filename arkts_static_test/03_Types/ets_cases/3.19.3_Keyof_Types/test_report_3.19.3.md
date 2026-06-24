# 3.19.3 Keyof Types - 测试执行报告

**执行日期：** 2026-06-18

## 统计

| 分类 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 6 | 6 | 0 |
| compile-fail | 4 | 3 | 1 |
| runtime | 2 | 2 | 0 |
| **总计** | **12** | **11** | **1** |

## 当前未解决异常

| 用例 | 预期 | 实际 | 状态 |
|------|------|------|------|
| TYP_03_19_03_007_FAIL_KEYOF_NON_CLASS | compile-fail | 编译通过 | 已记录 issue_report.md：D-3.19-03 |

## 说明

Spec §3.19.3 要求 `keyof` 只能作用于 class/interface 类型。`keyof number` 应产生 compile-time error，但 ArkTS 实际编译通过。
