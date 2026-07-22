# 18 Annotations 审查报告

## 审查范围
- 章节：18 Annotations
- 用例目录：`18_Annotations/ets_cases/`
- 用例总数：120（69P + 33F + 18R）
- 审查日期：2026-06-26

## 执行结果
- **测试执行：未执行**。本地 Windows 无 arkcompiler 工具链，runner 为 WSL bash 脚本。本地环境差异，不作为交付问题。
- **静态审计**：通过 `audit_chapter.ps1` 完成。

| 指标 | 数值 |
|------|------:|
| .ets 总数 | 120（此前 0）|
| manifest id 数 | 120（100% 覆盖）|
| metadata 不一致 | **0** |

## 总体结论
**可验收。** 120 用例覆盖全部 10 个小节，元数据完全一致（METADATA_BAD_COUNT=0），manifest 全覆盖（120/120）。spec_original.md、Annotations_Examples.md、test_design_mindmap.md 已于上一轮整改填充。存在 1 项 D 类 spec 不一致。

## 整改完成情况

| 问题 | 状态 |
|------|:----:|
| spec_original.md 占位符 | ✅ 已填充规约摘录 |
| Annotations_Examples.md 占位符 | ✅ 已填充 8 段示例 |
| test_design_mindmap.md 模板 | ✅ 已补充设计思路和覆盖要点 |

## 问题清单

### [信息] 1 项已知 D 类 spec 不一致
**现象**：issue_id 001 记录 `@Retention("RUNTIME")` / `@Retention("BYTECODE")` 注解无法作为类型使用（ESE0159），与 spec §18.6 规定矛盾。
**建议**：跟踪编译器更新。

## 覆盖评价

| 小节 | P | F | R | 总 | 覆盖要点 |
|------|:---:|:---:|:---:|:---:|---------|
| 18.1 Declaring Annotations | 5 | 8 | 1 | 14 | 注解声明/字段/导出/冲突 |
| 18.1.1 Types of Annotation Fields | 17 | 8 | 1 | 26 | 字段类型/int/string/数组 |
| 18.2 Using Annotations | 16 | 6 | 1 | 23 | 注解使用位置 |
| 18.2.1 Single Field Annotations | 8 | 2 | 1 | 11 | 单字段注解 |
| 18.3 Exporting and Importing | 3 | 4 | 1 | 8 | 导出/导入注解 |
| 18.4 Ambient Annotations | 3 | 3 | 1 | 7 | ambient 注解 |
| 18.5 Standard Annotations | 3 | 3 | 1 | 7 | 标准注解 |
| 18.5.1 Retention Annotation | 5 | 3 | 1 | 9 | @Retention |
| 18.5.2 Target Annotation | 5 | 3 | 1 | 9 | @Target |
| 18.6 Runtime Access | 4 | 1 | 1 | 6 | 运行时访问 |
| **Total** | **69** | **33** | **18** | **120** | 10 节全覆盖 |

## 整改建议
1. **建议填充**：spec_original.md（注解声明/使用/标准注解规则）、Annotations_Examples.md（最小示例）
2. **建议增强**：test_design_mindmap.md 补充设计思路
3. **持续跟踪**：D 类 issue（RUNTIME/BYTECODE 注解类型不可用）
