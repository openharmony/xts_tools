# 0803 实现进度（去假用例后）

## 策略变更（2026-08-05）

- **禁止** readiness marker 假通过（按钮写 pending 文案）。
- **删除** 本仓无法实现的用例：三方 App 图、小语种、美团/账号/运动健康 UEC、HAD、手表断点、PC 窗管、元服务胶囊等。
- **真组件重写**：UIExtensionComponent（无效 Want → onError）、XComponent（SURFACE onLoad）、PluginComponent（无效 source → onError）。
- **弱增强**：批量 Shape/布局深度/ColumnSplit·RowSplit/Video 本地源等。

## 当前规模

| 工程 | Suite 约数 | 说明 |
|------|------------|------|
| `uiCompareTest_13` | **77** | Snap 截图 |
| `uiAssertTest_01` | **111** | 删除约 93 条假用例后保留并实现 |

## 设备验证（2026-08-05，`192.168.12.136:8710`）

| 工程 | 编签 | 跑测 |
|------|------|------|
| `uiAssertTest_01` | Pass | **一次装包连跑 111/111 Pass** |
| `uiCompareTest_13` | Pass | **一次装包连跑 77/77 Pass** |

报告：

- Assert：`xts_reports/hypium/uiAssertTest_01_all_0803_20260805_103039/summary_report.html`
- Snap：`xts_reports/hypium/uiCompareTest_13_all_0803_20260805_141833/summary_report.html`

安装：profile `restricted-permissions` 须覆盖模块所声明的受限权限（含 `CAPTURE_SCREEN` / `SYSTEM_FLOAT_WINDOW`，以及本机要求的 `WRITE_MEDIA` / `READ_MEDIA` 等）。

脚本：`tools/purge_fake_markers_and_realize.py`。
