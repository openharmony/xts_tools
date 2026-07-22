# 17.9.1 Explicit Function Overload - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** WSL2 Ubuntu 22.04
**运行脚本：** `17_Experimental_Features/ets_cases/17.9.1_Explicit_Function_Overload/run_cases.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 7 | 6 | 1 | 85.7% |
| **runtime（真实执行）** | **3** | **3** | **0** | **100%** |
| **总计** | **17** | **16** | **1** | **94.1%** |

---

## 运行时执行验证

所有 runtime 用例均通过 `ark VM` 实际执行 + 断言验证：

| 编号 | 验证内容 | 验证方式 |
|------|---------|---------|
| 1 | 重载分发顺序（首个匹配的签名胜出） | ✅ 断言 first matching signature wins |
| 2 | 不同参数个数分发（0/1/2 参数） | ✅ 断言 3 种参数个数正确分发 |
| 3 | 返回值正确性（length 计算） | ✅ 断言 length 计算结果正确 |

---

## 详细结果

### compile-pass（7个）
所有合法显式函数重载声明与用法均编译通过：

- BasicTypes
- DifferentParamCount
- Export
- Generic
- MultiOverload
- NameSameAsFunc
- ReturnTypeDiff

### compile-fail（7个，6 OK + 1 SPEC INCONSISTENCY）
6 个用例按预期产生编译错误，1 个存在规格不一致：

| 文件 | 预期 | 实际 | 状态 |
|------|------|------|------|
| AsFuncRef-fail | 编译失败 | 编译失败 | ✅ OK |
| **Empty-fail** | **编译失败** | **编译通过** | ❌ **SPEC INCONSISTENCY** |
| ExportNotAll-fail | 编译失败 | 编译失败 | ✅ OK |
| NameConflict-fail | 编译失败 | 编译失败 | ✅ OK |
| NameSameNotInList-fail | 编译失败 | 编译失败 | ✅ OK |
| NoAccessibleFunc-fail | 编译失败 | 编译失败 | ✅ OK |
| WrongParamType-fail | 编译失败 | 编译失败 | ✅ OK |

### runtime（3个）
所有用例真实执行通过：

- OrderDispatch_runtime
- DiffParamCount_runtime
- ReturnValue_runtime

---

## SPEC INCONSISTENCY 说明

**EXP2_FuncOverload_Empty_fail** 用例预期编译器应拒绝空的函数重载列表（`overload` 关键字后无任何签名），但实际 `es2panda` 编译器允许该写法编译通过。

这是一个编译器的规格不一致问题（spec vs. implementation），需后续确认是规格需要调整还是编译器需要修复。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
bash run_cases.sh
```

支持指定章节：
```bash
SECTIONS="17.9.1_Explicit_Function_Overload" bash run_cases.sh
```
