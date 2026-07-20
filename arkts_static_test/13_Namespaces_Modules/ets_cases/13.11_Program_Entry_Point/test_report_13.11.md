# 13.11 Program Entry Point - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **7** | **7** | **0** | 100% |

---

## 详细执行结果

### compile-pass（3/3 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_11_001_PASS_MAIN_VOID | main(): void入口 | PASS |
| 002 | NSM_13_11_002_PASS_MAIN_INT | main(): int入口 | PASS |
| 005 | NSM_13_11_005_PASS_MAIN_FIXED_ARRAY | main(FixedArray<string>)参数 | PASS |

### compile-fail（2/2 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | NSM_13_11_003_FAIL_MAIN_WRONG_SIGNATURE | main()签名错误 | PASS |
| 006 | NSM_13_11_006_FAIL_MAIN_OVERLOAD | main不可overload | PASS |

### runtime（2/2 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 004 | NSM_13_11_004_RUNTIME_MAIN_EXEC | main函数运行时 | PASS |
| 007 | NSM_13_11_007_RUNTIME_MAIN_INFERRED_RETURN | main()推断返回类型 | PASS |

---

## 执行过程异常

**无异常。** 所有 7 个用例全部通过。

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.11_Program_Entry_Point" bash run_namespaces_modules_cases_wsl.sh
```
