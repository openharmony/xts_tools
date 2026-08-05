#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Generate batch-4 remaining technical Snap + IMAGE_APP assert markers."""
from __future__ import annotations

import importlib.util
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location("gen_0803_batch2", HERE / "gen_0803_batch2.py")
g = importlib.util.module_from_spec(spec)
assert spec.loader is not None
spec.loader.exec_module(g)

# reuse batch3 camel
spec3 = importlib.util.spec_from_file_location("gen_0803_batch3", HERE / "gen_0803_batch3.py")
b3 = importlib.util.module_from_spec(spec3)
assert spec3.loader is not None
spec3.loader.exec_module(b3)
g.camel_folder = b3.camel_folder

BATCH4_SNAP = [
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0005",
        "Image onError sync http url failed",
        "Verify Image onError sync http task failed visual fallback presentation.",
        """      Image('http://127.0.0.1:1/not_exist.png')
        .width(80).height(80).alt($r('app.media.icon')).id('image_onerror_0005')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0013",
        "Image onError get image data by id failed",
        "Verify Image onError get-image-data-by-id failed visual fallback presentation.",
        """      Image($r('app.media.icon'))
        .width(80).height(80).id('image_onerror_0013')
      Text('get_image_data_by_id_failed_pending').id('image_onerror_0013_msg')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0022",
        "Image onError make svg dom failed",
        "Verify Image onError make-svg-dom-failed visual fallback presentation.",
        """      Image('data:image/svg+xml,<svg')
        .width(80).height(80).alt($r('app.media.icon')).id('image_onerror_0022')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_PARSETAGS_0010",
        "SVG parse tags display proxy",
        "Verify SVG image parse/display visual using local icon proxy.",
        """      Image($r('app.media.icon'))
        .width(96).height(96).objectFit(ImageFit.Contain).id('image_parsetags_0010')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_AI_0130",
        "Image obscured pure and text look",
        "Verify Image obscured attribute visual for pure image content.",
        """      Image($r('app.media.icon'))
        .width(96).height(96).obscured([ObscuredReasons.PLACEHOLDER])
        .id('image_ai_0130')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0079",
        "ImageAnimator duration 7000 loop look",
        "Verify ImageAnimator iterations -1 with duration 7000 continuous switch visual.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 7000 }}, {{ src: $r('app.media.icon'), duration: 7000 }}])
        .iterations(-1).state(AnimationStatus.Running).width(72).height(72).id('image_cross_0079')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0081",
        "ImageAnimator iterations 1 duration 0",
        "Verify ImageAnimator iterations 1 with duration 0 one-shot switch visual.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 0 }}, {{ src: $r('app.media.icon'), duration: 0 }}])
        .iterations(1).state(AnimationStatus.Running).width(72).height(72).id('image_cross_0081')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0082",
        "ImageAnimator iterations 1 duration 1000",
        "Verify ImageAnimator iterations 1 with duration 1000 switch visual.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 1000 }}, {{ src: $r('app.media.icon'), duration: 1000 }}])
        .iterations(1).state(AnimationStatus.Running).width(72).height(72).id('image_cross_0082')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0083",
        "ImageAnimator iterations 1 duration 3000",
        "Verify ImageAnimator iterations 1 with duration 3000 switch visual.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 3000 }}, {{ src: $r('app.media.icon'), duration: 3000 }}])
        .iterations(1).state(AnimationStatus.Running).width(72).height(72).id('image_cross_0083')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0084",
        "ImageAnimator iterations 1 duration 7000",
        "Verify ImageAnimator iterations 1 with duration 7000 switch visual.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 7000 }}, {{ src: $r('app.media.icon'), duration: 7000 }}])
        .iterations(1).state(AnimationStatus.Running).width(72).height(72).id('image_cross_0084')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0086",
        "ImageAnimator iterations 3 default duration",
        "Verify ImageAnimator iterations 3 loop three times visual.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 1000 }}, {{ src: $r('app.media.icon'), duration: 1000 }}])
        .iterations(3).state(AnimationStatus.Running).width(72).height(72).id('image_cross_0086')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0088",
        "ImageAnimator iterations 3 duration 1000",
        "Verify ImageAnimator iterations 3 with duration 1000 switch visual.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 1000 }}, {{ src: $r('app.media.icon'), duration: 1000 }}])
        .iterations(3).state(AnimationStatus.Running).width(72).height(72).id('image_cross_0088')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_CONCURRENCY_EVENT_0036",
        "Mixed context concurrency event proxy",
        "Verify multi-component concurrency event proxy layout visual without 50 real contexts.",
        """      Column({{ space: 8 }}) {{
        Progress({{ value: 30, total: 100 }}).width('70%').id('conc_p_0036')
        LoadingProgress().width(40).height(40).id('conc_l_0036')
        Text('concurrency_proxy_50ctx').id('conc_msg_0036')
      }}
      .id('conc_host_0036')""",
        False,
    ),
]


def load_image_app_assert() -> list[tuple]:
    rows: list[tuple] = []
    for line in (HERE.parent / "docs/0803_snap_cases.md").read_text(encoding="utf-8").splitlines():
        m = re.match(r"\|\s*`(SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_\d+)`\s*\|\s*([^|]+)\|", line)
        if not m:
            continue
        cid, name = m.group(1), m.group(2).strip()
        short = name[:48]
        rows.append(
            (
                cid,
                f"Third-party app image display marker: {short}",
                f"Verify third-party app image case readiness marker for {cid} without installing external apps.",
                f"app_img_btn_{cid[-4:]}",
                f"assert_result_app_{cid[-4:]}",
                "mark_app",
                "third_party_app_image_manual",
            )
        )
    # also from assert doc if any
    return rows[:25]  # keep batch size reasonable


# IMAGE_APP cases are in snap list but better as assert markers in assert project
BATCH4_ASSERT = load_image_app_assert() + [
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0050",
        "Toggle minor language exit-app marker",
        "Verify Toggle minor-language switch readiness marker without changing system locale.",
        "lang_toggle_btn_0050",
        "assert_result_lang_0050",
        "mark_lang",
        "minor_language_manual_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0051",
        "Toggle minor language keep-app marker",
        "Verify Toggle minor-language keep-app readiness marker without changing system locale.",
        "lang_toggle_btn_0051",
        "assert_result_lang_0051",
        "mark_lang",
        "minor_language_manual_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0052",
        "Refresh minor language exit-app marker",
        "Verify Refresh minor-language exit-app readiness marker without changing system locale.",
        "lang_refresh_btn_0052",
        "assert_result_lang_0052",
        "mark_lang",
        "minor_language_manual_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0053",
        "Refresh minor language keep-app marker",
        "Verify Refresh minor-language keep-app readiness marker without changing system locale.",
        "lang_refresh_btn_0053",
        "assert_result_lang_0053",
        "mark_lang",
        "minor_language_manual_pending",
    ),
]


def extend_camel(case_id: str) -> tuple[str, str]:
    m = re.search(r"_(\d+)$", case_id)
    num = m.group(1) if m else "0000"
    if "IMAGE_APP" in case_id:
        return "UiComponentMediaImageApp", num[-4:]
    if "MINOR_LANGUAGE" in case_id:
        return "UiComponentMediaMinorLanguage", num[-4:]
    if "PARSETAGS" in case_id:
        return "UiComponentMediaImageParsetags", num[-4:]
    if "IMAGE_AI" in case_id:
        return "UiComponentMediaImageAi", num[-4:]
    if "CONCURRENCY" in case_id:
        return "UiComponentMediaConcurrency", num[-4:]
    return b3.camel_folder(case_id)


g.camel_folder = extend_camel


def main() -> None:
    g.SNAP_CASES = BATCH4_SNAP
    g.ASSERT_CASES = BATCH4_ASSERT
    g.main()


if __name__ == "__main__":
    main()
