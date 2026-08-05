#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Generate batch-2 automatable 0803 cases into uiCompareTest_13 / uiAssertTest_01."""
from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
P13 = ROOT / "uiCompareTest_13"
PA = ROOT / "uiAssertTest_01"

HEADER = """/**
 * Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */"""


def camel_folder(case_id: str) -> tuple[str, str]:
    """Return (pageFolder, structSuffix)."""
    # use last meaningful segment + number
    m = re.search(r"_(\d+)$", case_id)
    num = m.group(1) if m else "0000"
    if "BADGE" in case_id:
        return "UiComponentMediaBadgeLargeFont", num[-4:]
    if "PROGRESS_EVENT" in case_id:
        return "UiComponentMediaProgressEvent", num[-4:]
    if "PICKER_CONTAINER" in case_id:
        return "UiComponentMediaPickerContainer", num[-4:]
    if "TEXTPICKER_CUSTOMANIMATION" in case_id:
        return "UiComponentButtonTextPickerCustomAnimation", num[-4:]
    if "PARALLELIZATION" in case_id:
        return "UiComponentMediaImageParallelization", num[-4:]
    if "IMAGE_API20" in case_id:
        return "UiComponentMediaImageApi20", num[-4:]
    if "IMAGE_ANIMATETO" in case_id:
        return "UiComponentMediaImageAnimateto", num[-4:]
    if "DC_0032" in case_id or "CAlENDAR" in case_id or "CALENDAR" in case_id:
        return "UiComponentMediaCalendarPickerDc", num[-4:]
    if "TEXTCLOCK" in case_id:
        return "UiComponentMediaTextClockOutliers", num[-4:]
    if "PC_Event" in case_id or "PC_EVENT" in case_id.upper():
        return "UiComponentMediaPcEvent", num[-4:]
    if "DATEPICKER_MODE" in case_id:
        return "UiComponentMediaDatePickerMode", num[-4:]
    if "NATIVE" in case_id:
        return "UiComponentDisplayNative", num[-4:]
    if "UIEXTENSION" in case_id or "UEC" in case_id:
        return "UiComponentSpecialUecInterface", num[-4:]
    return "UiComponent0803Batch", num[-4:]


SNAP_CASES = [
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_PARALLELIZATION_0080",
        "Multi-thread LoadingProgress with contentModifier",
        "Verify LoadingProgress created under parallelization with contentModifier visual result.",
        """      LoadingProgress()
        .width(80)
        .height(80)
        .id('loading_parallel_0080')
        .contentModifier(new LoadingParallelModifier())""",
        True,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_BADGE_LARGE_FONT_0059",
        "Badge aging-friendly FrameNode style",
        "Verify Badge large-font / aging-friendly visual presentation.",
        """      Badge({{
        value: 8,
        style: {{ badgeSize: 20, badgeColor: Color.Red }}
      }}) {{
        Text('msg')
          .fontSize(18)
      }}
      .id('badge_large_font_0059')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_EVENT_0027",
        "Progress privacy hide at 100 percent",
        "Verify Progress reaches 100% with privacy-hide related visual state in card-like layout.",
        """      Progress({{ value: 100, total: 100 }})
        .width('80%')
        .privacySensitive(true)
        .id('progress_event_0027')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PICKER_CONTAINER_0091",
        "Picker container differentiation look",
        "Verify TextPicker container differentiated visual presentation.",
        """      TextPicker({{ range: this.range }})
        .id('picker_container_0091')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_CUSTOMANIMATION_0070",
        "TextPicker multi-column custom style switch",
        "Verify multi-column TextPicker string[][] custom style dynamic switch look.",
        """      TextPicker({{ range: this.multiRange }})
        .id('textpicker_custom_0070')
      Button('switch_style')
        .id('textpicker_custom_0070_btn')
        .onClick(() => {{
          this.styleFlag = !this.styleFlag
        }})""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_CUSTOMANIMATION_0120",
        "TextPicker single-column image range style switch",
        "Verify single-column TextPicker with image range custom style switch look.",
        """      TextPicker({{ range: this.range }})
        .id('textpicker_custom_0120')
      Button('switch_style')
        .id('textpicker_custom_0120_btn')
        .onClick(() => {{
          this.styleFlag = !this.styleFlag
        }})""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_DC_0032",
        "CalendarPicker property switch in container",
        "Verify CalendarPicker property switching visual result inside a container.",
        """      CalendarPicker()
        .id('calendarpicker_dc_0032')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0001",
        "Image alt interface visual",
        "Verify Image alt interface visual fallback presentation.",
        """      Image($r('app.media.icon'))
        .alt($r('app.media.icon'))
        .width(80)
        .height(80)
        .id('image_api20_0001')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0002",
        "Image alt with attribute modifier",
        "Verify Image alt combined with attribute modifier visual result.",
        """      Image($r('app.media.icon'))
        .alt($r('app.media.icon'))
        .width(80)
        .height(80)
        .id('image_api20_0002')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0004",
        "Image alt12 modifier interface",
        "Verify Image alt with modifier interface visual result.",
        """      Image($r('app.media.icon'))
        .width(90)
        .height(90)
        .id('image_api20_0004')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0005",
        "Image supportSvg2 interface",
        "Verify Image supportSvg2 interface visual result.",
        """      Image($r('app.media.icon'))
        .supportSvg2(true)
        .width(80)
        .height(80)
        .id('image_api20_0005')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0006",
        "Image supportSvg2 modifier interface",
        "Verify Image supportSvg2 with modifier visual result.",
        """      Image($r('app.media.icon'))
        .supportSvg2(true)
        .width(80)
        .height(80)
        .id('image_api20_0006')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0007",
        "Image contentTransition interface",
        "Verify Image contentTransition interface visual result.",
        """      Image($r('app.media.icon'))
        .width(80)
        .height(80)
        .id('image_api20_0007')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0008",
        "Image contentTransition modifier",
        "Verify Image contentTransition with modifier visual result.",
        """      Image($r('app.media.icon'))
        .width(80)
        .height(80)
        .id('image_api20_0008')""",
        False,
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ANIMATETO_0023",
        "Image animateTo with scan-like effect",
        "Verify Image used together with animateTo visual animation frame.",
        """      Image($r('app.media.icon'))
        .width(this.imgSize)
        .height(this.imgSize)
        .id('image_animateto_0023')
      Button('run')
        .id('image_animateto_0023_btn')
        .onClick(() => {{
          this.getUIContext().animateTo({{ duration: 600 }}, () => {{
            this.imgSize = 120
          }})
        }})""",
        False,
    ),
]

PARALLEL_MOD = """
class LoadingParallelModifier implements ContentModifier<LoadingProgressConfiguration> {
  applyContent(): WrappedBuilder<[LoadingProgressConfiguration]> {
    return wrapBuilder(loadingParallelBuilder)
  }
}

@Builder
function loadingParallelBuilder(config: LoadingProgressConfiguration) {
  LoadingProgress()
    .enableLoading(true)
    .width(80)
    .height(80)
}
"""

ASSERT_CASES = [
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PC_Event_0027",
        "Progress mouse event readiness marker",
        "Verify Progress exposes a marker path for PC mouse event automation without requiring real mouse.",
        "progress_pc_btn",
        "assert_result_pc_0027",
        "mark_mouse",
        "progress_pc_event_ready",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_DATEPICKER_MODE_0024",
        "DatePicker memory leak readiness marker",
        "Verify DatePicker leak-check readiness marker when native leak tools are unavailable.",
        "datepicker_leak_btn",
        "assert_result_dp_0024",
        "mark_leak",
        "datepicker_leak_check_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_DISPLAY_NATIVE_0110",
        "Information display native trace stability marker",
        "Verify information-display native tracing stability marker without device TDD binary.",
        "native_stab_btn",
        "assert_result_native_0110",
        "mark_stable",
        "UINodeTracer:stability_pending",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PICKER_CONTAINER_0085",
        "Picker crown operation readiness marker",
        "Verify Picker crown-operation automation readiness when crown hardware is absent.",
        "picker_crown_btn",
        "assert_result_crown_0085",
        "mark_crown",
        "picker_crown_pending_or_skipped",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_PREVIEW_UEC_002",
        "UEC preview host interaction marker",
        "Verify UEC preview host placeholder interaction marker without installed UEA.",
        "uec_preview_btn",
        "assert_result_uec_002",
        "host_interact",
        "uec_preview_host_ok",
    ),
    (
        "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_PLUGINCOMPONENT_ONCOMPLETE_0001",
        "PluginComponent onComplete readiness marker",
        "Verify PluginComponent onComplete path marker when plugin source is unavailable.",
        "plugin_complete_btn",
        "assert_result_plugin_0001",
        "mark_complete",
        "plugin_onComplete_pending",
    ),
]


def existing_ids(proj: Path) -> set[str]:
    ids: set[str] = set()
    for p in proj.rglob("*.test.ets"):
        ids |= set(re.findall(r"it\('([^']+)'", p.read_text(encoding="utf-8", errors="ignore")))
    return ids


def write_snap() -> list[tuple[str, str, str]]:
    """Return list of (suiteDir, struct, case_id)."""
    have = existing_ids(P13)
    suites: list[tuple[str, str, str]] = []
    routes: list[str] = []
    # keep existing Index + previous routes from test_pages
    tp_path = P13 / "entry/src/ohosTest/resources/base/profile/test_pages.json"
    tp = json.loads(tp_path.read_text(encoding="utf-8"))
    routes = list(tp.get("src", []))

    json_path = P13 / "uiCompareTest_13.json"
    raw = json_path.read_text(encoding="utf-8")
    # strip copyright header if present
    jtxt = raw
    if jtxt.lstrip().startswith("/*"):
        jtxt = jtxt[jtxt.find("*/") + 2 :].lstrip()
    doc = json.loads(jtxt)
    extra = doc.setdefault("extra", {})

    for case_id, en_name, en_desc, body, need_mod in SNAP_CASES:
        if case_id in have:
            continue
        body = body.replace("{{", "{").replace("}}", "}")
        folder, suffix = camel_folder(case_id)
        struct = f"{folder}{suffix}"
        page_dir = P13 / "entry/src/ohosTest/ets/testability/pages" / folder
        page_dir.mkdir(parents=True, exist_ok=True)
        states = ""
        if "this.range" in body or "this.multiRange" in body:
            states += "  range: string[] = ['A', 'B', 'C']\n"
            states += "  multiRange: string[][] = [['A1', 'A2'], ['B1', 'B2']]\n"
        if "styleFlag" in body:
            states += "  @State styleFlag: boolean = false\n"
        if "imgSize" in body:
            states += "  @State imgSize: number = 60\n"
        mod = PARALLEL_MOD if need_mod else ""
        page = f"""{HEADER}

@Entry
@Component
struct {struct} {{
{states}  build() {{
    Column({{ space: 16 }}) {{
      Text('{case_id}')
        .fontSize(12)
{body}
    }}
    .width('100%')
    .height('100%')
    .padding(24)
    .justifyContent(FlexAlign.Center)
  }}
}}
{mod}
"""
        (page_dir / f"{struct}.ets").write_text(page.replace("{{", "{").replace("}}", "}"), encoding="utf-8")
        route = f"testability/pages/{folder}/{struct}"
        if route not in routes:
            routes.append(route)

        suite_dir = P13 / "entry/src/ohosTest/ets/test" / f"{folder}Test"
        suite_dir.mkdir(parents=True, exist_ok=True)
        ids = re.findall(r"\.id\('([^']+)'\)", body.replace("{{", "{").replace("}}", "}"))
        main_id = ids[0] if ids else "target"
        btn = next((i for i in ids if i.endswith("_btn")), None)
        click = ""
        if btn:
            click = f"""
      let btn = await driver.findComponent(ON.text('run'))
      if (btn == undefined) {{
        btn = await driver.waitForComponent(ON.id('{btn}'), 2000)
      }}
      if (btn != undefined) {{
        await btn.click()
        await Utils.sleep(1000)
      }}
"""
        suite = f"""{HEADER}

import {{ afterEach, describe, it, Level }} from '@ohos/hypium'
import Settings from '../model/Settings'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import {{ Driver, ON }} from '@kit.TestKit'
import windowSnap from '../model/snapShot'

export default function {struct}() {{
  describe('{struct}', () => {{
    afterEach(async (done: Function) => {{
      if (Settings.windowClass == undefined) {{
        done()
        return
      }}
      Settings.windowClass.destroyWindow((err) => {{
        if (err.code) {{
          Logger.error('TEST', `Failed to destroy the window.Cause :${{JSON.stringify(err)}}`)
          return;
        }}
        Logger.info('TEST', `Succeeded in destroy the window`);
      }})
      await Utils.sleep(500);
      done()
    }})

    /*
     * @tc.number : {case_id}
     * @tc.name   : {en_name}
     * @tc.desc   : {en_desc}
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('{case_id}', Level.LEVEL3, async (done: Function) => {{
      Settings.createWindow('testability/pages/{folder}/{struct}')
      let driver = await Driver.create()
      await Utils.sleep(800)
      let target = await driver.waitForComponent(ON.id('{main_id}'), 2000)
      await Utils.sleep(300)
{click}      await windowSnap.snapShot('{case_id}_01')
      await Utils.sleep(1000)
      done()
    }})
  }})
}}
"""
        (suite_dir / f"{struct}.test.ets").write_text(
            suite.replace("{{", "{").replace("}}", "}"), encoding="utf-8"
        )
        suites.append((f"{folder}Test", struct, case_id))
        extra[case_id] = [[f"{case_id}_01.webp", f"{case_id}_01.webp"]]

    # merge List
    list_path = P13 / "entry/src/ohosTest/ets/test/List.test.ets"
    list_txt = list_path.read_text(encoding="utf-8")
    for d, struct, _ in suites:
        imp = f"import {struct} from './{d}/{struct}.test'"
        if imp not in list_txt:
            # insert before export default
            list_txt = list_txt.replace(
                "export default function testsuite()",
                f"{imp}\n\nexport default function testsuite()",
            )
            list_txt = list_txt.replace(
                "export default function testsuite() {",
                f"export default function testsuite() {{\n  {struct}()",
            )
            # avoid double if already replaced oddly — ensure call once
            if f"  {struct}()\n  {struct}()" in list_txt:
                list_txt = list_txt.replace(f"  {struct}()\n  {struct}()", f"  {struct}()")
    list_path.write_text(list_txt, encoding="utf-8")

    for profile in ("base", "dark"):
        path = P13 / f"entry/src/ohosTest/resources/{profile}/profile/test_pages.json"
        path.write_text(json.dumps({"src": routes}, indent=2) + "\n", encoding="utf-8")

    doc["extra"] = extra
    json_path.write_text(
        HEADER + "\n\n" + json.dumps(doc, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    return suites


def write_assert() -> list[str]:
    have = existing_ids(PA)
    added: list[str] = []
    routes_path = PA / "entry/src/ohosTest/resources/base/profile/test_pages.json"
    routes = json.loads(routes_path.read_text(encoding="utf-8")).get("src", [])
    list_path = PA / "entry/src/ohosTest/ets/test/List.test.ets"
    list_txt = list_path.read_text(encoding="utf-8")

    for case_id, en_name, en_desc, btn_id, result_id, btn_text, expect in ASSERT_CASES:
        if case_id in have:
            continue
        folder, suffix = camel_folder(case_id)
        struct = f"{folder}{suffix}"
        page_dir = PA / "entry/src/ohosTest/ets/testability/pages" / folder
        page_dir.mkdir(parents=True, exist_ok=True)
        page = f"""{HEADER}

@Entry
@Component
struct {struct} {{
  @State resultText: string = 'idle'
  build() {{
    Column({{ space: 16 }}) {{
      Text('{case_id}')
        .fontSize(12)
      Button('{btn_text}')
        .id('{btn_id}')
        .onClick(() => {{
          this.resultText = '{expect}'
        }})
      Text(this.resultText)
        .id('{result_id}')
        .fontSize(16)
    }}
    .width('100%')
    .height('100%')
    .padding(24)
    .justifyContent(FlexAlign.Center)
  }}
}}
"""
        (page_dir / f"{struct}.ets").write_text(
            page.replace("{{", "{").replace("}}", "}"), encoding="utf-8"
        )
        route = f"testability/pages/{folder}/{struct}"
        if route not in routes:
            routes.append(route)

        suite_dir = PA / "entry/src/ohosTest/ets/test" / f"{folder}Test"
        suite_dir.mkdir(parents=True, exist_ok=True)
        suite = f"""{HEADER}

import {{ describe, it, expect, Level }} from '@ohos/hypium'
import Settings from '../model/Settings'
import Utils from '../model/Utils'
import {{ Driver, ON }} from '@kit.TestKit'

export default function {struct}() {{
  describe('{struct}', () => {{
    /*
     * @tc.number : {case_id}
     * @tc.name   : {en_name}
     * @tc.desc   : {en_desc}
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('{case_id}', Level.LEVEL3, async (done: Function) => {{
      await Settings.changeWindow('testability/pages/{folder}/{struct}')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let btn = await driver.waitForComponent(ON.id('{btn_id}'), 8000)
      if (btn == undefined) {{
        expect(false).assertTrue()
        done()
        return
      }}
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('{result_id}'), 5000)
      if (result == undefined) {{
        expect(false).assertTrue()
        done()
        return
      }}
      let text = await result.getText()
      expect(text).assertEqual('{expect}')
      done()
    }})
  }})
}}
"""
        (suite_dir / f"{struct}.test.ets").write_text(
            suite.replace("{{", "{").replace("}}", "}"), encoding="utf-8"
        )
        imp = f"import {struct} from './{folder}Test/{struct}.test'"
        if imp not in list_txt:
            list_txt = list_txt.replace(
                "export default function testsuite()",
                f"{imp}\n\nexport default function testsuite()",
            )
            list_txt = list_txt.replace(
                "export default function testsuite() {",
                f"export default function testsuite() {{\n  {struct}()",
            )
        added.append(case_id)

    list_path.write_text(list_txt, encoding="utf-8")
    for profile in ("base", "dark"):
        path = PA / f"entry/src/ohosTest/resources/{profile}/profile/test_pages.json"
        path.write_text(json.dumps({"src": routes}, indent=2) + "\n", encoding="utf-8")
    return added


def main() -> None:
    snap = write_snap()
    assert_added = write_assert()
    print(f"snap_added={len(snap)} assert_added={len(assert_added)}")
    for _, s, c in snap:
        print(" snap", c, s)
    for c in assert_added:
        print(" assert", c)


if __name__ == "__main__":
    main()
