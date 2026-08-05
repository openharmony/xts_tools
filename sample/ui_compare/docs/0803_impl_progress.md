# 0803 实现进度

| 清单 | 已实现（本仓 `_13` / `uiAssertTest_01`） | 清单总数 |
|------|------------------------------------------|----------|
| Snap | 60 | 121（xlsx 分流约 142，表内可解析编号以本表为准） |
| Assert | 25 | 130 |
| Manual/外仓 | 0（保持人工） | 29 |

## 本轮说明

1. **注释规范**：`_01～_13` + `uiAssertTest_01` 已统一为 `number / name / desc / type / size / level`，`@tc.desc` 为英文接口/场景说明；`name` 不再等于用例号。
2. **已落地批次**：首批 Progress/Loading + batch2（Image API20/Picker/Badge 等）+ batch3（DC/Calendar/QRCode/ImageAnimator/TV Picker 与 UEC/Plugin marker 等）。
3. **仍未进 HAP 的主体**：`IMAGE_APP_*` 三方应用图、小语种切换、商城/账号/真实外设、大量 XComponent CAPI / DC+UEC 真机依赖项 → 继续按 marker 或保持 manual。

生成脚本：`tools/gen_0803_batch2.py`、`tools/gen_0803_batch3.py`；注释工具：`tools/unify_tc_comments.py`。
