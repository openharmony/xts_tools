# 9.9 Constructor Declaration 测试报告

**执行日期：** 2026-06-19
**测试引擎：** es2panda (编译检查) + ark VM (运行时)
**编译选项：** --extension=ets

---

## 一、执行结果概览

| 类型 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime | 3 | 3 | 0 | 100% |
| **总计** | **10** | **10** | **0** | **100%** |

**异常数：** 0（全部 10 个用例在 227 个总用例中 0 unexpected）

---

## 二、compile-pass 用例

| ID | 测试内容 | 结果 |
|----|---------|------|
| CLS_09_09_001_PASS_CONSTRUCTOR_BASIC | 构造器基本声明+初始化字段 | ✅ PASS |
| CLS_09_09_002_PASS_CONSTRUCTOR_PARAM_DEFAULTS | 构造器参数默认值 | ✅ PASS |
| CLS_09_09_003_PASS_CONSTRUCTOR_ACCESS_MODIFIER | 构造器访问修饰符 | ✅ PASS |
| CLS_09_09_007_PASS_CONSTRUCTOR_OVERLOAD_CTOR | 默认参数模拟重载 | ✅ PASS |

## 三、compile-fail 用例

| ID | 测试内容 | 预期错误 | 结果 |
|----|---------|---------|------|
| CLS_09_09_004_FAIL_NATIVE_CONSTRUCTOR_WITH_BODY | native 构造器有体 | 编译错误 | ✅ FAIL OK |
| CLS_09_09_005_FAIL_NON_NATIVE_CONSTRUCTOR_NO_BODY | 非 native 无体 | 编译错误 | ✅ FAIL OK |
| CLS_09_09_006_FAIL_SUPER_CONSTRUCTOR_NOT_ACCESSIBLE | 父类构造器不可访问 | 编译错误 | ✅ FAIL OK |

## 四、runtime 用例

| ID | 测试内容 | 结果 |
|----|---------|------|
| CLS_09_09_008_RUNTIME_CONSTRUCTOR_INIT_FIELDS | 构造器字段初始化 | ✅ PASS |
| CLS_09_09_009_RUNTIME_CONSTRUCTOR_DEFAULT_PARAM | 默认参数构造器运行时 | ✅ PASS |
| CLS_09_09_010_RUNTIME_CONSTRUCTOR_CHAIN | 父子类构造器链 | ✅ PASS |
