# 11.1 Enumeration Base Type - 测试执行报告

## 统计

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 5 | 5 |
| compile-fail | 3 | 3 |
| runtime | 0 | 0 |
| **总计** | **8** | **8** |

## 覆盖点

- 全部无初始化器 → int (001) ✅
- 全部 int 初始化器 → int (002) ✅
- 全部 string 初始化器 → string (004, 007) ✅
- 部分 int + 其余无初始化 → int (010) ✅
- int + string 混合错误 (005) ✅
- 无初始化 + string 错误 (011) ✅
- string 推断后无初始化器错误 (006) ✅