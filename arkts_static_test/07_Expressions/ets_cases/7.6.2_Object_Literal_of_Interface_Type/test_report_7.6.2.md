# 7.6.2 Object Literal of Interface Type - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 13 | 13 | 0 | 100% |
| compile-fail | 8 | 8 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **26** | **26** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_06_02_001_PASS_BASIC_INTERFACE | 基本接口类型（name+surname setter+age getter） | ✅ |
| 002 | EXP_07_06_02_002_PASS_OPTIONAL_SKIP | 可选属性跳过 | ✅ |
| 003 | EXP_07_06_02_003_PASS_METHOD_NO_DEFAULT | 实现无默认方法 | ✅ |
| 004 | EXP_07_06_02_004_PASS_DEFAULT_METHOD_SKIP | 跳过有默认方法 | ✅ |
| 005 | EXP_07_06_02_005_PASS_DEFAULT_METHOD_OVERRIDE | 覆盖有默认方法 | ✅ |
| 006 | EXP_07_06_02_006_PASS_OVERRIDE_COMPATIBLE | Override-compatible 宽参数签名 | ✅ |
| 007 | EXP_07_06_02_007_PASS_MULTIPLE_OVERLOADS | 多个重载实现 | ✅ |
| 008 | EXP_07_06_02_008_PASS_THIS_REFERENCE | this 引用匿名类实例 | ✅ |
| 009 | EXP_07_06_02_009_PASS_SETTER_ONLY_PROP | Setter-only 属性创建 | ✅ |
| 010 | EXP_07_06_02_010_PASS_GETTER_ONLY_PROP | Getter-only 属性创建 | ✅ |
| 011 | EXP_07_06_02_011_PASS_READONLY_PROP | Readonly 属性创建 | ✅ |
| 012 | EXP_07_06_02_012_PASS_REGULAR_PROP | 普通属性创建 | ✅ |
| 013 | EXP_07_06_02_013_PASS_GETTER_SETTER_MATCH | Getter+setter 类型一致 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 014 | EXP_07_06_02_014_FAIL_NON_OPTIONAL_SKIP | 非可选属性跳过 | ✅ (expected error) | |
| 015 | EXP_07_06_02_015_FAIL_NEW_METHOD | 引入新方法 | ✅ (expected error) | |
| 016 | EXP_07_06_02_016_FAIL_GETTER_SETTER_MISMATCH | Getter/setter 类型不匹配 | ✅ (expected error) | |
| 017 | EXP_07_06_02_017_FAIL_MISSING_METHOD | 缺少必需方法 | ✅ (expected error) | |
| 018 | EXP_07_06_02_018_FAIL_SETTER_ONLY_READ | 读取 setter-only 属性 | ✅ (expected error) | |
| 019 | EXP_07_06_02_019_FAIL_GETTER_ONLY_WRITE | 写入 getter-only 属性 | ✅ (expected error) | |
| 020 | EXP_07_06_02_020_FAIL_READONLY_WRITE | 写入 readonly 属性 | ✅ (expected error) | |
| 021 | EXP_07_06_02_021_FAIL_TYPE_MISMATCH | 属性值类型不匹配（int→string） | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 022 | EXP_07_06_02_022_RUNTIME_BASIC_VALUES | name/age 字段值正确 | 2 | ✅ |
| 023 | EXP_07_06_02_023_RUNTIME_THIS_REFERENCE | this 引用正确 | 0 | ✅ |
| 024 | EXP_07_06_02_024_RUNTIME_METHOD_CALL | twice 方法返回值 | 1 | ✅ |
| 025 | EXP_07_06_02_025_RUNTIME_OPTIONAL_UNDEFINED | 可选属性值为 undefined | 1 | ✅ |
| 026 | EXP_07_06_02_026_RUNTIME_DEFAULT_METHOD | 默认接口方法工作 | 0 | ✅ |

## 执行过程异常修复记录

1. **007 PASS_MULTIPLE_OVERLOADS: 语法错误**：对象字面量成员间缺少逗号，方法声明间加逗号分隔。
2. **024 RUNTIME_METHOD_CALL: `double` 是 ArkTS 关键字**：方法名改为 `twice`。

## 后续运行命令

```bash
SECTIONS="7.6.2_Object_Literal_of_Interface_Type" bash run_expressions_cases_wsl.sh
```
