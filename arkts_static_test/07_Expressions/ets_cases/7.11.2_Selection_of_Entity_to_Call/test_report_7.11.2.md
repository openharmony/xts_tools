# 7.11.2 Selection of Entity to Call - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_11_02_001_PASS_TYPEREF_STATIC_METHOD | typeReference 调用静态方法 | ✅ |
| 002 | EXP_07_11_02_002_PASS_SUPER_METHOD_CALL | super 调用超类实例方法 | ✅ |
| 003 | EXP_07_11_02_003_PASS_CLASS_EXPR_METHOD | 类表达式调用实例方法 | ✅ |
| 004 | EXP_07_11_02_004_PASS_UNION_COMMON_METHOD | union 公共方法 | ✅ |
| 005 | EXP_07_11_02_005_PASS_OVERLOAD_RESOLUTION | 重载解析 | ✅ |
| 006 | EXP_07_11_02_006_PASS_INTERFACE_EXPR_METHOD | 接口表达式实例方法 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_11_02_007_FAIL_TYPEREF_INSTANCE_METHOD | typeReference 调用不存在静态方法 | ✅ (expected error) |
| 008 | EXP_07_11_02_008_FAIL_UNION_NO_COMMON_METHOD | union 无公共方法调用 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 009 | EXP_07_11_02_009_RUNTIME_DYNAMIC_DISPATCH | 动态分发多态 | 2 | ✅ |
| 010 | EXP_07_11_02_010_RUNTIME_OVERLOAD_RESOLUTION | 重载解析运行时 | 3 | ✅ |
| 011 | EXP_07_11_02_011_RUNTIME_SUPER_METHOD | super 方法运行时 | 2 | ✅ |
| 012 | EXP_07_11_02_012_RUNTIME_UNION_COMMON_METHOD | union 公共方法运行时 | 2 | ✅ |

## 执行过程异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| 003 | `double()` 方法名与预定义类型关键字冲突 | 改为 `getDouble()` |
| 008 | 原用例未构造 union 类型，未触发编译错误 | 改为函数参数 `a: Dog \| Cat` 并调用 `a.bark()` |
| 004/012 | 原用例使用 interface 类型而非 union 类型，与设计不符 | 改为真实 union 类型（`Dog\|Cat` / `JsonFormatter\|XmlFormatter`）|

## 后续运行命令

```bash
SECTIONS="7.11.2_Selection_of_Entity_to_Call" bash run_expressions_cases_wsl.sh
```
