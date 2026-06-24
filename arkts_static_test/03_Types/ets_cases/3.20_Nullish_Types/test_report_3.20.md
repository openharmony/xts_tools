# 3.20 Nullish Types - 测试执行报告

**执行日期：** 2026-06-18

## 统计

| 分类 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 10 | 10 | 0 |
| compile-fail | 6 | 6 | 0 |
| runtime | 6 | 6 | 0 |
| **总计** | **22** | **22** | **0** |

## 覆盖点

- `T | undefined` / `T | null` / `T | null | undefined` ✅
- derived → Base|nullish ✅
- safe field/method/index/function call ✅
- nullish coalescing `??` ✅
- ensure-not-nullish `!` ✅
- cast from nullish ✅
- nullish 不兼容 Object ✅
- direct member access fail ✅

## 跨语言实测

- Java：`cross_lang_verify/JavaNullishTypes.java` → pass=9 fail=0
- Swift：`cross_lang_verify/SwiftNullishTypes.swift` → pass=9 fail=0
