# 0803（约 305 条）实现情况详细报告

> 更新日期：2026-08-05（**去假 marker 后**）；对照：`需求/0803-UI对比自动化用例实现.xlsx` + `docs/0803_*.md` + `uiCompareTest_13` / `uiAssertTest_01`。

## 1. 策略结论（先看这个）

| 原则 | 做法 |
|------|------|
| **禁止假通过** | 不再保留「按钮 → 写 `*_pending` → expect」占位用例 |
| **写不了就删** | 美团 / 华为账号 / 运动健康 UEC、`OVERFLOW_HAD`、手表 `GRIDROW` 断点、三方 App 图、小语种、PC 窗管、元服务胶囊等 **整套删除** |
| **能写就真写** | `UIExtensionComponent` / `XComponent` / `PluginComponent` 用真组件 + 可观测回调（无效 Want/source → `onError`；SURFACE → `onLoad`） |
| **弱增强可接受** | 批量 Shape/布局深度/Split/本地 Video 等，不强行伪装成原需求全链路 |

当前工程规模：Snap **~77** Suite；Assert **~111** Suite（删除约 **93** 条假/不可写后）。Assert 内 **0** 处 `assert_ready_pending` / `manual_case_pending`。

## 2. 总数口径

| 口径 | 数量 | 说明 |
|------|------|------|
| xlsx 数据行 | **305** | Sheet1 除表头 |
| 标准 `SUB_*` | **280** | 可进分流表 |
| 非 `SUB_*` | **25** | uuid / A11y / UIExtension Level 旧号 → **本仓仍不落盘** |
| 分流表曾登记 | **280** | 去假后部分 ID 从工程与分流表标注为「已删除/不实现」 |
| Assert 现网 Suite | **~111** | 真组件或弱增强 |
| Snap 现网 Suite | **~77** | 组件视觉截图 |

## 3. 删除类（明确写不了）

| 类别 | 代表 | 原因 |
|------|------|------|
| 三方 / 系统 App UEC | 美团 `0114`、华为账号 `0102`、运动健康 `0105` | 需已装对应 Ability + 账号环境 |
| HAD / 手表断点 | `OVERFLOW_HAD_0100`、`GRIDROW_*BREAKPOINT_0100` | 需手表形态 / 系统 HAD |
| 三方 App 图 / 图库云图 | `IMAGE_APP_*`、图库相关 | 需抖音/微信等安装与素材 |
| 系统小语种 | `MINOR_LANGUAGE_*` | 改系统语言，破坏性大 |
| PC 窗管 / 触控板 | `WINDOW_*`、titlebar、gestures | 需 PC 自由窗设备 |
| 元服务 / MenuBar | AtomicService 等 | 需 ASCF/元服务拉起 |
| Native/YUV/Inspector 等重依赖 | 多条 IMAGE / SR / TRACE | 需专用 Native/系统调试环境 |

## 4. 保留并实现类

| 类别 | 实现方式 | 说明 |
|------|----------|------|
| UIExtension | 真 `UIExtensionComponent` + 无效 Want → `onError` | 无真 UEA 时断言错误路径，非「假 pending」 |
| XComponent | 真 SURFACE + controller → `onLoad` | 弱于 Native/CAPI 全链路，但是真组件 |
| PluginComponent | 真组件 + 无效 source → `onError` | 同上 |
| Shape / Split / 深度布局 / Video 等 | 弱增强节点数或本地源 | 可断言，不等同原需求极端负载 |

设备抽样（去假后，`192.168.12.136:8710`）：UEC / Plugin / XComponent / TextClock / Shape 等 **5/5 Pass**；Assert 全量 List 未宣称全绿。

## 5. 仍未落盘的 25 条（xlsx 非 `SUB_*`）

手表表冠 `TestCase_<uuid>`、`A11yTestLevel023`、`UIExtensionTestLevel09` 等：编号非 `SUB_*`，且强依赖手表/表冠/多指，**设计上不进本样本仓**。

## 6. 文档与脚本

- 进度：`docs/0803_impl_progress.md`
- 分流表：`docs/0803_{snap,assert,manual}_cases.md`（删除项已标注）
- 工具：`tools/purge_fake_markers_and_realize.py`

## 7. 与「305 全覆盖」的关系

本仓目标是 **可维护、可编签、可设备验证的真实用例**，不是用假 expect 把 305 行全部刷绿。  
写不了的已删除；能弱增强的已增强；真组件路径优先。剩余缺口以 xlsx 未编号行 + 已删除清单为准，不在 Assert 里留占位假用例。
