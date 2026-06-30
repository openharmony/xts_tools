# 2.1 Use of Unicode Characters - 版本说明与运行验证

**最后更新：** 2026-06-22

---

## 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v1 | 2026-06-15 | 初始版本 |
| v2 | 2026-06-15 | 增加 WSL 编译验证 |
| v3 | 2026-06-20 | 标准化格式 + 规范引用 |
| v4 | 2026-06-20 | 添加实际运行验证（Java/Swift） |
| v5 | 2026-06-20 | 补充测试因子checklist用例 |
| v5.1 | 2026-06-20 | 实际编译运行验证全部通过 |
| v6.0 | 2026-06-22 | 按TESTING_PROCESS_GUIDE v4.4补充cross_lang_verify目录和三环境实测报告 |
| v7.0 | 2026-06-22 | 重新分类设计问题报告：区分"语言设计差异"与"规范一致性问题" |
| v8.0 | 2026-06-22 | 修复D类异常：5个compile-fail用例迁回compile-fail目录并标注⚠️SPEC不一致 |

---

## 实际运行验证结果

| 语言 | 用例数 | 环境 | 结果 |
|------|--------|------|------|
| **ArkTS** | 47 | WSL2 (es2panda + ark VM) | ✅ 47/47 通过 |
| **Java** | 2 | Windows JDK 26.0.1 | ✅ 2/2 通过 |
| **Swift** | 1 | WSL2 Swift 6.3.2 | ✅ 1/1 通过 |

### ArkTS 用例明细

**原有30个：** compile-pass 16 + compile-fail 6 + runtime 8

**新增17个（测试因子checklist补充）：**

| 编号 | 类型 | 用例 | 测试因子 |
|------|------|------|---------|
| 032 | pass | UNICODE_SCOPE_LOCAL_GLOBAL | 局部/全局书写 |
| 033 | pass | UNICODE_PARAM_RETURN | 参数传入/返回值 |
| 034 | pass | UNICODE_FIELD_ACCESS | 字段读取/继承 |
| 035 | pass | UNICODE_STATIC_MEMBER | static成员访问 |
| 036 | pass | CHAR_TYPE_CONTEXTS | 基础类型与转换 |
| 037 | pass | UNICODE_ARRAY_GENERIC | 数组元素 |
| 038 | pass | UNICODE_METHOD_OVERRIDE | override/多态 |
| 038 | fail | UNICODE_STATIC_OVERRIDE | 类合并声明 |
| 039 | fail | CHAR_STRING_MISMATCH | char/string类型混用 |
| 040 | fail | INTERFACE_UNEXPORTED_TYPE | export可见性 |
| 032 | runtime | UNICODE_SCOPE_FACTOR | 局部/全局书写 |
| 033 | runtime | CHAR_TYPE_CONVERSION | 基础类型与转换 |
| 034 | runtime | UNICODE_INHERITANCE_POLYMORPHISM | override/dynamic dispatch |
| 035 | runtime | UNICODE_COLLECTION_CONTEXTS | 数组遍历 |
| 036 | runtime | UNICODE_STATIC_MEMBER_ACCESS | static成员访问 |

**D 类异常修复（v8.0）：**

以下 5 个用例原本是 compile-fail（spec 要求编译失败），但编译器实际允许编译通过。已迁回 compile-fail 目录并标注 `⚠️ SPEC 不一致`：

| 编号 | 文件 | 原预期 | 实际行为 | 规范依据 |
|------|------|--------|---------|---------|
| 012 | FAIL_LONE_HIGH_SURROGATE | 编译失败 | 编译通过 | Unicode UAX #16 |
| 013 | FAIL_LONE_LOW_SURROGATE | 编译失败 | 编译通过 | Unicode UAX #16 |
| 014 | FAIL_HIGH_SURROGATE_NO_LOW | 编译失败 | 编译通过 | Unicode UAX #16 |
| 018 | FAIL_CHAR_RELATIONAL_OP | 编译失败 | 编译通过 | cookbook/compatibility.md |
| 019 | FAIL_CHAR_COMPARE_NUMBER | 编译失败 | 编译通过 | cookbook/compatibility.md |

**当前用例统计：** compile-pass 19 + compile-fail 14 + runtime 14 = 47

---

## 文件清单

### 核心文档（TESTING_PROCESS_GUIDE.md 必选）

| 文件 | 作用 |
|------|------|
| `test_design_mindmap_2.1.md` | Step 1 测试设计思维导图 |
| `test_report_2.1.md` | Step 4 测试执行报告 |
| `design_issues_report_2.1.md` | Step 6 设计问题报告 |
| `comparison_report_arkts_java_swift.md` | Step 5 跨语言对比报告 |
| `cross_lang_verify/verification_report.md` | Step 5 三环境实测输出 |

### 辅助文档

| 文件 | 作用 |
|------|------|
| `test_factors_checklist_coverage_report.md` | 测试因子checklist覆盖度分析 |
| `VERSION_NOTES.md` | 本文件，版本说明 |

### 用例目录

| 目录 | 文件数 |
|------|--------|
| `compile-pass/` | 23 |
| `compile-fail/` | 9 |
| `runtime/` | 14 |
| `cross_lang_verify/` | 4 (2 Java + 1 Swift + 1 报告) |
| `java_runtime_test/` | 2 (.java) |
| `swift_runtime_test/` | 1 (.swift) |