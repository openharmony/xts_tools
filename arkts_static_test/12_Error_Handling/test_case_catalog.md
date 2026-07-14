# 12 Error Handling Test Case Catalog

**总用例数：** 18（7P + 4F + 7R）

| 章节 | compile-pass | compile-fail | runtime | 合计 |
|---|:---:|:---:|:---:|:---:|
| 12.1 Errors | 7 | 4 | 7 | 18 |

## 完整用例清单

| ID | Type | Purpose |
|---|---|---|
| ERR_12_01_001_PASS_THROW_ERROR | compile-pass | throw Error 实例 |
| ERR_12_01_002_PASS_CUSTOM_ERROR_CLASS | compile-pass | 自定义 Error 子类 |
| ERR_12_01_003_PASS_TRY_CATCH | compile-pass | try-catch 结构 |
| ERR_12_01_007_PASS_RANGE_ERROR_SUBTYPE | compile-pass | RangeError 作为 Error 处理 |
| ERR_12_01_008_PASS_HANDLE_ALL_CALLBACKS | compile-pass | handleAll 回调错误处理模式 |
| ERR_12_01_013_PASS_TRY_CATCH_FINALLY | compile-pass | try-catch-finally 三段式 |
| ERR_12_01_014_PASS_TRY_FINALLY | compile-pass | try-finally（无 catch） |
| ERR_12_01_006_FAIL_THROW_NOT_ERROR | compile-fail | throw 非 Error 类型失败 |
| ERR_12_01_009_FAIL_THROW_NULL_UNDEFINED | compile-fail | throw null/undefined 失败 |
| ERR_12_01_010_FAIL_THROW_OBJECT_NOT_ERROR | compile-fail | throw 普通对象失败 |
| ERR_12_01_015_FAIL_TRY_NO_CATCH_NO_FINALLY | compile-fail | try 无 catch 且无 finally |
| ERR_12_01_004_RUNTIME_GET_ARRAY_ELEMENT | runtime | RangeError 捕获返回 undefined |
| ERR_12_01_005_RUNTIME_CATCH_TYPE_ERROR | runtime | catch 参数类型为 Error |
| ERR_12_01_011_RUNTIME_UNKNOWN_ERROR_WRAP | runtime | UnknownError 包装未知 Error |
| ERR_12_01_012_RUNTIME_HANDLE_ALL_ACTIONS | runtime | handleAll 捕获并执行处理动作 |
| ERR_12_01_016_RUNTIME_FINALLY_EXECUTION | runtime | finally 无论异常与否始终执行 |
| ERR_12_01_017_RUNTIME_THROW_IN_CATCH | runtime | catch 中重新抛出被外层捕获 |
| ERR_12_01_018_RUNTIME_NESTED_TRY_CATCH | runtime | 嵌套 try-catch 互不干扰 |
