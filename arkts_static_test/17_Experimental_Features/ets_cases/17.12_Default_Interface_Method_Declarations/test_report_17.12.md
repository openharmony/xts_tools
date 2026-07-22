# 17.12 Default Interface Method Declarations - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| **runtime（真实执行）** | **4** | **4** | **0** | **100%** |
| **总计** | **14** | **14** | **0** | **100%** |

---

## 详细执行结果

### compile-pass (5个)

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_12_001_PASS_DEFAULT_METHOD_BASIC | 接口默认方法基本声明，类不重写 | ✅ 通过 |
| 002 | EXP2_17_12_002_PASS_MULTIPLE_DEFAULTS | 接口中多个默认方法声明 | ✅ 通过 |
| 003 | EXP2_17_12_003_PASS_PRIVATE_DEFAULT | 私有默认方法在公开默认方法中调用 | ✅ 通过 |
| 004 | EXP2_17_12_004_PASS_DEFAULT_WITH_PARAMS | 默认方法支持多种参数和返回类型 | ✅ 通过 |
| 005 | EXP2_17_12_005_PASS_DEFAULT_THIS_PROP | 默认方法中使用 this 访问接口属性 | ✅ 通过 |

### compile-fail (5个)

| # | 用例 ID | 测试内容 | 错误信息 | 结果 |
|---|---------|---------|---------|------|
| 010 | EXP2_17_12_010_FAIL_PRIVATE_CALLED_EXTERNALLY | 私有默认方法从外部调用 | ESE0127/ESE0139: Signature not visible | ✅ 通过 |
| 011 | EXP2_17_12_011_FAIL_RETURN_TYPE_MISMATCH | 重写返回类型不兼容 | ESE985118: return type not compatible | ✅ 通过 |
| 012 | EXP2_17_12_012_FAIL_NONEXISTENT_METHOD | 调用不存在的方法 | ESE0087: Property does not exist | ✅ 通过 |
| 013 | EXP2_17_12_013_FAIL_DUPLICATE_DEFAULT | 重复声明同名默认方法 | ESE0130: Function already declared | ✅ 通过 |
| 014 | EXP2_17_12_014_FAIL_INVALID_SYNTAX | 无效语法（缺少闭合大括号） | ESY0228: Unexpected token | ✅ 通过 |

### runtime (4个，全部真实执行)

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 020 | EXP2_17_12_020_RUNTIME_DEFAULT_INVOKED | 默认方法运行时调用，返回值验证 | 2 | ✅ 通过 |
| 021 | EXP2_17_12_021_RUNTIME_OVERRIDE_PRECEDENCE | 重写优先于默认实现 | 3 | ✅ 通过 |
| 022 | EXP2_17_12_022_RUNTIME_PRIVATE_DEFAULT | 私有默认方法内部调用链 | 3 | ✅ 通过 |
| 023 | EXP2_17_12_023_RUNTIME_COMPLEX_LOGIC | 条件分支、循环、this 访问 | 6 | ✅ 通过 |

---

## 运行时执行验证

所有 runtime 用例通过 `ark VM` 实际执行 + 断言验证：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 020 | 默认方法调用返回正确字符串 | ✅ greet() 返回 "Hello from default"，两次调用一致 |
| 021 | 重写方法优先于默认实现 | ✅ Doubler使用默认(×2)，Tripler重写(×3)，互不干扰 |
| 022 | 私有默认方法计算链 | ✅ calculate() = doAdd() * 2，3组输入全部验证 |
| 023 | 复杂逻辑（循环+条件+this） | ✅ processData过滤+求均值，getCategory分级，threshold访问 |

---

## 异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| EXP2_17_12_004 | 类名 `Formatter` 与 stdlib 冲突 (ESE0349) | 重命名为 `DataFormatter` |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
# 单独编译:
export ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
$ES2PANDA --extension=ets --output=/tmp/t.abc <file.ets>
# 运行时:
export ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
$ARK --load-runtimes=ets --boot-panda-files=$BOOT_PANDA:$BOOT_ETS /tmp/t.abc <MOD>.ETSGLOBAL::main
```
