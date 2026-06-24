# 3.1 Predefined Types - 测试执行报告（v2 - 含真实 runtime 执行）

**测试日期：** 2026-06-11
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04
**运行脚本：** `03_Types/run_types_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 18 | 18 | 0 | 100% |
| compile-fail | 16 | 16 | 0 | 100% |
| **runtime（真实执行）** | **15** | **15** | **0** | **100%** |
| **总计** | **49** | **49** | **0** | **100%** |

---

## 运行时执行验证（关键改进）

相比 v1 版本，**所有 runtime 用例现在都通过 `ark VM` 实际执行 + 断言验证**：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 029 | 除零异常 | ✅ 抛 `ArithmeticError` |
| 030 | NaN/Infinity 行为 | ✅ NaN!=NaN, Inf>1e308 等 6 个断言 |
| 031 | Any instanceof | ✅ 类型识别 + null 验证 |
| 032 | 字符串拼接 | ✅ length, +, 模板 5 个断言 |
| 033 | bigint 大数 | ✅ 加减、幂、负数 3 个断言 |
| 034 | 数组动态操作 | ✅ push/pop/迭代 6 个断言 |
| 041 | **整数溢出回绕** | ✅ max+1=min, min-1=max（设计问题） |
| 042 | 浮点下溢 | ✅ gradual underflow 验证 |
| 043 | 短路求值 | ✅ 副作用计数器验证 |
| 044 | Object instanceof | ✅ 子类、装箱 3 个断言 |
| 045 | null 检查 | ✅ T\|null 收窄 3 个用例 |
| 046 | FixedArray 长度 | ✅ 元素可改长度不变 |
| 047 | 函数调用 | ✅ lambda、高阶 3 个断言 |
| 048 | char 比较 | ✅ ASCII 序、相等性 |
| 049 | try-catch 异常 | ✅ ArithmeticError 可恢复 |

---

## 详细结果

### compile-pass（18个，001~016 + 035~036）
所有 ArkTS 预定义类型基本声明用法均编译通过。

### compile-fail（16个，017~028 + 037~040）
所有违反类型规则的用例均按预期产生编译错误。

### runtime（15个，029~034 + 041~049）
所有用例真实执行通过，包括 1 个预期抛出 ArithmeticError 的负向运行时验证。

---

## 与 v1 对比改进

| 维度 | v1（旧） | v2（当前） |
|------|---------|---------|
| runtime 用例总数 | 6 | 15 |
| runtime 实际执行 | ❌ 仅编译 | ✅ ark 实际运行 |
| 含 assert 验证 | ❌ | ✅ |
| 含异常抛出验证 | ❌ | ✅ (029, 049) |
| char 类型覆盖 | ❌ 完全缺失 | ✅ 035-037, 048 |
| 整数溢出验证 | ❌ | ✅ 041 |
| 短路求值验证 | ❌ | ✅ 043 |
| 用例总数 | 34 | 49 |

---

## 后续运行

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
bash run_types_cases_wsl.sh
```

支持指定章节：
```bash
SECTIONS="3.1_Predefined_Types 3.2_User_Defined_Types" bash run_types_cases_wsl.sh
```