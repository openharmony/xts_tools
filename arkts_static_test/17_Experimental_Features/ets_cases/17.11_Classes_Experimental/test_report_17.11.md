# 17.11 Classes (Experimental) - 测试报告（聚合）

## 测试概述
- **章节**: 17.11 Classes Experimental (final class, final method, named constructors)
- **测试日期**: 2026-06-23
- **编译器**: es2panda (ArkTS static compiler)
- **运行时**: ark (ArkTS VM)
- **测试环境**: Linux 6.11.11-rt7

## 子章节汇总

| 子章节 | compile-pass | compile-fail | runtime | 总计 | 通过率 |
|--------|-------------|-------------|---------|------|--------|
| 17.11.1 Final Classes | 5 | 5 | 3 | 13 | 100% |
| 17.11.2 Final Methods | 5 | 5 | 4 | 14 | 100% |
| 17.11.3 Named Constructors | 5 | 5 | 5 | 15 | 100% |
| **总计** | **15** | **15** | **12** | **42** | **100%** |

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 15 | 15 | 0 | 100% |
| compile-fail | 15 | 15 | 0 | 100% |
| runtime（真实执行） | 12 | 12 | 0 | 100% |
| **总计** | **42** | **42** | **0** | **100%** |

## 关键编译器错误码

| 错误码 | 含义 | 适用子章节 |
|--------|------|-----------|
| ESE0178 | Cannot inherit with 'final' modifier | 17.11.1 |
| ESE1324203 | Cannot override because overridden method is final | 17.11.2 |
| ESE0047 | Invalid modifier: abstract can't have final | 17.11.2 |
| ESE0048 | Invalid modifier: final can't have static | 17.11.2 |
| ESE0077 | Invalid modifier: static can't have final | 17.11.2 |
| ESE0127 | No matching construct signature | 17.11.3 |
| ESE0130 | Function already declared (duplicate ctor name) | 17.11.3 |
| W2323 | Overload warning (duplicate ctor signatures) | 17.11.3 |

## ⚠️ SPEC 不一致（D 类异常）

### 17.11.3 Named Constructors: 3 个 spec-implementation 不一致

1. **`new Class.Name()` 调用语法不支持**：Spec 描述命名构造函数可通过 `new Temperature.Celsius(0)` 调用，但 es2panda 将此解释为类型引用（ESE0070）。命名构造函数只能通过重载解析调用。

2. **全命名构造函数的类仍可用 `new X()` 调用**：Spec 规定若所有构造函数都有名称则 `new X(1)` 应为编译错误，但当前实现允许此调用（若参数类型匹配某命名构造函数）。

3. **重复命名构造函数仅产生警告**：Spec 规定同一名称不能使用两次，但当前实现仅产生 W2323 警告而非编译错误（同签名产生 ESE0130 错误，同名称不同签名仅警告）。

## 跨语言对比要点

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| final class | `final class` | `final class` | `final class` |
| final method | `final` method | `final` method | `final func` |
| 命名构造函数 | 支持声明，不支持 `new Class.Name()` 调用 | N/A（静态工厂方法模拟） | N/A（convenience init 模拟） |

## 异常发现
17.11.3 Named Constructors 存在 3 个 D 类异常（Spec 与实现不一致），详见 design_issues_report_17.11.3.md。

## 详细报告
参见各子章节的独立报告：
- [17.11.1 Final Classes](./17.11.1_Final_Classes/test_report_17.11.1.md)
- [17.11.2 Final Methods](./17.11.2_Final_Methods/test_report_17.11.2.md)
- [17.11.3 Named Constructors](./17.11.3_Named_Constructors/test_report_17.11.3.md)
