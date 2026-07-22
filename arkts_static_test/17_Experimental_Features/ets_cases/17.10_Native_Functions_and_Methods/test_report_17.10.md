# 17.10 Native Functions and Methods - 测试报告（聚合）

## 测试概述
- **章节**: 17.10 Native Functions/Methods/Constructors
- **测试日期**: 2026-06-23
- **编译器**: es2panda (ArkTS static compiler)
- **运行时**: ark (ArkTS VM)
- **测试环境**: Linux 6.11.11-rt7

## 子章节汇总

| 子章节 | compile-pass | compile-fail | runtime | 总计 | 通过率 |
|--------|-------------|-------------|---------|------|--------|
| 17.10.1 Native Functions | 5 | 5 | 3 | 13 | 100% |
| 17.10.2 Native Methods | 8 | 5 | 3 | 16 | 100% |
| 17.10.3 Native Constructors | 5 | 5 | 3 | 13 | 100% |
| **总计** | **18** | **15** | **9** | **42** | **100%** |

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 18 | 18 | 0 | 100% |
| compile-fail | 15 | 15 | 0 | 100% |
| runtime（真实执行） | 9 | 9 | 0 | 100% |
| **总计** | **42** | **42** | **0** | **100%** |

## 关键编译器错误码

| 错误码 | 含义 | 适用子章节 |
|--------|------|-----------|
| ESE0083 | Native, Abstract and Declare methods cannot have body | 17.10.1, 17.10.2 |
| ESE0084 | Native constructor cannot have body | 17.10.3 |
| ESE0047 | Invalid method modifier(s): abstract can't have native | 17.10.2 |
| ESE0018 | Native methods should have explicit return type | 17.10.1, 17.10.2 |
| LinkerUnresolvedMethodError | Runtime: no native implementation found | 17.10.1, 17.10.2 |

## 运行时行为总结

由于 `native` 实体的实现位于平台相关代码（如 C）中，纯 ArkTS 环境无法提供 native 实现。运行时测试验证了：
1. 声明 native 实体不影响程序正常运行
2. 调用无实现的 native 实体抛出 LinkerUnresolvedMethodError（可通过 try/catch 捕获）
3. native 实体可与普通 ArkTS 实体共存

## 跨语言对比要点

| 特性 | ArkTS | Java (JNI) | Swift |
|------|-------|-----------|-------|
| native 关键字 | `native` | `native` | 无（使用 @_cdecl） |
| native 函数 | 支持 | 支持 | N/A |
| native 方法 | 支持 | 支持 | N/A |
| native 构造函数 | 支持 | 不支持（使用静态工厂） | N/A |
| 编译时 body 检查 | ESE0083 | 编译错误 | N/A |
| 运行时未实现错误 | LinkerUnresolvedMethodError | UnsatisfiedLinkError | N/A |

## 异常发现
无。所有 42 个用例按预期运行。

## 详细报告
参见各子章节的独立报告：
- [17.10.1 Native Functions](./17.10.1_Native_Functions/test_report_17.10.1.md)
- [17.10.2 Native Methods](./17.10.2_Native_Methods/test_report_17.10.2.md)
- [17.10.3 Native Constructors](./17.10.3_Native_Constructors/test_report_17.10.3.md)
