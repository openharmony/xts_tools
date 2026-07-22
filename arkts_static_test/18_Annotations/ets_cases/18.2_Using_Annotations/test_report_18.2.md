# 18.2 Using Annotations - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 16 | 16 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **23** | **23** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | ANN_18_02_001_PASS_NO_PARENS | 无括号 `@Anno` | ✅ |
| 2 | ANN_18_02_002_PASS_EMPTY_PARENS | 空括号 `@Anno()` | ✅ |
| 3 | ANN_18_02_003_PASS_OBJECT_LITERAL | 对象字面量 | ✅ |
| 4 | ANN_18_02_004_PASS_MULTIPLE_ANNOTATIONS | 多注解同一声明 | ✅ |
| 5 | ANN_18_02_005_PASS_FIELD_ORDER_IRRELEVANT | 字段顺序无关 | ✅ |
| 6 | ANN_18_02_006_PASS_ARRAY_FIELD | 数组字面量赋值 | ✅ |
| 7 | ANN_18_02_007_PASS_DEFAULT_VALUE_USED | 默认值省略 | ✅ |
| 8 | ANN_18_02_008_PASS_ON_CLASS_METHOD | 注解在类方法 | ✅ |
| 9 | ANN_18_02_009_PASS_ON_CLASS_FIELD | 注解在类字段 | ✅ |
| 10 | ANN_18_02_010_PASS_ON_INTERFACE_METHOD | 注解在接口方法 | ✅ |
| 11 | ANN_18_02_011_PASS_ON_PARAMETER | 注解在参数 | ✅ |
| 12 | ANN_18_02_012_PASS_ON_LAMBDA | 注解在 lambda | ✅ |
| 13 | ANN_18_02_013_PASS_ON_VARIABLE | 注解在变量 | ✅ |
| 14 | ANN_18_02_014_PASS_ON_GETTER | 注解在 getter | ✅ |
| 15 | ANN_18_02_015_PASS_ON_SETTER | 注解在 setter | ✅ |
| 16 | ANN_18_02_016_PASS_2D_ARRAY_FIELD | 二维数组字面量 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 错误码 | 结果 |
|---|---------|---------|--------|------|
| 1 | ANN_18_02_017_FAIL_REPEATABLE_ANNOTATION | 重复注解 | ESE0041 | ✅ |
| 2 | ANN_18_02_018_FAIL_MISSING_REQUIRED_FIELD | 缺少必填字段 | ESE0044 | ✅ |
| 3 | ANN_18_02_019_FAIL_NON_CONST_EXPRESSION | 非常量表达式 | ESE0012 | ✅ |
| 4 | ANN_18_02_020_FAIL_WRONG_TARGET_FUNCTION | 错误目标（函数） | ESY0028 | ✅ |
| 5 | ANN_18_02_021_FAIL_OVERRIDDEN_FIELD | override 字段 | ESE489430 | ✅ |
| 6 | ANN_18_02_022_FAIL_SPACE_BEFORE_NAME | @和名称间有空格 | ESY125879 | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 1 | ANN_18_02_023_RUNTIME_ANNOTATION_USAGE | 多种注解用法运行时编译执行 | ✅ |

## 执行过程异常修复记录

1. **ANN_18_02_012_PASS_ON_LAMBDA**: 默认 BYTECODE 策略注解不支持 lambda，添加 `@Retention("SOURCE")` 后通过。
2. **ANN_18_02_013_PASS_ON_VARIABLE**: 同上，添加 `@Retention("SOURCE")` 后通过。

## 后续运行命令

```bash
cd /mnt/d/333/18_Annotations
SECTIONS="18.2_Using_Annotations" bash run_annotations_cases_wsl.sh
```
