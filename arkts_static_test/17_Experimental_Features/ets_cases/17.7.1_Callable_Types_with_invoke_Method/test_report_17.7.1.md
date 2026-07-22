# 17.7.1 Callable Types with $_invoke Method - 测试执行报告

**测试日期：** 2026-06-23
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (Ubuntu)

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

---

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 编译结果 |
|---|---------|---------|---------|
| 1 | EXP2_17_07_01_001_PASS_SIMPLE_INVOKE_NO_PARAMS | 无参 static $_invoke + 短形式/显式调用 | ✅ PASS |
| 2 | EXP2_17_07_01_002_PASS_INVOKE_WITH_PARAMS | 有参有返回 static $_invoke (int/add, string/concat) | ✅ PASS |
| 3 | EXP2_17_07_01_003_PASS_MULTIPLE_OVERLOADS | 4 个不同签名的 $_invoke 重载 | ✅ PASS |
| 4 | EXP2_17_07_01_004_PASS_EXPLICIT_CALL | 显式 ClassName.$_invoke(args) 调用 | ✅ PASS |
| 5 | EXP2_17_07_01_005_PASS_VOID_RETURN | void 返回的 $_invoke | ✅ PASS |
| 6 | EXP2_17_07_01_006_PASS_COMPLEX_PARAMS | 数组/boolean 等复杂参数 | ✅ PASS |
| 7 | EXP2_17_07_01_007_PASS_GENERIC_CLASS | 泛型类 static $_invoke (不用类型参数) | ✅ PASS |
| 8 | EXP2_17_07_01_008_PASS_INSTANCE_INVOKE_DEFINED | 实例 $_invoke 定义 (合法) | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 编译结果 | 错误信息 |
|---|---------|---------|---------|---------|
| 9 | EXP2_17_07_01_009_FAIL_BOTH_INVOKE_AND_INSTANTIATE | 同时定义 $_invoke 和 $_instantiate | ✅ FAIL (expected) | ESE0221: Static $_invoke method and static $_instantiate method both exist in class/interface |
| 10 | EXP2_17_07_01_010_FAIL_INSTANCE_INVOKE_NOT_CALLABLE | 仅实例 $_invoke 的类尝试 ClassName() 调用 | ✅ FAIL (expected) | ESE0172: No static $_invoke method and static $_instantiate method; ESE0002: Type has no call signatures |
| 11 | EXP2_17_07_01_011_FAIL_GENERIC_USE_TYPE_PARAM | 泛型类 $_invoke 使用类型参数 | ✅ FAIL (expected) | ESE170021: Static members cannot reference class type parameters 'T' |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 | 输出 |
|---|---------|---------|--------|------|------|
| 12 | EXP2_17_07_01_012_RUNTIME_SHORT_FORM_CALL | 短形式 vs 显式调用结果一致性 | 4 | ✅ PASS | "All assertions passed" |
| 13 | EXP2_17_07_01_013_RUNTIME_OVERLOAD_SELECT | 多重重载运行时选择正确性 | 5 | ✅ PASS | "All assertions passed" |
| 14 | EXP2_17_07_01_014_RUNTIME_NEW_VS_INVOKE | new 表达式 vs $_invoke 路径区分 | 4 | ✅ PASS | "All assertions passed" |

---

## 编译错误信息详解

### ESE0221 (用例 009)
```
Static $_invoke method and static $_instantiate method both exist in 
class/interface BothInvokeAndInstantiate is not allowed.
```
对应 spec 规则：A class can define either the method $_invoke() or the method $_instantiate() but not both.

### ESE0172 (用例 010)
```
No static $_invoke method and static $_instantiate method in OnlyInstanceInvoke. 
OnlyInstanceInvoke() is not allowed.
```
对应 spec 规则：A class can declare an instance method $_invoke but the method does not make the class callable.

### ESE170021 (用例 011)
```
Static members cannot reference class type parameters 'T'
```
对应 spec 规则：Static methods have no access to type parameters of generic in ArkTS.

---

## 运行时执行验证

所有 3 个 runtime 用例均成功编译并通过 ark VM 实际执行，所有断言全部通过：

- **用例 012**：验证短形式 `Add(2, 2)` 与显式 `Add.$_invoke(2, 2)` 产生相同结果。覆盖 int 加法、string 拼接。
- **用例 013**：验证 4 个不同签名的 $_invoke 重载在运行时根据参数类型/数量正确分派。覆盖无参、int、string、双 int。
- **用例 014**：验证 `new Counter()` 调用构造函数（设置 constructed=true），而 `Counter()` 调用 $_invoke（设置 invokedCount=1, constructed=false）。两者路径明确区分且互不影响。

---

## 执行过程异常修复记录

无异常。所有 14 个用例本次执行即全部通过。

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/17_Experimental_Features
SECTIONS="17.7.1_Callable_Types_with_invoke_Method" bash run_experimental_features_cases_wsl.sh
```
