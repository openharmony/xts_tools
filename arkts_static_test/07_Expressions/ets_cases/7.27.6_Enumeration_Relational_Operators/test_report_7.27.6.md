# 7.27.6 Enumeration Relational Operators - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 4 | 2 | 2（SPEC不一致） | 50% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **13** | **11** | **2** | **84.6%** |

> 注：2 个 compile-fail 用例未通过是因为 ArkTS 实现与 spec 不一致（D 类），并非用例设计问题。Spec 对枚举与非枚举操作数要求编译时错误，实现允许隐式转换为基类型后比较。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_27_06_001_PASS_ENUM_INT_BASIC | int 基类型枚举四个关系运算符（`Color.Red < Color.Green`） | ✅ |
| 002 | EXP_07_27_06_002_PASS_ENUM_LONG_BASIC | long 基类型显式枚举（`LongEnum.A < LongEnum.B`） | ✅ |
| 003 | EXP_07_27_06_003_PASS_ENUM_BYTE_BASIC | byte 基类型显式枚举 | ✅ |
| 004 | EXP_07_27_06_004_PASS_ENUM_STRING_BASIC | string 基类型枚举字典序比较 | ✅ |
| 005 | EXP_07_27_06_005_PASS_ENUM_INT_MIXED | int 基类型混合初始化（Red=0, Blue=5, Green=6） | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 006 | EXP_07_27_06_011_FAIL_DIFFERENT_ENUM | 不同类型枚举比较（`E1.A < E2.C`） | ✅ (expected error) | |
| 007 | EXP_07_27_06_012_FAIL_ENUM_VS_NUMERIC | 枚举与数值类型比较（`Color.Red < 5`） | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 008 | EXP_07_27_06_013_FAIL_ENUM_VS_STRING | 枚举与字符串比较（`StrEnum.A < "world"`） | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 009 | EXP_07_27_06_014_FAIL_DIFFERENT_ENUM_SAME_BASE | 不同枚举同基类型（`E1: int vs E2: int`） | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | EXP_07_27_06_021_RUNTIME_INT_ORDER | int 基类型枚举序比较：4 运算符 × 3 组合 | 12 | ✅ |
| 011 | EXP_07_27_06_022_RUNTIME_LONG_ORDER | long 基类型枚举序比较（A=100, B=200, C=300, D=400） | 12 | ✅ |
| 012 | EXP_07_27_06_023_RUNTIME_STRING_ORDER | string 基类型字典序比较（"apple"<"banana"<"cherry"<"date"） | 12 | ✅ |
| 013 | EXP_07_27_06_024_RUNTIME_BYTE_ORDER | byte 基类型枚举序比较（A=10, B=20, C=30, D=40） | 12 | ✅ |
| | **合计** | | **48** | |

### 跨语言验证

| 语言 | 断言数 | 通过 | 通过率 | 备注 |
|:----:|:------:|:----:|:------:|------|
| Java | 18 | 18 | 100% | `compareTo()` 替代关系运算符，基于 ordinal |
| Swift | 36 | 36 | 100% | 需自定义 `Comparable` 协议实现 |

## 执行过程异常修复记录

1. **2 个 D 类异常**：实现比 Spec 更宽松，允许枚举与基类型值比较。Spec 7.27.6 要求"两个操作数必须为相同枚举类型"，但编译器实现了 enum 到基类型的隐式转换，使比较退化为基类型之间的比较。建议更新 Spec 明确允许此行为（类似 C#）。
   - D-1 (EXP_07_27_06_012): `Color.Red < 5` → 实现允许 enum→int 隐式转换后比较
   - D-2 (EXP_07_27_06_013): `StrEnum.A < "world"` → 实现允许 string 基 enum→string 隐式转换后比较
2. **ArkTS 是唯一原生支持枚举关系运算符的语言**（Java 用 `compareTo()`，Swift 需自定义 `Comparable` 协议）。
3. **运行时 48 断言全部通过**：int/long/byte/string 四种基类型枚举比较正确。
4. **跨语言差异**：Java 枚举比较基于 ordinal（声明序），与 ArkTS 基于值不同。
5. **不同枚举类型比较正确拒绝**：即使基类型相同也正确报编译时错误。

## 后续运行命令

```bash
SECTIONS="7.27.6_Enumeration_Relational_Operators" bash run_expressions_cases_wsl.sh
```
