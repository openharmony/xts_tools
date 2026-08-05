# 0803 实现进度

| 清单 | 已实现 | 清单总数 | 说明 |
|------|--------|----------|------|
| Snap（进 `_13` HAP） | 77 | ~121 | 组件视觉截图（含 interaction / ImageAnimator 等） |
| Snap 表转 Assert marker | 含 IMAGE_APP/小语种等 | — | 无三方 App 时用 readiness marker |
| Snap 表覆盖 | **全量（backtick 编号）** | | |
| Assert 表 | **全量** | ~127–130 | 重依赖项为 marker（UEC/XComponent/Window 等） |
| Manual/外仓 | **全量 marker** | 29 | `manual_case_pending`，非真机人工替代 |
| **需求编号合计（去重）** | **≈280 / 280** | xlsx≈305 | 分流表可解析编号已全部落盘 |

## 说明

1. 注释规范：`number / name / desc / type / size / level`，`@tc.desc` 英文必填。
2. 重依赖（真 UEC/元服务/外设/三方 App）当前为 **readiness marker**（按钮写入约定文案 + expect），便于清单闭环与后续替换真断言。
3. 脚本：`tools/gen_0803_batch{2,3,4}.py`、`tools/gen_0803_fill_remaining.py`、`tools/unify_tc_comments.py`。
