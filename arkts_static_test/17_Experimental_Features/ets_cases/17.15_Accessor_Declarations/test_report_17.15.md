# 17.15 Accessor Declarations - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (Ubuntu 22.04)

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| **runtime（真实执行）** | **4** | **4** | **0** | **100%** |
| **总计** | **15** | **15** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（6个，001~006）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_15_001_PASS_GETTER_COMPUTED | 顶层 getter 声明，返回计算值 | ✅ |
| 002 | EXP2_17_15_002_PASS_SETTER_ASSIGN | 顶层 setter 声明，赋值给 backing 变量 | ✅ |
| 003 | EXP2_17_15_003_PASS_GETTER_SETTER_PAIR | 顶层 getter 和 setter 配对声明 | ✅ |
| 004 | EXP2_17_15_004_PASS_NAMESPACE_GETTER | 命名空间内声明 getter，export 导出 | ✅ |
| 005 | EXP2_17_15_005_PASS_NAMESPACE_SETTER | 命名空间内声明 setter，export 导出 | ✅ |
| 006 | EXP2_17_15_006_PASS_GETTER_INFER | Getter 省略返回类型，从函数体推断为 int | ✅ |

### compile-fail（5个，007~011）

| # | 用例 ID | 测试内容 | 编译器错误 | 结果 |
|---|---------|---------|-----------|------|
| 007 | EXP2_17_15_007_FAIL_GETTER_AS_CALL | Getter 作为调用表达式使用 | ESE0289: This expression is not callable | ✅ |
| 008 | EXP2_17_15_008_FAIL_SETTER_OPTIONAL_PARAM | Setter 参数使用可选类型声明 | ESY13534: Setter cannot have optional parameter | ✅ |
| 009 | EXP2_17_15_009_FAIL_GETTER_WITH_PARAM | Getter 声明包含形式参数 | ESY0058: Getter must not have formal parameters | ✅ |
| 010 | EXP2_17_15_010_FAIL_NATIVE_GETTER_BODY | Native getter 声明包含函数体 | ESE0083: Native, Abstract and Declare methods cannot have body | ✅ |
| 011 | EXP2_17_15_011_FAIL_NONNATIVE_NO_BODY | 非原生 getter 缺少函数体 | ESE0017: Only abstract or native methods can't have body | ✅ |

### runtime（4个，012~015）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | EXP2_17_15_012_RUNTIME_GETTER_VALUE | 验证 getter 返回正确的计算值（backing * 2 = 42） | 1 | ✅ |
| 013 | EXP2_17_15_013_RUNTIME_SETTER_UPDATE | 验证 setter 正确更新 backing 变量 | 1 | ✅ |
| 014 | EXP2_17_15_014_RUNTIME_PAIR_INTERACTION | 验证多次 getter+setter 交互：读写一致性 | 3 | ✅ |
| 015 | EXP2_17_15_015_RUNTIME_NAMESPACE | 验证命名空间内 getter+setter 读写交互 | 2 | ✅ |

---

## 执行过程异常修复记录

1. **Setter 返回类型问题**：初始测试发现 setter 声明不能包含返回类型（包括 `void`）。编译器报 ESY0241: Setter must not have return type even if it is void。已在所有 setter 用例中移除返回类型声明。
2. **预存重复文件清理**：删除了预存文件 `EXP2_17_15_001_PASS_GETTER_SETTER.ets`（重复 ID 001），新用例覆盖更完整的测试场景。

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
# 单独编译运行每个用例：
ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc

$ES2PANDA --extension=ets --output=/tmp/t.abc file.ets
$ARK --load-runtimes=ets --boot-panda-files=$BOOT_PANDA:$BOOT_ETS /tmp/t.abc MODNAME.ETSGLOBAL::main
```
