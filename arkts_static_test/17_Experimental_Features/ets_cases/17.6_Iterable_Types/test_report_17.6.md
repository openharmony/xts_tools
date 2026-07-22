# 17.6 Iterable Types - 测试执行报告

**生成日期：** 2026-06-23
**测试基础：** 15 个用例（9 compile-pass + 3 compile-fail + 3 runtime 真实执行）
**编译器：** es2panda (static_core/out/bin/es2panda)
**运行时：** ark (static_core/out/bin/ark)

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 9 | 9 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **15** | **15** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP2_17_06_001_PASS_CLASS_IMPLEMENTS_ITERABLE | 类实现 Iterable\<number\>，定义 $_iterator() 返回 Iterator\<number\> | PASS |
| 2 | EXP2_17_06_002_PASS_FOR_OF_CUSTOM_ITERABLE | 自定义 Iterable 类（StringList），用于 for-of 支持 | PASS |
| 3 | EXP2_17_06_003_PASS_FOR_OF_ARRAY_ITERABLE | 数组类型 int[] 作为内置可迭代，for-of 遍历 | PASS |
| 4 | EXP2_17_06_004_PASS_FOR_OF_STRING_ITERABLE | 字符串类型作为内置可迭代，for-of 遍历 | PASS |
| 5 | EXP2_17_06_005_PASS_INTERFACE_EXTENDS_ITERABLE | 接口扩展 Iterable\<T\>，声明 $_iterator() | PASS |
| 6 | EXP2_17_06_006_PASS_UNION_ITERABLE | int[] \| string 联合可迭代类型，for-of 遍历 | PASS |
| 7 | EXP2_17_06_007_PASS_OVERRIDE_ITERATOR | 子类覆盖父类 $_iterator() 方法 | PASS |
| 8 | EXP2_17_06_008_PASS_GENERIC_ITERABLE | 泛型类 Wrapper\<E\> 实现 Iterable\<E\> | PASS |
| 9 | EXP2_17_06_009_PASS_ABSTRACT_ITERATOR_INTERFACE | 接口 HasIterator\<T\> 定义抽象 $_iterator() | PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 错误信息 |
|---|---------|---------|------|---------|
| 10 | EXP2_17_06_010_FAIL_ASYNC_ITERATOR | async $_iterator 应编译失败 | PASS | ESY0220: The special predefined method '$_iterator' cannot be asynchronous. ESE0096: The return type of '$_iterator' must be a type that implements Iterator interface. |
| 11 | EXP2_17_06_011_FAIL_ITERABLE_NO_ITERATOR | implements Iterable 缺少 $_iterator | PASS | ESE0190: NoIterMethod is not abstract and does not override abstract method $_iterator() |
| 12 | EXP2_17_06_012_FAIL_ITERATOR_WRONG_RETURN | $_iterator 返回 string（非 Iterator 子类型）| PASS | ESE0190 / ESE985118 / ESE0096: return type must implement Iterator interface |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 退出码 | 结果 |
|---|---------|---------|--------|--------|------|
| 13 | EXP2_17_06_013_RUNTIME_FOR_OF_ARRAY_VERIFY | 数组 for-of 迭代元素值、迭代次数、空数组行为 | 3 | 0 | PASS |
| 14 | EXP2_17_06_014_RUNTIME_FOR_OF_STRING_VERIFY | 字符串 for-of 字符拼接、字符数、空字符串行为 | 3 | 0 | PASS |
| 15 | EXP2_17_06_015_RUNTIME_FOR_OF_CUSTOM_VERIFY | 自定义 Range 迭代求和、计数、空范围行为 | 3 | 0 | PASS |

---

## 执行过程异常修复记录

无。所有用例编译/运行即通过，无需修复。

### 注意：运行时模块入口格式

运行时用例需要使用 `MODNAME.ETSGLOBAL::main` 格式指定入口点。初始尝试使用 `MODNAME::main` 格式导致 "Cannot find class" 错误，修正为 ETSGLOBAL 格式后正常运行。

---

## 后续运行命令

```bash
# 编译和运行所有用例
ES2PANDA=~/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=~/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
BASE=/home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features/ets_cases/17.6_Iterable_Types

# compile-pass
for f in $BASE/compile-pass/*.ets; do
    $ES2PANDA --extension=ets --output=/tmp/t.abc "$f"
done

# compile-fail (expect errors)
for f in $BASE/compile-fail/*.ets; do
    $ES2PANDA --extension=ets --output=/tmp/t.abc "$f" 2>&1
done

# runtime
for f in $BASE/runtime/*.ets; do
    fname=$(basename "$f" .ets)
    $ES2PANDA --extension=ets --output=/tmp/t.abc "$f"
    $ARK --load-runtimes=ets --boot-panda-files=$BOOT_PANDA:$BOOT_ETS /tmp/t.abc "${fname}.ETSGLOBAL::main"
done
```
