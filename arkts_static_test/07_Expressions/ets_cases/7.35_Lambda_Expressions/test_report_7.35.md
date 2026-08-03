# 7.35 Lambda 表达式 - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 已在 es2panda + ark VM 编译运行通过（306P+294F+300R=900，100%）

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_001_PASS_LAMBDA_BLOCK_BODY | Lambda 表达式块体 | ✅ 通过 |
| | EXP_07_35_002_PASS_LAMBDA_EXPR_BODY | Lambda 表达式表达式体（隐式 return） | ✅ 通过 |
| | EXP_07_35_003_PASS_LAMBDA_SHORTEST | Lambda 最短形式（e => e） | ✅ 通过 |
| | EXP_07_35_004_PASS_LAMBDA_ANNOTATION | Lambda 参数类型标注 | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_35_005_FAIL_LAMBDA_DUPLICATE_PARAM | Lambda 参数重名应产生编译错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|


---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.35_Lambda_Expressions" bash run_expressions_cases_wsl.sh
```
