# 9.7.7 方法体 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `09_Classes/run_classes_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（4/4 通过）
覆盖合法方法体形式：abstract 方法允许无体（仅分号），void 方法允许无 return 语句或仅 `return;`，非 void 方法在所有条件分支（if-else、if-else if-else、嵌套 if-else）上均有 return 语句，throw 可替代 return 确保路径终结，try-catch 两路均有 return，循环内包含 return 且循环后也有 return 兜底。边缘场景包括 void 方法中 `return;` 与无 return 混用、abstract 类中具体方法各路径均覆盖 return。

### compile-fail（7/7 通过）
覆盖方法体规则违规场景：非 void 方法在 if 无 else 分支或 for 循环可能不执行时缺少 return 路径（CLS_09_07_009、017、024）；void 返回类型方法禁止 `return <value>`，无论返回值是 int、string 还是 bool（CLS_09_07_015、032）；native 方法必须为空体（分号），不允许 block 体实现（CLS_09_07_016）；非 abstract 且非 native 的方法不能使用空体或分号，必须有 block 体（CLS_09_07_018）；abstract 方法禁止带有 block 体（CLS_09_07_009）。

### runtime（2/2 — ark VM 真实执行 + assert）
CLS_09_07_021 覆盖方法体复杂控制流：多路 if-else if-else 分支执行四则运算、while 循环内条件提前 return 查找数组元素、void 方法提前 `return;` 退出、try-catch 中 try 块与 catch 块各自 return 处理除零、嵌套 if-else 五级评分。每个方法通过 assert 验证多个输入组合的正确输出（共 19 个 assert）。

CLS_09_07_033 验证方法体内 for 循环累积计算（阶乘），最终 return 累积结果，通过 `compute(5)==120` 的 assert 确认控制流正确。

---

## 后续运行

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.7.7_Method_Body" bash run_classes_cases_wsl.sh
```
