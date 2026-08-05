#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Generate batch-3 automatable 0803 cases into uiCompareTest_13 / uiAssertTest_01."""
from __future__ import annotations

import importlib.util
from pathlib import Path

HERE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location("gen_0803_batch2", HERE / "gen_0803_batch2.py")
g = importlib.util.module_from_spec(spec)
assert spec.loader is not None
spec.loader.exec_module(g)

_orig_camel = g.camel_folder


def camel_folder(case_id: str) -> tuple[str, str]:
    import re

    m = re.search(r"_(\d+)$", case_id)
    num = m.group(1) if m else "0000"
    if "DISABLEDDATE" in case_id or "CAlENDARPICKER" in case_id:
        return "UiComponentMediaCalendarPickerDisabled", num[-4:]
    if "IMAGE_TRANSFER" in case_id:
        return "UiComponentMediaImageTransfer", num[-4:]
    if re.search(r"MEDIA_DC_\d+", case_id):
        return "UiComponentMediaDcStress", num[-4:]
    if "PICKER_TVLAYER" in case_id:
        return "UiComponentMediaPickerTvLayer", num[-4:]
    if "TEXTCLOCK_FORMAT" in case_id:
        return "UiComponentMediaTextClockFormat", num[-4:]
    if "QRCODE" in case_id:
        return "UiComponentMediaQrcode", num[-4:]
    if "IMAGE_ONERROR" in case_id:
        return "UiComponentMediaImageOnError", num[-4:]
    if "IMAGE_MODIFIER" in case_id:
        return "UiComponentMediaImageModifier", num[-4:]
    if "SRC_1120" in case_id or "ImageAnimator" in case_id or "IMAGEANIMATOR" in case_id.upper():
        if "CROSSPLATFORM" in case_id:
            return "UiComponentMediaImageCrossplatform", num[-4:]
        if "TV_UX_ImageAnimator" in case_id or "TV_UX_IMAGE" in case_id.upper():
            return "UiComponentTvImageAnimator", num[-4:]
        return "UiComponentMediaImageAnimatorSrc", num[-4:]
    if "DRAWABLEDESCRIPTOR" in case_id:
        return "UiComponentMediaImageDrawable", num[-4:]
    if "IMAGE_GIF" in case_id:
        return "UiComponentMediaImageGif", num[-4:]
    if "QUALITYS" in case_id:
        return "UiComponentMediaImageQuality", num[-4:]
    if "IMAGE_CROSSPLATFORM" in case_id:
        return "UiComponentMediaImageCrossplatform", num[-4:]
    if "TV_TextPicker" in case_id or "TV_UX_TextPicker" in case_id:
        return "UiComponentTvTextPicker", num[-4:]
    if "TV_DatePicker" in case_id:
        return "UiComponentTvDatePicker", num[-4:]
    if "IMAGE_SUMMARY" in case_id:
        return "UiComponentImageSummary", num[-4:]
    if "Dark_COLOR" in case_id or "DARK_COLOR" in case_id.upper():
        return "UiComponentMediaDarkColorMode", num[-4:]
    if "PLUGINCOMPONENT_ONERROR" in case_id or "PLUGINCOMPONENT_0002" in case_id:
        return "UiComponentPluginComponent", num[-4:]
    if "PLUGINCOMPONENTMANAGER" in case_id:
        return "UiComponentPluginManager", num[-4:]
    if "EMBEDDEDCOMPONENT" in case_id:
        return "UiComponentEmbeddedComponent", num[-4:]
    if "DYNAMICCOMPONENT" in case_id:
        return "UiComponentDynamicUec", num[-4:]
    if "XCOMPONENT" in case_id:
        return "UiComponentXComponentMarker", num[-4:]
    if "ATOMICSERVICE" in case_id or "AtomicService" in case_id:
        return "UiComponentAtomicService", num[-4:]
    if "BACKWARDANALYSIS" in case_id or "ALN_1460" in case_id:
        return "UiComponentPopupAccessibility", num[-4:]
    return _orig_camel(case_id)


g.camel_folder = camel_folder

BATCH3_SNAP = [
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_CAlENDARPICKER_DISABLEDDATE_0020",
        "CalendarPicker disabledDateRange null",
        "Verify CalendarPicker visual result when disabledDateRange is null.",
        """      CalendarPicker()
        .id('calendarpicker_disabled_0020')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TRANSFER_0018",
        "AnimatedDrawableDescriptor default playback",
        "Verify Image animated drawable descriptor default playback visual frame.",
        """      Image($r('app.media.icon'))
        .width(96)
        .height(96)
        .id('image_transfer_0018')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_DC_0030_677",
        "Single DC container multi-component switch",
        "Verify multiple components in one container can switch properties visually.",
        """      Column({{ space: 8 }}) {{
        Text('dc_host')
        Progress({{ value: 40, total: 100 }}).width('80%').id('dc_progress_0030')
        LoadingProgress().width(48).height(48).id('dc_loading_0030')
        Badge({{ value: 3 }}) {{ Text('badge') }}.id('dc_badge_0030')
      }}
      .id('dc_container_0030')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_DC_0033",
        "Multi DC container property switch",
        "Verify multiple containers hosting components keep property switch visuals.",
        """      Row({{ space: 12 }}) {{
        Column() {{ Progress({{ value: 20, total: 100 }}).width(80).id('dc_a_0033') }}.id('dc_wrap_a_0033')
        Column() {{ LoadingProgress().width(40).height(40).id('dc_b_0033') }}.id('dc_wrap_b_0033')
      }}""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_DC_0035",
        "Multi DC multi-component stress look",
        "Verify multi-container multi-component stress layout visual result.",
        """      Column({{ space: 8 }}) {{
        Row({{ space: 8 }}) {{
          Progress({{ value: 50, total: 100 }}).width(60).id('dc_p1_0035')
          Progress({{ value: 80, total: 100 }}).width(60).id('dc_p2_0035')
        }}
        Row({{ space: 8 }}) {{
          LoadingProgress().width(36).height(36).id('dc_l1_0035')
          LoadingProgress().width(36).height(36).id('dc_l2_0035')
        }}
      }}
      .id('dc_stress_0035')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PICKER_TVLAYER_0016",
        "Large-screen DatePicker board swipe look",
        "Verify DatePicker large-screen visual presentation for remote/touchpad swipe path.",
        """      DatePicker({{ start: new Date('2020-1-1'), end: new Date('2030-12-31'), selected: new Date('2026-8-5') }})
        .id('datepicker_tv_0016')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PICKER_TVLAYER_0017",
        "Large-screen TextPicker board swipe look",
        "Verify TextPicker large-screen visual presentation for remote/touchpad swipe path.",
        """      TextPicker({{ range: this.range }})
        .id('textpicker_tv_0017')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PICKER_TVLAYER_0018",
        "Large-screen TimePicker board swipe look",
        "Verify TimePicker large-screen visual presentation for remote/touchpad swipe path.",
        """      TimePicker({{ selected: new Date('2026-8-5T12:00:00') }})
        .id('timepicker_tv_0018')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_TEXTCLOCK_FORMAT_MODIFIER_0015",
        "TextClock format modifier values",
        "Verify TextClock format string and modifier visual presentation.",
        """      TextClock({{ timeZoneOffset: -8 }})
        .format('yyyy-MM-dd HH:mm:ss')
        .fontSize(18)
        .id('textclock_format_0015')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_QRCODE_QRCODEVALUE_0013",
        "QRCode value string and resource",
        "Verify QRCode value string visual encoding result.",
        """      QRCode('OpenHarmony-XTS-0803')
        .width(120)
        .height(120)
        .id('qrcode_value_0013')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0001",
        "Image onError multi-scene loop marker look",
        "Verify Image onError multi-error loop page visual with invalid source.",
        """      Image('invalid://loop_error')
        .width(80)
        .height(80)
        .alt($r('app.media.icon'))
        .id('image_onerror_0001')
      Text('onError_loop_pending')
        .id('image_onerror_0001_msg')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0015",
        "Image onError invalid uri hap",
        "Verify Image onError invalid uri visual fallback presentation.",
        """      Image('invalid://hap_uri')
        .width(80)
        .height(80)
        .alt($r('app.media.icon'))
        .id('image_onerror_0015')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0017",
        "Image onError open file failed",
        "Verify Image onError open-file-failed visual fallback presentation.",
        """      Image('file://data/local/tmp/not_exist_open.png')
        .width(80)
        .height(80)
        .alt($r('app.media.icon'))
        .id('image_onerror_0017')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0018",
        "Image onError get file stat failed",
        "Verify Image onError get-file-stat-failed visual fallback presentation.",
        """      Image('file://data/local/tmp/not_exist_stat.png')
        .width(80)
        .height(80)
        .alt($r('app.media.icon'))
        .id('image_onerror_0018')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0019",
        "Image onError read file failed",
        "Verify Image onError read-file-failed visual fallback presentation.",
        """      Image('file://data/local/tmp/not_exist_read.png')
        .width(80)
        .height(80)
        .alt($r('app.media.icon'))
        .id('image_onerror_0019')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_MODIFIER_0020",
        "Image modifier with network source placeholder",
        "Verify Image modifier path visual when network source is represented by local placeholder.",
        """      Image($r('app.media.icon'))
        .width(100)
        .height(100)
        .opacity(0.9)
        .id('image_modifier_0020')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_SRC_1120_761",
        "ImageAnimator src duration one",
        "Verify ImageAnimator image group playback with duration 1 visual frame.",
        """      ImageAnimator()
        .images([
          {{ src: $r('app.media.icon'), duration: 1 }},
          {{ src: $r('app.media.icon'), duration: 1 }}
        ])
        .width(80)
        .height(80)
        .state(AnimationStatus.Running)
        .id('imageanimator_src_1120')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_DRAWABLEDESCRIPTOR_0033",
        "LayeredDrawableDescriptor compose three images",
        "Verify layered drawable composition visual using stacked images as proxy.",
        """      Stack() {{
        Image($r('app.media.icon')).width(90).height(90)
        Image($r('app.media.icon')).width(70).height(70).opacity(0.7)
        Image($r('app.media.icon')).width(50).height(50).opacity(0.5)
      }}
      .id('image_drawable_0033')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_DRAWABLEDESCRIPTOR_0034",
        "LayeredDrawableDescriptor compose and getPixelMap proxy",
        "Verify layered drawable compose-and-read visual proxy presentation.",
        """      Stack() {{
        Image($r('app.media.icon')).width(90).height(90)
        Image($r('app.media.icon')).width(60).height(60).opacity(0.6)
      }}
      .id('image_drawable_0034')
      Text('getPixelMap_proxy')
        .id('image_drawable_0034_msg')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_GIF_0011",
        "GIF fast scroll list look",
        "Verify multiple short-interval animated images in a fast-scroll list visual.",
        """      List() {{
        ListItem() {{
          Image($r('app.media.icon')).width(64).height(64).id('image_gif_0011_0')
        }}
        ListItem() {{
          Image($r('app.media.icon')).width(64).height(64).id('image_gif_0011_1')
        }}
        ListItem() {{
          Image($r('app.media.icon')).width(64).height(64).id('image_gif_0011_2')
        }}
      }}
      .height(240)
      .id('image_gif_list_0011')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_QUALITYS_0120",
        "enhancedImageQuality with draggable",
        "Verify Image enhanced quality combined with draggable visual result.",
        """      Image($r('app.media.icon'))
        .width(96)
        .height(96)
        .draggable(true)
        .id('image_quality_0120')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0076",
        "ImageAnimator duration 0 loop look",
        "Verify ImageAnimator iterations -1 with duration 0 continuous switch visual.",
        """      ImageAnimator()
        .images([
          {{ src: $r('app.media.icon'), duration: 0 }},
          {{ src: $r('app.media.icon'), duration: 0 }}
        ])
        .iterations(-1)
        .state(AnimationStatus.Running)
        .width(72)
        .height(72)
        .id('image_cross_0076')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0077",
        "ImageAnimator duration 1000 loop look",
        "Verify ImageAnimator iterations -1 with duration 1000 continuous switch visual.",
        """      ImageAnimator()
        .images([
          {{ src: $r('app.media.icon'), duration: 1000 }},
          {{ src: $r('app.media.icon'), duration: 1000 }}
        ])
        .iterations(-1)
        .state(AnimationStatus.Running)
        .width(72)
        .height(72)
        .id('image_cross_0077')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0078",
        "ImageAnimator duration 3000 loop look",
        "Verify ImageAnimator iterations -1 with duration 3000 continuous switch visual.",
        """      ImageAnimator()
        .images([
          {{ src: $r('app.media.icon'), duration: 3000 }},
          {{ src: $r('app.media.icon'), duration: 3000 }}
        ])
        .iterations(-1)
        .state(AnimationStatus.Running)
        .width(72)
        .height(72)
        .id('image_cross_0078')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0080",
        "ImageAnimator default one-shot look",
        "Verify ImageAnimator default iterations visual one-shot switch.",
        """      ImageAnimator()
        .images([
          {{ src: $r('app.media.icon'), duration: 1000 }},
          {{ src: $r('app.media.icon'), duration: 1000 }}
        ])
        .state(AnimationStatus.Running)
        .width(72)
        .height(72)
        .id('image_cross_0080')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0085",
        "ImageAnimator iterations zero no switch",
        "Verify ImageAnimator iterations 0 does not switch frames visually.",
        """      ImageAnimator()
        .images([
          {{ src: $r('app.media.icon'), duration: 1000 }},
          {{ src: $r('app.media.icon'), duration: 1000 }}
        ])
        .iterations(0)
        .state(AnimationStatus.Running)
        .width(72)
        .height(72)
        .id('image_cross_0085')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_Dark_COLOR_MODE_0022",
        "LoadingProgress dark color mode look",
        "Verify LoadingProgress visual presentation under dark color mode page.",
        """      LoadingProgress()
        .width(64)
        .height(64)
        .color(Color.White)
        .id('loading_dark_0022')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_IMAGE_SUMMARY_0001",
        "Image with onFinish combination",
        "Verify Image combined with onFinish callback path visual presentation.",
        """      Image($r('app.media.icon'))
        .width(88)
        .height(88)
        .onComplete(() => {{
          this.doneFlag = true
        }})
        .id('image_summary_0001')
      Text(this.doneFlag ? 'onFinish_ok' : 'pending')
        .id('image_summary_0001_msg')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_IMAGE_SUMMARY_0005",
        "Different image formats attribute look",
        "Verify different image format attribute visual effects with local icon proxy.",
        """      Row({{ space: 12 }}) {{
        Image($r('app.media.icon')).width(64).height(64).objectFit(ImageFit.Contain).id('image_summary_0005_a')
        Image($r('app.media.icon')).width(64).height(64).objectFit(ImageFit.Cover).id('image_summary_0005_b')
      }}""",
        False,
    ),
    (
        "SUB_TV_UX_ImageAnimator_003",
        "TV ImageAnimator overlay style look",
        "Verify ImageAnimator TV overlay style has no unexpected visual delta.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 500 }}])
        .width(80)
        .height(80)
        .state(AnimationStatus.Running)
        .id('tv_imageanimator_003')""",
        False,
    ),
    (
        "SUB_TV_UX_ImageAnimator_009",
        "TV ImageAnimator custom border radius",
        "Verify ImageAnimator custom borderRadius matches expected visual value.",
        """      ImageAnimator()
        .images([{{ src: $r('app.media.icon'), duration: 500 }}])
        .borderRadius(16)
        .width(80)
        .height(80)
        .state(AnimationStatus.Running)
        .id('tv_imageanimator_009')""",
        False,
    ),
    (
        "SUB_TV_UX_TextPicker_001",
        "TV TextPicker phone standard look",
        "Verify TextPicker standard mode visual has no unexpected delta on phone.",
        """      TextPicker({{ range: this.range }})
        .id('tv_textpicker_001')""",
        False,
    ),
    (
        "SUB_TV_TextPicker_FadingEdge_15",
        "TV TextPicker long text fading edge",
        "Verify TextPicker long text content shows fading edge visually.",
        """      TextPicker({{ range: this.longRange }})
        .id('tv_textpicker_fade_15')""",
        False,
    ),
    (
        "SUB_TV_DatePicker_UI_030",
        "TV DatePicker standard memo look",
        "Verify DatePicker standard mode visual presentation without overlay.",
        """      DatePicker({{ start: new Date('2020-1-1'), end: new Date('2030-12-31'), selected: new Date('2026-8-5') }})
        .id('tv_datepicker_030')""",
        False,
    ),
    (
        "SUB_TV_UX_TextPicker_037",
        "TV linked TextPicker column switch",
        "Verify linked TextPicker front/back column switch visual effect.",
        """      TextPicker({{ range: this.multiRange }})
        .id('tv_textpicker_037')""",
        False,
    ),
]

BATCH3_ASSERT = [
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_TEXTCLOCK_OUTLIERS_0071",
        "TextClock textShadow outlier marker",
        "Verify TextClock textShadow outlier/null/undefined readiness marker path.",
        "textclock_outlier_btn",
        "assert_result_tc_0071",
        "mark_outlier",
        "textclock_textShadow_outlier_ok",
    ),
    (
        "SUB_ACE_UI_COMPONENT_POPUPBOX_BACKWARDANALYSIS_ALN_1460",
        "DatePicker screen-reader popup marker",
        "Verify DatePicker screen-reader popup announcement readiness marker.",
        "datepicker_a11y_btn",
        "assert_result_aln_1460",
        "mark_a11y",
        "datepicker_screen_reader_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_PREVIEW_UEC_003",
        "UEC error when UEA missing marker",
        "Verify UEC missing-UEA error path marker without installed UEA.",
        "uec_missing_btn",
        "assert_result_uec_003",
        "mark_missing",
        "uec_missing_uea_error_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_PREVIEW_UEC_004",
        "UEC destroy UEA marker",
        "Verify UEC destroy-UEA path readiness marker.",
        "uec_destroy_btn",
        "assert_result_uec_004",
        "mark_destroy",
        "uec_destroy_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_PREVIEW_UEC_005",
        "UEC wrong provider param marker",
        "Verify UEC wrong provider parameter error marker.",
        "uec_badparam_btn",
        "assert_result_uec_005",
        "mark_badparam",
        "uec_bad_provider_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_PREVIEW_UEC_007",
        "UEC destroy failure marker",
        "Verify UEC destroy-failure path readiness marker.",
        "uec_destroy_fail_btn",
        "assert_result_uec_007",
        "mark_destroy_fail",
        "uec_destroy_fail_pending",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENT_ONERROR_0001",
        "PluginComponent onError marker",
        "Verify PluginComponent onError event readiness marker.",
        "plugin_onerror_btn",
        "assert_result_plugin_err_0001",
        "mark_onerror",
        "plugin_onError_pending",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENT_0002",
        "PluginComponent invalid source marker",
        "Verify PluginComponent invalid source readiness marker.",
        "plugin_invalid_btn",
        "assert_result_plugin_0002",
        "mark_invalid",
        "plugin_invalid_source_pending",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENTMANAGER_PUSH_0001",
        "Plugin manager push owner bundleName marker",
        "Verify PluginComponentManager push owner bundleName valid-value marker.",
        "plugin_push_btn_0001",
        "assert_result_push_0001",
        "mark_push",
        "plugin_push_owner_bundle_ok",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENTMANAGER_PUSH_0005",
        "Plugin manager push owner abilityName marker",
        "Verify PluginComponentManager push owner abilityName valid-value marker.",
        "plugin_push_btn_0005",
        "assert_result_push_0005",
        "mark_push",
        "plugin_push_owner_ability_ok",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENTMANAGER_PUSH_0009",
        "Plugin manager push target bundleName marker",
        "Verify PluginComponentManager push target bundleName valid-value marker.",
        "plugin_push_btn_0009",
        "assert_result_push_0009",
        "mark_push",
        "plugin_push_target_bundle_ok",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENTMANAGER_PUSH_0013",
        "Plugin manager push target abilityName marker",
        "Verify PluginComponentManager push target abilityName valid-value marker.",
        "plugin_push_btn_0013",
        "assert_result_push_0013",
        "mark_push",
        "plugin_push_target_ability_ok",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENTMANAGER_PUSH_0017",
        "Plugin manager push name marker",
        "Verify PluginComponentManager push name valid-value marker.",
        "plugin_push_btn_0017",
        "assert_result_push_0017",
        "mark_push",
        "plugin_push_name_ok",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_EMBEDDEDCOMPONENT_NDK_0017",
        "EmbeddedComponent onError timeout marker",
        "Verify EmbeddedComponent onCreate onError timeout readiness marker.",
        "embedded_timeout_btn",
        "assert_result_emb_0017",
        "mark_timeout",
        "embedded_onError_timeout_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_EMBEDDEDCOMPONENT_NDK_0034",
        "EmbeddedComponent terminateSelf marker",
        "Verify EmbeddedComponent repeated onTerminated readiness marker.",
        "embedded_term_btn",
        "assert_result_emb_0034",
        "mark_term",
        "embedded_onTerminated_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_XCOMPONENT_PRIVACY_LAYER_0110",
        "XComponent privacy layer split marker",
        "Verify XComponent privacy layer split-mode readiness marker.",
        "xcomp_privacy_btn",
        "assert_result_xc_0110",
        "mark_privacy",
        "xcomponent_privacy_layer_pending",
    ),
]


def patch_write_snap_states() -> None:
    """Extend state injection for longRange / doneFlag used by batch3 pages."""
    import re

    orig_write_snap = g.write_snap

    def write_snap():
        suites = orig_write_snap()
        root = g.P13 / "entry/src/ohosTest/ets/testability/pages"
        for p in root.rglob("*.ets"):
            txt = p.read_text(encoding="utf-8")
            changed = False
            if "this.longRange" in txt and "longRange:" not in txt:
                txt2, n = re.subn(
                    r"(struct \w+ \{\n)",
                    r"\1  longRange: string[] = ['VeryLongTextPickerItemContentABCDEFG', 'B', 'C']\n",
                    txt,
                    count=1,
                )
                if n:
                    txt = txt2
                    changed = True
            if "this.doneFlag" in txt and "@State doneFlag" not in txt:
                txt2, n = re.subn(
                    r"(struct \w+ \{\n)",
                    r"\1  @State doneFlag: boolean = false\n",
                    txt,
                    count=1,
                )
                if n:
                    txt = txt2
                    changed = True
            if "this.multiRange" in txt and "multiRange:" not in txt:
                txt2, n = re.subn(
                    r"(struct \w+ \{\n)",
                    r"\1  multiRange: string[][] = [['A1', 'A2'], ['B1', 'B2']]\n  range: string[] = ['A', 'B', 'C']\n",
                    txt,
                    count=1,
                )
                if n:
                    txt = txt2
                    changed = True
            if "this.range" in txt and "range:" not in txt:
                txt2, n = re.subn(
                    r"(struct \w+ \{\n)",
                    r"\1  range: string[] = ['A', 'B', 'C']\n",
                    txt,
                    count=1,
                )
                if n:
                    txt = txt2
                    changed = True
            if changed:
                p.write_text(txt, encoding="utf-8")
        return suites

    g.write_snap = write_snap


def main() -> None:
    g.SNAP_CASES = BATCH3_SNAP
    g.ASSERT_CASES = BATCH3_ASSERT
    patch_write_snap_states()
    g.main()


if __name__ == "__main__":
    main()
