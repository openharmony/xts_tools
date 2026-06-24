# 3.6.2 Integer Types and Operations - 测试执行报告（v2）

**测试日期：** 2026-06-11（v2 - 新增除零完整覆盖）
**对应规范：** ArkTS Static Spec §3.6.2

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 9 | 9 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **29** | **29** | **0** | **100%** |

**🎯 最终通过率：100%**

---

## 详细执行结果

### compile-pass（10）
001-010：关系/算术/移位/按位/三元/字符串/幂等运算

### compile-fail（9）
- 011 整数 ↔ boolean 互转
- 012 移位浮点操作数
- 013 按位浮点操作数
- **022 整数字面量除零（10/0）⭐ NEW**
- **023 函数体内字面量除零 ⭐ NEW**
- **024 函数内 const 除零 ⭐ NEW**
- **025 常量表达式除零 (1-1) ⭐ NEW**
- **026 取模零 (10%0) ⭐ NEW**
- **029 bigint 字面量除零 (10n/0n) ⭐ NEW**

### runtime（10）
- 014 long+int 类型推升
- 015 byte+short 类型推升
- 016 整数溢出回绕
- 017 除零抛 ArithmeticError
- 018 取模零抛 ArithmeticError
- 019 移位行为
- 020 按位运算
- 021 字符串拼接 decimal
- **027 let 变量除零（运行时抛）⭐ NEW**
- **028 模块级 const 除零（运行时抛 - 设计 bug）⭐ NEW**

---

## 重要发现 ⭐ NEW

通过新增的 8 个除零用例发现 **ArkTS 设计 bug**：
- 函数内 `const a = 0; 10/a` → 编译错误（符合预期）
- 模块级 `const a = 0; 10/a` → **编译通过（应该也编译错误）**

**已记入：**
- `design_issues_report_3.6.2.md` 问题 U
- `03_Types/issue_report.md` TYP-U

---

## 后续运行

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.6.2_Integer_Types_and_Operations" bash run_types_cases_wsl.sh
```