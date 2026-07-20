# 13.3 Namespace Declarations - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**运行脚本：** `13_Namespaces_Modules/run_namespaces_modules_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败(D类) | 通过率 |
|------|------|------|-----------|--------|
| compile-pass | 9 | 9 | 0 | 100% |
| compile-fail | 5 | 4 | 1 | 80% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **16** | **15** | **1** | 94% |

---

## 详细执行结果

### compile-pass（9/9 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_03_001_PASS_NAMESPACE_BASIC | 基本namespace声明 | PASS |
| 002 | NSM_13_03_002_PASS_NAMESPACE_EXPORT | namespace导出实体 | PASS |
| 003 | NSM_13_03_003_PASS_NAMESPACE_QUALIFIED_ACCESS | qualifiedName访问导出实体 | PASS |
| 004 | NSM_13_03_004_PASS_NAMESPACE_UNQUALIFIED_ACCESS | namespace内无限定访问 | PASS |
| 005 | NSM_13_03_005_PASS_NAMESPACE_EMBEDDED | 嵌套namespace | PASS |
| 006 | NSM_13_03_006_PASS_NAMESPACE_MERGE | 同名namespace合并 | PASS |
| 007 | NSM_13_03_007_PASS_NAMESPACE_QUALIFIED_SHORTCUT | A.B简写 | PASS |
| 015 | NSM_13_03_015_PASS_AMBIENT_NAMESPACE_ACCESS | ambient namespace跨模块可访问性 | PASS |

### compile-fail（4/5 通过，1 D类不一致）

| # | 用例 ID | 测试内容 | 预期 | 实际 | 结果 |
|---|---------|---------|------|------|------|
| 008 | NSM_13_03_008_FAIL_NAMESPACE_QUALIFIED_NON_EXPORTED | 非导出实体访问 | 编译失败 | 编译失败 | PASS |
| 009 | NSM_13_03_009_FAIL_NAMESPACE_DUPLICATE_EXPORT | 导出名重复 | 编译失败 | 编译失败 | PASS |
| 010 | NSM_13_03_010_FAIL_NAMESPACE_EXPORT_NON_EXPORT_SAME_NAME | 导出与非导出同名 | 编译失败 | 编译失败 | PASS |
| 011 | NSM_13_03_011_FAIL_NAMESPACE_MULTIPLE_INITIALIZER | 多个初始化器 | 编译失败 | 编译通过 | ⚠️ D类 |
| 012 | NSM_13_03_012_FAIL_NAMESPACE_STATIC_BLOCK_DUPLICATE | 多个static block | 编译失败 | 编译失败 | PASS |

### runtime（2/2 通过）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | NSM_13_03_013_RUNTIME_NAMESPACE_INITIALIZER | namespace初始化器执行 | 1 | PASS |
| 014 | NSM_13_03_014_RUNTIME_NAMESPACE_MERGE_DISPATCH | 合成namespace方法派发 | 1 | PASS |

---

## 执行过程异常

- **D2**: NSM_13_03_011_FAIL_NAMESPACE_MULTIPLE_INITIALIZER — spec 要求合并namespace多个初始化器应报 compile-time error，但编译通过

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.3_Namespace_Declarations" bash run_namespaces_modules_cases_wsl.sh
```
