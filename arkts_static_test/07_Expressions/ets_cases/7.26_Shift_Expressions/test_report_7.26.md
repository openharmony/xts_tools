# 7.26 Shift Expressions — 测试执行报告

> 最后编译验证：2026-07-30，es2panda `--extension=ets`，WSL

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 9 | 9 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **27** | **27** | **0** | **100%** |

## 详细执行结果

### compile-pass（8 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_26_001_PASS_INT_SHIFT_BASIC | int << >> >>> 基本移位 | ✅ |
| 002 | EXP_07_26_002_PASS_LONG_SHIFT_BASIC | long << >> >>> 基本移位 | ✅ |
| 003 | EXP_07_26_003_PASS_BIGINT_SHIFT | bigint << >> 移位（无 >>>） | ✅ |
| 004 | EXP_07_26_004_PASS_BYTE_SHORT_PROMOTION | byte/short 自动提升为 int | ✅ |
| 005 | EXP_07_26_005_PASS_SHIFT_GROUPING | 左结合性 a<<b>>c=(a<<b)>>c | ✅ |
| 006 | EXP_07_26_006_PASS_FLOAT_DOUBLE_TRUNCATION | float/double 截断为 int/long | ✅ |
| 014 | EXP_07_26_014_PASS_NULLISH_SHIFT | 空值合并与移位结合 | ✅ |
| 028 | EXP_07_26_028_PASS_SHIFT_CHAINED | 链式移位验证 | ✅ |

### compile-fail（9 用例）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_26_007_FAIL_BIGINT_UNSIGNED_RIGHT | bigint >>> 编译错误 | ✅ |
| 008 | EXP_07_26_008_FAIL_BIGINT_NUMERIC_MIXED | bigint + 数值混合移位 | ✅ |
| 009 | EXP_07_26_009_FAIL_SHIFT_STRING | string << int 编译错误 | ✅ |
| 010 | EXP_07_26_010_FAIL_SHIFT_BOOLEAN | boolean >> int 编译错误 | ✅ |
| 011 | EXP_07_26_011_FAIL_SHIFT_OBJECT | Object >>> int 编译错误 | ✅ |
| 012 | EXP_07_26_012_FAIL_NON_NUMERIC_BOTH | 双方非数值类型编译错误 | ✅ |
| 041 | EXP_07_26_041_FAIL_INT_BOOL_REL_ERR | int < boolean 类型错误 | ✅ |
| 043 | EXP_07_26_043_FAIL_INT_BOOL_REL_ERR | int < boolean 类型错误 | ✅ |
| 045 | EXP_07_26_045_FAIL_INT_BOOL_REL_ERR | int < boolean 类型错误 | ✅ |

### runtime（10 用例）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|:------:|------|
| 013 | EXP_07_26_013_RUNTIME_INT_SHIFT_LEFT | int << 基本值 | ✅ |
| 014 | EXP_07_26_014_RUNTIME_INT_SIGNED_RIGHT | int >> 符号扩展 | ✅ |
| 015 | EXP_07_26_015_RUNTIME_INT_UNSIGNED_RIGHT | int >>> 零扩展 | ✅ |
| 016 | EXP_07_26_016_RUNTIME_LONG_SHIFT | long 移位基本值 | ✅ |
| 017 | EXP_07_26_017_RUNTIME_INT_SHIFT_DISTANCE_MASK | int 移位距离掩码 (s & 0x1f) | ✅ |
| 018 | EXP_07_26_018_RUNTIME_LONG_SHIFT_DISTANCE_MASK | long 移位距离掩码 (s & 0x3f) | ✅ |
| 019 | EXP_07_26_019_RUNTIME_INT_SHIFT_LEFT_OVERFLOW | int << 溢出 (1<<31=MIN_INT) | ✅ |
| 020 | EXP_07_26_020_RUNTIME_BIGINT_SHIFT | bigint 大数移位 | ✅ |
| 021 | EXP_07_26_021_RUNTIME_SHIFT_NEGATIVE_DISTANCE | 负移位距离取低 5/6 位 | ✅ |
| 022 | EXP_07_26_022_RUNTIME_UNSIGNED_RIGHT_FORMULA | >>> 公式验证 (n>>s)+(2<<~s) | ✅ |

## 执行过程异常修复记录

### 文件清理（2026-07-30）
- 移动 7 个 INT_REL 文件到 7.27.1（042/044/046 PASS + 047~050 RUNTIME）
- 删除 15 个重复文件（007~013 FAIL + 015~020 RUNTIME + 006/010 PASS）
- 重编号 FAIL 021~026→007~012，RUNTIME 031~040→013~022
- 27 个核心文件全部通过，0 unexpected

## 跨语言验证结果

| 语言 | 编译 | 运行 | 结果 |
|------|:----:|:----:|:----:|
| ArkTS | ✅ es2panda | ✅ ark VM | 27/27 通过 |
| Java | ✅ javac 1.8 | ✅ JVM | 10/10 断言通过 |
| Swift | ✅ swiftc 6.3.2 | ✅ Swift runtime | 5/5 断言通过（差异已记录） |

详见 `cross_lang_verify/verification_report.md`

## 后续运行命令

```bash
SECTIONS="7.26_Shift_Expressions" bash run_expressions_cases_wsl.sh
```
