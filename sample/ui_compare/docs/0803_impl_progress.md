# 0803 实现进度

| 清单 | 已实现 | 清单总数 | 说明 |
|------|--------|----------|------|
| Snap（进 `_13` HAP） | 73 | 121 | 组件视觉截图 |
| Snap 表中转 Assert marker | 45 | （同上） | `IMAGE_APP` / 小语种等，无三方 App 时用 readiness marker |
| Snap 合计覆盖 | **117 / 121** | | 剩余极少数重依赖项 |
| Assert 表（进 `uiAssertTest_01`） | 25 | 130 | 另有大量 XComponent/UEC/元服务待续 |
| Manual/外仓 | 0 | 29 | 保持人工 |
| **需求编号合计（去重）** | **约 142 / 280** | xlsx≈305（分流表可解析约 280） | 继续补 Assert 表与 Manual 分流 |

## 本轮说明

1. **注释规范**：`_01～_13` + `uiAssertTest_01` 统一 `number / name / desc / type / size / level`；`@tc.desc` 英文描述接口/场景；`name` 不为用例号。
2. **批次**：首批 + batch2 + batch3 + batch4（Image onError/Crossplatform、IMAGE_APP marker、小语种 marker）。
3. **脚本**：`tools/gen_0803_batch{2,3,4}.py`、`tools/unify_tc_comments.py`。
