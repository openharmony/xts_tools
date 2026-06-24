# 3.18.1 Type Function - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 1 | 0 | 1* | 0%* |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **5** | **4** | **1*** | **80%*** |

> *1 个 FAIL 用例是 **spec 要求报错但实现允许通过** 的 D 类异常（Spec 与实现不一致），
> 该用例保留在 compile-fail 目录并标注 ⚠️ SPEC 不一致。

## D 类 Spec 不一致用例明细

| 用例 ID | 分类 | spec 要求 | 实际行为 | 说明 |
|---------|------|----------|---------|------|
| TYP_03_18_01_003_FAIL | compile-fail | Function 不能直接调用，应报 compile-time error | 编译通过 | spec 3.18.1 规定 "A value of type Function cannot be called directly" |

## 详细执行结果

### compile-pass (2 个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 1 | TYP_03_18_01_001 | Function 类型赋值 | ✅ PASS |
| 2 | TYP_03_18_01_002 | Function.name 属性 | ✅ PASS |

### compile-fail (1 个)

| # | 用例 ID | 测试内容 | 结果 | 备注 |
|---|---------|----------|------|------|
| 1 | TYP_03_18_01_003 | Function 直接调用 | ❌ D类 | ⚠️ SPEC 不一致：实现编译通过 |

### runtime (2 个)

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|----------|--------|------|
| 1 | TYP_03_18_01_004 | unsafeCall 正确调用 + name 属性 | 4 | ✅ |
| 2 | TYP_03_18_01_005 | unsafeCall 参数不匹配 runtime error | 1 | ✅ |

---

## 执行过程异常修复记录

| 原始用例 | 问题 | 修复 | 分类 |
|---------|------|------|------|
| 003 (FAIL) | Function 直接调用不会编译失败 | 保留 FAIL 用例，记录 spec 不一致 | D 类 |

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.18.1_Type_Function" bash run_types_cases_wsl.sh
```

---

**报告生成时间**：2026-06-21
**报告状态**：1 处 SPEC 不一致已标注