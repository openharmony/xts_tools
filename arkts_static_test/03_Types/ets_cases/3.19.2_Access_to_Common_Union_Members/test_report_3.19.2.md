# 3.19.2 Access to Common Union Members - 测试执行报告

**执行日期：** 2026-06-18

## 统计

| 分类 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 4 | 4 | 0 |
| compile-fail | 5 | 4 | 1 |
| runtime | 2 | 2 | 0 |
| **总计** | **11** | **10** | **1** |

## 当前未解决异常

| 用例 | 预期 | 实际 | 状态 |
|------|------|------|------|
| TYP_03_19_02_005_FAIL_DIFF_FIELD_TYPE | compile-fail | 编译通过 | 已记录 issue_report.md：D-3.19-02 |

## 说明

Spec §3.19.2 要求 union 分支中同名字段类型不同应编译错误：

```typescript
class A { s: string = "aa" }
class B { s: number = 3.14 }
let u: A | B = new A()
console.log(u.s) // spec 预期 compile-time error
```

实测编译通过，因此保留 FAIL 用例并记录为 D 类 Spec/实现不一致。
