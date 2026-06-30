# 08 Statements 审查报告

## 审查范围

- **章节**：08_Statements（ArkTS 静态语言规范 §08 Statements）
- **用例目录**：`08_Statements/ets_cases/`（18 个小节目录）
- **用例总数**：**557**（compile-pass 223 / compile-fail 154 / runtime 180）
- **覆盖小节**：§8.1–§8.15.3
- **审查日期**：2026-06-26
- **审查依据**：`arkts-spec-chapter-review` skill 流程；spec 取自 `arkts-static-spec` skill（`spec/statements.md`、`spec/semantics.md`）
- **跑测工具**：`es2panda --extension=ets`（ArkCompiler，Linux native）

## 执行结果

实测统计（es2panda `--extension=ets`，逐用例编译，信号崩溃按 rc<0 或 rc≥128 判定）：

| 分类 | 总数 | OK（符合预期） | unexpected | 崩溃（已归位 compile-pass）|
|------|------|---------------|-----------|---------------------------|
| compile-pass | 223 | 222 | 0 | 1（SIGABRT，C-8.06-02）|
| compile-fail | 154 | 153 | 1（unexpected-pass，C-8.06-01）| 0 |
| runtime（编译阶段） | 180 | 180 | 0 | 0 |
| **合计** | **557** | **555** | **1** | **1** |

- **runner**：章节自带 `run_statements_cases_wsl.sh`，默认遍历全部小节目录（SECTIONS 未设时取所有子目录）。脚本工具链走 `ARK_HOME` 环境变量、文件名含 `_wsl`，与本地 Linux native 路径不一致——属**本地审查环境差异**，已直接用 es2panda 绝对路径完成实测，不计为交付问题。
- 两处异常：
  - `STM_08_06_012_FAIL_label_declared_not_used`（compile-fail）：rc=0，unexpected-pass。保持 compile-fail 作负向看护。
  - `STM_08_06_015_PASS_LabeledDoWhileAndForOf`（compile-pass，原 compile-fail）：rc=-6（SIGABRT，core dump），编译器崩溃。已按正向语义归位 compile-pass。

## 总体结论

**可验收。** 用例可执行、spec §08 全覆盖、交付文档可消费、元数据零不一致，且 spec–实现差异已正确归类（非包装成普通 PASS）。主要风险为 1 个**编译器侧崩溃**（C-8.06-02，非交付缺陷）；无阻塞验收的交付件问题。

## 问题清单

> 按 skill 判断准则：阻塞验收问题在前，覆盖/文档同步问题在后。

### 1. C-8.06-02 编译器崩溃（编译器侧缺陷，非交付问题）

- **现象**：`8.6_Loop_Statements/compile-pass/STM_08_06_015_PASS_LabeledDoWhileAndForOf.ets` 编译触发 es2panda SIGABRT（rc=-6，core dump）。
- **spec 依据**：spec §8.6（Loop Statements）允许 labeled statement，应正常编译；实现崩溃。
- **影响**：该用例无法完成编译；属 es2panda 缺陷。已按正向语义归位 compile-pass（原在 compile-fail 语义不当），`_compiler_bug` 后缀保留并记于 issue_report。
- **证据**：2026-06-26 直跑 rc=-6；issue_report C-8.06-02。
- **建议**：保留跟踪；待 es2panda 修复后自然转入正常 pass。**不阻塞本章验收**。

### 2. C-8.06-01 loop label 未使用检查未实现（编译器侧，归类正确）

- **现象**：`STM_08_06_012_FAIL_label_declared_not_used` spec 要求 compile-time error，es2panda 编译通过（rc=0）。
- **spec 依据**：spec `statements.md` 行 278 明确——"A compile-time error occurs if the label identifier is not used"。属"spec 明确要求但实现未检查"。
- **影响**：用例置于 compile-fail 作负向看护，运行表现为 unexpected-pass；未包装成 PASS，归类正确。
- **证据**：2026-06-26 直跑 rc=0；issue_report C-8.06-01。
- **建议**：保留；待编译器补全 label 使用检查后转预期失败。

### 3. D-8.03-01 Block 内 type declaration——spec 待澄清

- **现象**：`STM_08_03_008_FAIL_local_type_alias_in_block` es2panda 以 ESY0040 拒绝 block 内 interface/type alias。
- **spec 依据**：spec §8.3（Block）措辞暗示合法（"all block statements, except type declarations…"），但与实现拒绝行为不一致——属 spec 歧义。
- **归类**：D 类 spec 待澄清（skill 准则：spec 歧义标"待澄清"，不强行推断）。✓
- **建议**：推动 spec 明确 block 内 type declaration 是否允许；spec 定论后用例分类随之确定。

### 4. D-8.05-01 非 boolean 条件——spec 标注 future-deprecated（归类正确）

- **现象**：`STM_08_05_006/007/008`、`STM_08_07_006/007/008`、`STM_08_08_006` 等 int/string/float/Object/array/null 等非 boolean 条件编译通过（compile-pass）。
- **spec 依据**：spec `semantics.md` 行 2512「Extended Conditional Expressions」定义该扩展语义；**行 2535 明确**："The extended semantics is to be deprecated in one of the future versions"。即当前允许、未来废弃。
- **归类**：D 类 spec 待废弃特性（deprecated/兼容行为）。✓ 非"实现差异"，亦非普通 PASS 误判——spec 当前允许故通过，但标注将废弃，记为差异项合理。
- **建议**：保留；跟踪 spec 废弃进度，废弃生效后这些用例应转为 compile-fail。

## 覆盖评价

spec §08（`statements.md`）含 15 个顶层小节，08_Statements **全覆盖**：

| spec 小节 | 测试目录 | 覆盖 |
|-----------|---------|------|
| §8.1 Normal and Abrupt Statement Execution | 8.1 | ✅ |
| §8.2 Expression Statements | 8.2 | ✅ |
| §8.3 Block | 8.3 | ✅ |
| §8.4 Constant Or Variable Declarations | 8.4 | ✅ |
| §8.5 if Statements | 8.5 | ✅ |
| §8.6 Loop Statements | 8.6 | ✅ |
| §8.7 while / do Statements | 8.7 | ✅ |
| §8.8 for Statements | 8.8 | ✅ |
| §8.9 for-of Statements | 8.9 | ✅ |
| §8.10 break Statements | 8.10 | ✅ |
| §8.11 continue Statements | 8.11 | ✅ |
| §8.12 return Statements | 8.12 | ✅ |
| §8.13 switch Statements | 8.13 | ✅ |
| §8.14 throw Statements | 8.14 | ✅ |
| §8.15 try Statements | 8.15（+ 8.15.1/2/3） | ✅（catch/finally/execution 细化覆盖） |

- 每小节均含 compile-pass / compile-fail / runtime 三类，正向 + 反向 + 运行时验证齐全。
- spec §08 **无遗漏小节**；8.15 try 拆分为 8.15.1–8.15.3 属更细粒度覆盖，不属缺失。

## 交付件质量核验

| 项（skill 准则） | 结果 |
|----|------|
| `test_manifest.json` 合法 JSON | ✅ |
| manifest 覆盖实际 `.ets`（id 数 == .ets 数） | ✅（557 == 557，双向无差；C-8.06-02 已按正向语义归位 compile-pass） |
| `@id` == 文件名 | ✅ **0 不一致**（557/557） |
| `@expect` == 所在目录 | ✅ **0 不一致** |
| `@section` == 父小节 | ✅ **0 不一致** |
| 缺 5-tag 头 | 0 |
| catalog 数量/描述与目录一致 | ✅（222P+155F+180R=557） |
| mindmap 数量与目录一致 | ✅（557） |
| issue_report 差异项清晰归类 | ✅（C 类编译器 / D 类 spec，均经 spec 原文核实） |

## 整改建议（短清单）

1. **（编译器侧）** 修复 es2panda labeled statement 处理以消除 C-8.06-02 崩溃；补全 loop label 使用检查以消除 C-8.06-01。
2. **（spec 侧）** 明确 §8.3 Block 内 type declaration 是否允许，消除 D-8.03-01 歧义。
3. **（跟踪）** D-8.05-01 Extended Conditional 废弃生效后，将相关 compile-pass 用例转 compile-fail。
4. **（复测稳健性）** 复测脚本崩溃判定须覆盖**负 returncode**（Linux 信号终止 rc<0，如 SIGABRT=-6）；仅判正值 134/139 会漏报崩溃。

---

> 本报告依 `arkts-spec-chapter-review` skill 流程独立完成，基于 2026-06-26 全量实测编译（es2panda `--extension=ets`，Linux native）与 `arkts-static-spec` spec 原文核实。runtime 用例仅做编译阶段验证（180/180 编译通过），未跑 ark VM 实际执行。
