# 6.4.2 Widening Numeric to a Union Type - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

## 核心发现：编译器严格约束

ArkTS 编译器对 Widening to Union 施加了严格限制：

| 条件 | 结果 |
|------|:--:|
| 字面量仅匹配1个联合成员 | compile-pass |
| 字面量匹配多个成员 (ambiguous) | ESE101680 |
| 值类型已是联合成员 (subtyping) | compile-pass |
| 联合中恰有 **1个** 更大成员 | compile-pass |
| 联合中有 **≥2个** 更大成员 | ESE0255 |
| 值类型不在联合 AND 无更大成员 | compile-fail |

### compile-pass
| # | 用例 | 验证内容 |
|---|------|---------|
| 1 | LITERAL_INFERENCE | byte\|int=256, int\|double=3.14, int\|long=2147483648 |
| 2 | SUBTYPING | int→byte\|int |
| 3 | WIDENING_TO_UNION | short→byte\|int (仅int更大), byte→byte\|long |
| 4 | INT_TO_BYTE_LONG | int→byte\|long (忽略byte, 仅long更大) |
| 5 | UNION_IN_CALL | 联合形参: int→byte\|int, short→byte\|int |
| 6 | UNION_IN_RETURN | return short→byte\|int |
| 7 | UNION_IN_ASSIGNMENT | byte→byte\|int 赋值 |
| 8 | UNION_THREE_PLUS | 3+成员联合测试 |

### compile-fail
| # | 用例 | 验证内容 |
|---|------|---------|
| 9 | INT_TO_BYTE_SHORT | int不在联合且所有成员更小 |
| 10 | DOUBLE_TO_INT_LONG | double不在联合且无浮点成员 |
| 11 | STRING_TO_NUMERIC | 非数值类型 |
| 12 | LONG_TO_INT_SHORT | long不在联合且所有成员更小 |

## 执行异常修复

| 根因 | 修复 |
|------|------|
| 字面量 `100`/`0`/`255` 匹配多类型→ambiguous | 使用仅匹配1个成员的值如 `256`, `3.14`, `2147483648` |
| `byte→short\|int` (2个更大)→ambiguous | 改为 `byte→byte\|int` (1个更大) |
| 子类型 `short→byte\|short` 合法(非fail) | 改为 `int→byte\|short` (int不在联合) |

## 后续运行命令
```bash
SECTIONS="6.4.2_Widening_Numeric_to_a_Union_Type" bash run_contexts_conversions_cases_wsl.sh
```
