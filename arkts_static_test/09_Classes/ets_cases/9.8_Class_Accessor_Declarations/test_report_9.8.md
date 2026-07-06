# 9.8 类访问器声明 - 测试执行报告

**测试日期：** 2026-06-19
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**boot files：** arkstdlib.abc + etsstdlib.abc
**运行环境：** Linux (native)
**运行脚本：** `09_Classes/run_classes_cases_wsl.sh`
**对应规范：** ArkTS Static Spec §9.8 Class Accessor Declarations

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 14 | 14 | 0 | 100% |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **31** | **31** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（11个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_BASIC_GETTER_SETTER | 基本 getter/setter 声明，private backing store，field access 语法 | PASS |
| 002 | PASS_GETTER_INFERRED_TYPE | getter 省略返回类型时从 body 推断（int/string/boolean） | PASS |
| 003 | PASS_OVERRIDE_ACCESSOR_COVARIANT | override getter 返回类型协变（更具体），setter 参数类型逆变（更泛化） | PASS |
| 008 | PASS_GETTER_SETTER_MODIFIER_MISMATCH | 同名 getter/setter 修饰符不同（static getter + 实例 setter）-- ArkTS 允许此场景 | PASS |
| 015 | PASS_GETTER_ONLY | 只声明 getter 不声明 setter 的只读计算属性（area/perimeter） | PASS |
| 016 | PASS_SETTER_ONLY | 只声明 setter 不声明 getter 的只写属性（日志/累加器/配置器） | PASS |
| 017 | PASS_ABSTRACT_ACCESSOR | 抽象类中声明 abstract getter/setter，由子类实现 | PASS |
| 018 | PASS_STATIC_ACCESSOR | 静态 getter/setter，通过类名访问 | PASS |
| 023 | PASS_GETTER_ONLY | getter-only（无setter）只读属性 -- 简化用例 | PASS |
| 027 | PASS_COMPUTED_ACCESSOR | 计算属性 getter（fullName = surname + forename） | PASS |
| 031 | PASS_SETTER_ONLY_ACCESS | setter-only 只写属性 -- 简化用例 | PASS |

### compile-fail（14个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 004 | FAIL_ACCESSOR_AS_METHOD | getter/setter 被当作方法调用（p.age() / p.age(17)）应编译失败 | PASS |
| 005 | FAIL_SETTER_OPTIONAL_PARAM | setter 参数为可选参数（p?: Object / v?: int）应编译失败 | PASS |
| 006 | FAIL_ACCESSOR_FIELD_CONFLICT | accessor 名称与非静态字段名称冲突应编译失败 | PASS |
| 007 | FAIL_ACCESSOR_METHOD_CONFLICT | accessor 名称与方法名称冲突应编译失败 | PASS |
| 009 | FAIL_FIELD_OVERRIDES_ACCESSOR | field 覆盖超类 accessor / accessor 覆盖超类 field 应编译失败 | PASS |
| 012 | FAIL_GETTER_WITH_PARAMETERS | getter 声明时带有参数（x: int / a: int, b: int）应编译失败 | PASS |
| 013 | FAIL_SETTER_WITH_RETURN_TYPE | setter 声明时带有显式返回类型（: int / : void）应编译失败 | PASS |
| 014 | FAIL_SETTER_NO_PARAMETERS | setter 声明时无参数应编译失败 | PASS |
| 019 | FAIL_OVERRIDE_GETTER_NON_COVARIANT | override getter 返回类型非协变（string->int / int->boolean）应编译失败 | PASS |
| 020 | FAIL_OVERRIDE_SETTER_NON_CONTRAVARIANT | override setter 参数类型非逆变（double->int / string->boolean）应编译失败 | PASS |
| 024 | FAIL_GETTER_WITH_PARAMS | getter 不能有参数| PASS |
| 025 | FAIL_SETTER_RETURN_TYPE | setter 不能有返回类型 | PASS |
| 026 | FAIL_SETTER_NO_PARAMS | setter 必须有参数  | PASS |
| 033 | FAIL_ACCESSOR_NAME_METHOD_CONFLICT | accessor 名与方法名冲突  | PASS |

### runtime（6个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | RUNTIME_GETTER_SETTER_BASIC | getter/setter 基本读写：setter 校验逻辑（负数/超范围/正常值），getter 读回 | 3 | PASS |
| 011 | RUNTIME_OVERRIDE_ACCESSOR | override accessor：子类 getter 返回更具体类型，setter 接受基类类型 | 1 | PASS |
| 021 | RUNTIME_ABSTRACT_ACCESSOR | 抽象 accessor：子类实现 getter/setter，验证默认值、设置、范围校验 | 5 | PASS |
| 022 | RUNTIME_STATIC_GETTER_SETTER | 静态 accessor：通过类名读写静态 getter/setter | 1 | PASS |
| 028 | RUNTIME_GETTER_INFERRED | getter 返回类型推断：无显式类型 getter 返回 backing field 值 | 1 | PASS |
| 032 | RUNTIME_ACCESSOR_VALIDATION | accessor 校验逻辑：正常值写入/读出、负数被拒绝 | 2 | PASS |

---

## 执行过程异常

**本次运行无失败用例，无需修复。**

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/09_Classes
SECTIONS="9.8_Class_Accessor_Declarations" bash run_classes_cases_wsl.sh
```
