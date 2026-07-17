# 6.4.1 Widening Numeric Conversions - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **23** | **23** | **0** | **100%** |

## 转换表覆盖矩阵（15 条路径全部验证）

| From → To | short | int | long | float | double |
|-----------|:---:|:---:|:---:|:---:|:---:|
| byte | 001/023 | 001/023 | 001/006/023 | 001/023 | 001/023 |
| short | | 002/023 | 002/023 | 002/023 | 002/023 |
| int | | | 003/023 | 003/023 | 003/023 |
| long | | | | 004/023 | 004/023 |
| float | | | | | 005/023 |

## 执行过程异常修复

| 异常 | 原因 | 修复 |
|------|------|------|
| 005/006/007/020 `float = 3.14` | double 字面量不能赋给 float | 改为 `int→float` 间接赋值 |
| 022/023 `b as int` | 数值类型 `as` cast 已废弃 | 改用显式 widening 变量声明 |

## 上下文覆盖

| 上下文 | 用例 |
|--------|------|
| Declaration | 001-005 |
| Call | 006 |
| Return | 007 |
| Assignment | 008 |
| Composite literal | 009 |
| Arithmetic | 010 |

## 后续运行命令
```bash
SECTIONS="6.4.1_Widening_Numeric_Conversions" bash run_contexts_conversions_cases_wsl.sh
```
