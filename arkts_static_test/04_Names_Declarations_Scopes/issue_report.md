# 04 Names Declarations Scopes Issue Report

只记录**当前未解决的执行异常**。一旦异常通过修改用例或编译器更新而消除，立即从此文件移除。

当前无未解决的执行异常。

---

## 章节最新执行统计

| 子章节 | 总数 | 通过 | 失败 |
|-------|:---:|:----:|:----:|
| 4.1 Names | 16 | 16 | 0 |
| 4.2 Declarations | 13 | 13 | 0 |
| 4.2.1 Distinguishable Signatures | 3 | 3 | 0 |
| 4.3 Scopes | 19 | 19 | 0 |
| 4.4 Accessible | 16 | 16 | 0 |
| 4.5 Type Declarations | 24 | 24 | 0 |
| 4.5.1 Type Alias Declaration | 11 | 11 | 0 |
| 4.6.1 Variable Declarations | 9 | 9 | 0 |
| 4.6.2 Constant Declarations | 7 | 7 | 0 |
| 4.6.3 Validity of Initializer | 4 | 4 | 0 |
| 4.6.4 Assignability with Init | 3 | 3 | 0 |
| 4.6.5 Type Inference from Init | 9 | 9 | 0 |
| 4.7 Function Declarations | 5 | 5 | 0 |
| 4.7.1 Signatures | 5 | 5 | 0 |
| 4.7.2 Parameter List | 3 | 3 | 0 |
| 4.7.3 Readonly Parameters | 5 | 5 | 0 |
| 4.7.4 Optional Parameters | 5 | 5 | 0 |
| 4.7.5 Rest Parameter | 15 | 15 | 0 |
| 4.7.6 Shadowing by Parameter | 5 | 5 | 0 |
| 4.7.7 Return Type | 14 | 14 | 0 |
| **总计** | **191** | **191** | **0** |

### 说明

- **备注：** `4.6_Variable_Constant_Declarations` 是父级汇总目录，其用例覆盖由 4.6.1~4.6.5 子章节承接，该目录本身不含 `.ets` 文件。
- **跨语言对比：** 各子章节 comparison report 中的 Java/Swift 结论标注为依据来源。`cross_lang_verify/` 目录下提供可执行的 Java/Swift 对照样例（reserved name 方向），其余章节标注为"资料对比"或"待实测验证"。
