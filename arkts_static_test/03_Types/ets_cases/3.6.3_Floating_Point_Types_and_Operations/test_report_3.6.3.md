# 3.6.3 Floating-Point Types and Operations - 测试执行报告（v2）

**测试日期：** 2026-06-11（v2 - 新增浮点除零完整覆盖）
**对应规范：** ArkTS Static Spec §3.6.3

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 18 | 18 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** |

**🎯 一次通过率：100%**

---

## 详细执行结果

### compile-pass（10）
001-010：声明/比较/运算/幂/widening 等

### compile-fail（2）
- 011 浮点 ↔ boolean 互转
- 012 字面量超范围

### runtime（18）
- 013 NaN 性质
- 014 Infinity 性质
- 015 round-toward-zero
- 016 上溢 → ±Inf
- 017 gradual underflow
- 018 类型推升 double
- 019 浮点除零 → ±Inf/NaN
- 020 字符串拼接 decimal
- **021 5.0/0.0 → +Infinity ⭐ NEW**
- **022 -5.0/0.0 → -Infinity ⭐ NEW**
- **023 0.0/0.0 → NaN ⭐ NEW**
- **024 let 变量 0.0 除零 ⭐ NEW**
- **025 函数内 const 0.0 除零 ⭐ NEW**
- **026 模块级 const 0.0 除零 ⭐ NEW**
- **027 常量表达式 (1.0-1.0) 除零 ⭐ NEW**
- **028 5.0%0.0 → NaN ⭐ NEW**
- **029 float32 字面量除零 ⭐ NEW**
- **030 int/0.0 混合类型除零 ⭐ NEW**

---

## 重要发现

通过新增 10 个浮点除零用例验证：**浮点除零设计完全符合 IEEE 754，三语言（ArkTS/Java/Swift）行为完全一致**。

详见 `comparison_report_arkts_java_swift.md` v2。

**关键对比：**

| 类型 | ArkTS 行为 |
|------|---------|
| 整数除零 | 字面量编译错误，运行时抛 ArithmeticError |
| 浮点除零 | 全部通过编译，返回 ±Inf/NaN（IEEE 754）|

---

## 后续运行

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.6.3_Floating_Point_Types_and_Operations" bash run_types_cases_wsl.sh
```