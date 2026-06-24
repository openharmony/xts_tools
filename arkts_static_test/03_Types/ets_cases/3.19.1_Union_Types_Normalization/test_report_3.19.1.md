# 3.19.1 Union Types Normalization - 测试执行报告

**执行日期：** 2026-06-18
**章节：** 3.19.1 Union Types Normalization

## 统计

| 分类 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 8 | 8 | 0 |
| compile-fail | 5 | 4 | 1 |
| runtime | 4 | 4 | 0 |
| **总计** | **17** | **16** | **1** |

## 当前未解决异常

| 用例 | 预期 | 实际 | 状态 |
|------|------|------|------|
| TYP_03_19_01_012_FAIL_READONLY_WRITE | compile-fail | 编译通过 | 已记入 issue_report.md: D-3.19.1-01 |

## 说明

该失败不是用例写错，而是 ArkTS 实现与 spec §3.19.1 不一致：

```typescript
type U = number[] | readonly number[]
let arr: number[] = [1.0, 2.0]
let u: U = arr
u[0] = 3.0 // spec 预期报错，实际编译通过
```

Spec 明确说明：
`(number[]) | (readonly number[])` 归一化为 `readonly number[]`，readonly version wins。

因此该 FAIL 用例按 v4.3 规则保留，不改 PASS。
