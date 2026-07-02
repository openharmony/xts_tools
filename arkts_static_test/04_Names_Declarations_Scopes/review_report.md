# 04 Names, Declarations and Scopes 审查报告

## 审查范围
- 章节：04 Names, Declarations and Scopes
- 用例目录：`04_Names_Declarations_Scopes/ets_cases/`
- 用例总数：191（91P + 71F + 29R）
- 本次复查日期：2026-07-02
- 参考规范：ArkTS Static Spec 第 4 章 `Names, Declarations and Scopes`，并交叉参考 `types.md` 中基础数值类型定义。

## 执行与静态审计结果
- 通过 `run_names_cases_wsl.sh` 在 WSL 环境执行全量用例。因脚本文件含 CRLF，本次采用只读去 CRLF 方式执行，未修改 runner。
- 通过 `audit_chapter.ps1` 完成目录、manifest、元数据一致性审计。
- 额外对 71 个 `compile-fail` 用例逐个调用 `es2panda`，检查是否存在 Fatal/internal/crash 被预期失败掩盖。

| 指标 | 数值 |
|------|------:|
| `.ets` 总数 | 191 |
| compile-pass | 91 |
| compile-fail | 71 |
| runtime | 29 |
| 全量执行通过 | **191** |
| 全量执行失败 | **0** |
| 通过率 | 100% |
| manifest id 数 | 191 |
| manifest/file id 一致性 | 191/191，缺失 0 |
| manifest JSON | 合法，无 BOM |
| 元数据不一致 | **0** |
| compile-fail 独立扫描 | 71/71 均为预期语法/语义错误 |
| compile-fail Fatal/crash | **0** |

compile-fail 独立扫描明细：Semantic error 61 个，Syntax error 10 个，Fatal/internal/crash 0 个。未发现编译器崩溃被 `compile-fail` 预期结果掩盖的问题。

## 总体结论
**测试用例本身可验收；交付报告仍需整改。**

191 个用例覆盖 4.1 至 4.7.7 主要小节，manifest、文件 id、`@id/@expect/@section` 元数据一致，且全量执行 191/191 通过。反向用例经独立复扫后没有 Fatal、internal error、crash、assert 等崩溃信号。

但测试人员提交的若干子报告存在定性不严谨和执行报告不完整问题，不应继续在总报告中表述为“当前无问题”。这些问题不影响本次用例执行结论，但影响章节交付质量。

## 本次新增发现

| 编号 | 严重性 | 问题 | 影响 | 建议 |
|------|:---:|------|------|------|
| R4-01 | 中 | `design_issues_report_4.6.md`、`design_issues_report_4.6.5.md` 将 `int`/`double` 推断定性为“Spec 未定义/Spec 与实现不一致” | 定性错误。第 4 章已明确示例 `let b = 1` 推断为 `int`、三元表达式推断为 `int | double`；`types.md` 也正式定义 `int`、`double` | 将该问题改为“规范一致行为”，不要作为 ArkTS 实现缺陷或 spec/实现不一致 |
| R4-02 | 中 | `design_issues_report_4.5.md` 将递归类型限制描述为“Spec 未明确列举所有允许模式” | 表述不准确。第 4.5/4.5.1 明确允许数组元素类型、泛型类型参数中的递归，并明确直接/其余循环引用为编译期错误 | 改为“符合 ArkTS spec 的设计限制”，如需扩展递归能力只能作为语言增强建议 |
| R4-03 | 中 | 多个子章节 `test_report_*.md` 仍是 TODO 或 NUL 填充文件 | 子章节执行报告不可读或未填充，无法作为完整交付证据 | 重新生成这些子报告，至少包含用例数、P/F/R 分类、执行命令、通过/失败统计 |
| R4-04 | 低 | 46 个 `.ets` 文件带 UTF-8 BOM；runner 文件含 CRLF | 当前编译可通过，但与此前“避免 BOM”的整改建议不一致，CRLF 在 WSL 直接执行时有兼容风险 | 统一源码为 UTF-8 无 BOM，runner 统一 LF |
| R4-05 | 低 | 4.1/4.2 关于“保留名/预定义类型清单不完整”的问题更像规范文档完善建议，证据不足以定性为实现 bug | 目前相关用例覆盖了 spec 示例并按预期编译失败；若主张 `int`、`Box` 等检测不一致，需要补充具体最小用例和准确编译输出 | 从“实现问题”降级为“文档完善/待补证” |

## 子报告审视结论

### Java/Swift 对比是否被当作 ArkTS bug
未发现子报告直接把 Java/Swift 行为作为 ArkTS bug 的唯一判定依据。多数报告已明确标注为“语言设计差异/非缺陷”。

需要修正的是部分报告把 ArkTS 自身 spec 已明确支持或限制的行为标成“问题”：
- `4.6` / `4.6.5`：`int`、`double` 是规范定义的基础类型，字面量推断规则也在第 4.6.5 中给出。
- `4.5`：递归类型别名允许和禁止的模式在第 4.5.1 中已有明确规则。
- `4.1` / `4.2`：保留名、预定义类型清单完整性可作为规范可读性建议，但当前用例结果不能证明实现不符合规范。

### 子章节执行报告完整性
以下 `test_report_*.md` 未达到可交付状态：
- NUL 填充/不可读：`4.2.1`、`4.7.1`、`4.7.5`、`4.7.7`
- TODO 占位：`4.5.1`、`4.6.1`、`4.6.2`、`4.6.3`、`4.6.4`、`4.6.5`、`4.7.2`、`4.7.3`、`4.7.4`、`4.7.6`

顶层 `issue_report.md` 与本次实跑可以证明当前无执行异常，但子报告本身仍需补齐。

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 4.1 Names | 8 | 6 | 2 | 16 | 简单/限定/复合名称、标识符规则 |
| 4.2 Declarations | 4 | 8 | 1 | 13 | 声明可区分性、同名冲突、重载、预定义类型冲突 |
| 4.2.1 Distinguishable Signatures | 1 | 1 | 1 | 3 | 签名可区分性 |
| 4.3 Scopes | 14 | 5 | 0 | 19 | 模块/类/块/类型参数/命名空间作用域 |
| 4.4 Accessible | 7 | 7 | 2 | 16 | 可访问性、跨作用域访问、namespace 限定访问 |
| 4.5 Type Declarations | 10 | 13 | 1 | 24 | 类型声明、类型别名递归、循环依赖 |
| 4.5.1 Type Alias Declaration | 8 | 1 | 2 | 11 | 类型别名、泛型别名、运行时使用 |
| 4.6.1 Variable Declarations | 5 | 3 | 1 | 9 | 变量声明、类型推断、无初始化反例 |
| 4.6.2 Constant Declarations | 3 | 3 | 1 | 7 | 常量初始化、类型推断 |
| 4.6.3 Validity of Initializer | 1 | 2 | 1 | 4 | 初始化器前向引用 |
| 4.6.4 Assignability with Initializer | 1 | 1 | 1 | 3 | 初始化器可赋值性 |
| 4.6.5 Type Inference from Initializer | 5 | 2 | 2 | 9 | 字面量提升、三元推断、对象字面量推断反例 |
| 4.7 Function Declarations | 2 | 2 | 1 | 5 | 顶层函数、native 函数 |
| 4.7.1 Signatures | 3 | 1 | 1 | 5 | 泛型函数签名、返回类型不匹配 |
| 4.7.2 Parameter List | 1 | 1 | 1 | 3 | 必选参数、可选参数顺序 |
| 4.7.3 Readonly Parameters | 1 | 2 | 2 | 5 | 只读参数、只读数组/元组 |
| 4.7.4 Optional Parameters | 2 | 1 | 2 | 5 | 默认值、`?` 可选参数 |
| 4.7.5 Rest Parameter | 5 | 6 | 4 | 15 | rest 参数、元组 rest、spread 调用 |
| 4.7.6 Shadowing by Parameter | 2 | 1 | 2 | 5 | 参数遮蔽 |
| 4.7.7 Return Type | 8 | 5 | 1 | 14 | 返回类型推断、void/undefined/never |
| **Total** | **91** | **71** | **29** | **191** | 主章节与子章节全覆盖 |

## 整改建议
1. 修正 `4.6`、`4.6.5` 设计问题报告中关于 `int`/`double` “未定义”的错误定性。
2. 修正 `4.5` 递归类型报告，把已符合规范的限制从“问题”降级为“语言设计限制/增强建议”。
3. 补齐或重建所有 TODO/NUL 的子章节 `test_report_*.md`。
4. 将 46 个带 BOM 的 `.ets` 文件统一转为 UTF-8 无 BOM，并将 runner 统一为 LF 换行。
5. 如果继续保留“保留名/预定义类型清单不完整”问题，应补充最小复现用例、实际编译输出、对应 spec 条款，否则仅作为文档完善建议。
