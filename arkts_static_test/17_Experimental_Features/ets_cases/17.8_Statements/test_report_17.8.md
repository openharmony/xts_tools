# 17.8 Statements - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **15** | **15** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP2_17_08_001_PASS_IF_ELSE | if / if-else / 多分支 / 嵌套条件语句 | ✅ PASS |
| 002 | EXP2_17_08_002_PASS_WHILE_LOOP | while 循环标准用法、含 break | ✅ PASS |
| 003 | EXP2_17_08_003_PASS_DO_WHILE_LOOP | do-while 循环、至少执行一次 | ✅ PASS |
| 004 | EXP2_17_08_004_PASS_FOR_LOOP | 标准 for 循环、多变量、含 break/continue | ✅ PASS |
| 005 | EXP2_17_08_005_PASS_FOR_OF_ARRAY | for-of 遍历数组 | ✅ PASS |
| 006 | EXP2_17_08_006_PASS_FOR_OF_STRING | for-of 遍历字符串 | ✅ PASS |
| 007 | EXP2_17_08_007_PASS_SWITCH_STATEMENT | switch 整数/字符串匹配、default、fall-through | ✅ PASS |
| 008 | EXP2_17_08_008_PASS_BREAK_CONTINUE | break 跳出循环、continue 跳过迭代 | ✅ PASS |
| 009 | EXP2_17_08_009_PASS_RETURN_STATEMENT | void/有返回值 return 语句 | ✅ PASS |
| 010 | EXP2_17_08_010_PASS_TRY_CATCH_FINALLY | try-catch、try-finally、try-catch-finally、throw | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 011 | EXP2_17_08_011_FAIL_BREAK_OUTSIDE_LOOP | break 在循环外使用应产生编译错误 | ✅ PASS (ESY0209: Illegal break statement; ESE0161: Control flow redirection statement can not be used out of loop or switch statement) |
| 012 | EXP2_17_08_012_FAIL_CONTINUE_OUTSIDE_LOOP | continue 在循环外使用应产生编译错误 | ✅ PASS (ESY0165: Illegal continue statement; ESE0161: Control flow redirection statement can not be used out of loop or switch statement) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | EXP2_17_08_013_RUNTIME_LOOP_EXECUTION | for/while/do-while 迭代次数、break/continue 行为 | 5 | ✅ PASS (verified) |
| 014 | EXP2_17_08_014_RUNTIME_FOR_OF_ITERATION | for-of 数组迭代值和顺序、字符串迭代、break | 4 | ✅ PASS (verified) |
| 015 | EXP2_17_08_015_RUNTIME_SWITCH_FLOW | switch 整数/字符串分支匹配、default、if-else 条件、return 返回值 | 5 | ✅ PASS (verified) |

## 执行过程异常修复记录

无。所有用例编译/运行即通过。

- **runtime 入口格式纠正**: 初始运行尝试使用 `MODNAME::main` 导致 "Cannot find class" 错误。通过参考 `run_experimental_features_cases_wsl.sh` 脚本，确认正确入口格式为 `MODNAME.ETSGLOBAL::main`（模块名 . ETSGLOBAL 双冒号 main），修正后所有 runtime 用例均通过。

## 编译/运行环境

| 项 | 路径/值 |
|----|---------|
| 编译器 | `/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda` |
| 运行时 | `/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark` |
| boot panda | `/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc` |
| boot ets | `/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc` |
| 编译命令 | `es2panda --extension=ets --output=/tmp/t.abc file.ets` |
| 运行命令 | `ark --load-runtimes=ets --boot-panda-files=$BOOT_PANDA:$BOOT_ETS /tmp/t.abc MODNAME.ETSGLOBAL::main` |

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
SECTIONS="17.8_Statements" bash run_experimental_features_cases_wsl.sh
```
