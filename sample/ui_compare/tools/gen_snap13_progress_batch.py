#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Generate first-batch Progress/LoadingProgress snap cases for uiCompareTest_13."""
from __future__ import annotations

import json
import re
from pathlib import Path

P13 = Path("/root/aiSkill/develop/xts_tools/sample/ui_compare/uiCompareTest_13")
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

MODIFIER = """
class LoadingTrueModifier implements ContentModifier<LoadingProgressConfiguration> {
  applyContent(): WrappedBuilder<[LoadingProgressConfiguration]> {
    return wrapBuilder(loadingTrueBuilder)
  }
}

@Builder
function loadingTrueBuilder(config: LoadingProgressConfiguration) {
  LoadingProgress()
    .enableLoading(true)
    .width(80)
    .height(80)
}
"""

CASES = [
    (
        "SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0120",
        "0120",
        "Ring progress shadow false",
        """      Progress({ value: 50, total: 100, type: ProgressType.Ring })
        .style({ strokeWidth: 10, enableScanEffect: true, shadow: false })
        .width(120)
        .height(120)
        .color(0xFF0000)
        .id('progress_interface_0120')""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0130",
        "0130",
        "Ring progress shadow true",
        """      Progress({ value: 50, total: 100, type: ProgressType.Ring })
        .style({ strokeWidth: 10, enableScanEffect: true, shadow: true })
        .width(120)
        .height(120)
        .color(0xFF0000)
        .id('progress_interface_0130')""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0160",
        "0160",
        "Ring progress scan effect processing look",
        """      Progress({ value: 40, total: 100, type: ProgressType.Ring })
        .style({ strokeWidth: 10, enableScanEffect: true })
        .width(120)
        .height(120)
        .id('progress_interface_0160')""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0190",
        "0190",
        "Ring progress color red",
        """      Progress({ value: 60, total: 100, type: ProgressType.Ring })
        .width(120)
        .height(120)
        .color(0xFF0000)
        .id('progress_interface_0190')""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_ANIMATETO_0010",
        "0010",
        "Progress animateTo enableSmoothEffect false",
        """      Progress({ value: this.progressValue, total: 100 })
        .width('80%')
        .style({ enableSmoothEffect: false })
        .id('progress_animateto_0010')
      Button('run')
        .id('progress_animateto_0010_btn')
        .onClick(() => {
          this.getUIContext().animateTo({ duration: 800 }, () => {
            this.progressValue = 80
          })
        })""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_ANIMATETO_0011",
        "0011",
        "Progress animateTo enableSmoothEffect true",
        """      Progress({ value: this.progressValue, total: 100 })
        .width('80%')
        .style({ enableSmoothEffect: true })
        .id('progress_animateto_0011')
      Button('run')
        .id('progress_animateto_0011_btn')
        .onClick(() => {
          this.getUIContext().animateTo({ duration: 800 }, () => {
            this.progressValue = 80
          })
        })""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_INFOMATION_LOADPROGRESS_BUILDER_0040",
        "0040",
        "LoadingProgress enableLoading false with contentModifier true",
        """      LoadingProgress()
        .enableLoading(false)
        .width(80)
        .height(80)
        .id('loadprogress_builder_0040')
        .contentModifier(new LoadingTrueModifier())""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_INFOMATION_LOADPROGRESS_BUILDER_0060",
        "0060",
        "LoadingProgress unset enableLoading with contentModifier true",
        """      LoadingProgress()
        .width(80)
        .height(80)
        .id('loadprogress_builder_0060')
        .contentModifier(new LoadingTrueModifier())""",
    ),
    (
        "SUB_ACE_UI_loadingProgress_0010",
        "0010",
        "LoadingProgress non-linear refresh animation",
        """      LoadingProgress()
        .width(100)
        .height(100)
        .color(Color.Blue)
        .id('loadingprogress_0010')""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_Dark_COLOR_MODE_0022",
        "0022",
        "LoadingProgress in dark color mode",
        """      LoadingProgress()
        .width(100)
        .height(100)
        .id('dark_colormode_0022')""",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_Dark_COLOR_MODE_0026",
        "0026",
        "Progress in dark color mode",
        """      Progress({ value: 70, total: 100 })
        .width('80%')
        .id('dark_colormode_0026')""",
    ),
]


def folder_for(case_id: str) -> tuple[str, str]:
    if "LOADPROGRESS" in case_id or "loadingProgress" in case_id or "Dark_COLOR_MODE_0022" in case_id:
        return "UiComponentInformationLoadProgress", "UiComponentInformationLoadProgress"
    if "Dark_COLOR_MODE_0026" in case_id:
        return "UiComponentMediaDarkColorMode", "UiComponentMediaDarkColorMode"
    if "ANIMATETO" in case_id:
        return "UiComponentMediaProgressAnimateto", "UiComponentMediaProgressAnimateto"
    return "UiComponentInformationProgressInterface", "UiComponentInformationProgressInterface"


def main() -> None:
    routes: list[str] = []
    suites: list[tuple[str, str]] = []
    json_extra: dict = {}

    for case_id, suffix, en_name, body in CASES:
        folder, prefix = folder_for(case_id)
        struct = f"{prefix}{suffix}"
        page_dir = P13 / "entry/src/ohosTest/ets/testability/pages" / folder
        page_dir.mkdir(parents=True, exist_ok=True)
        need_state = "progressValue" in body
        need_mod = "LoadingTrueModifier" in body
        state_line = "  @State progressValue: number = 10\n" if need_state else ""
        mod_block = MODIFIER if need_mod else ""
        page = f"""{HEADER}

@Entry
@Component
struct {struct} {{
{state_line}  build() {{
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
{mod_block}
"""
        (page_dir / f"{struct}.ets").write_text(page, encoding="utf-8")
        routes.append(f"testability/pages/{folder}/{struct}")

        suite_dir_name = folder + "Test"
        suite_dir = P13 / "entry/src/ohosTest/ets/test" / suite_dir_name
        suite_dir.mkdir(parents=True, exist_ok=True)
        ids = re.findall(r"\.id\('([^']+)'\)", body)
        main_id = ids[0] if ids else "progress"
        btn = next((i for i in ids if i.endswith("_btn")), None)
        click_btn = ""
        if btn:
            click_btn = f"""
      let btn = await driver.waitForComponent(ON.id('{btn}'), 500)
      await btn.click()
      await Utils.sleep(1000)
"""
        dark_setup = ""
        dark_teardown = ""
        imports_extra = ""
        if "Dark_COLOR_MODE" in case_id:
            imports_extra = "import { uiAppearance } from '@kit.ArkUI'\n"
            dark_setup = """
      uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK)
      await Utils.sleep(500)
"""
            dark_teardown = """
      uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT)
      await Utils.sleep(300)
"""
        suite = f"""{HEADER}

import {{ afterEach, describe, it, Level }} from '@ohos/hypium'
import Settings from '../model/Settings'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import {{ Driver, ON }} from '@kit.TestKit'
import windowSnap from '../model/snapShot'
{imports_extra}
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
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('{case_id}', Level.LEVEL3, async (done: Function) => {{
      Settings.createWindow('testability/pages/{folder}/{struct}')
      let driver = await Driver.create()
      await Utils.sleep(500)
{dark_setup}      let target = await driver.waitForComponent(ON.id('{main_id}'), 500)
      await Utils.sleep(300)
{click_btn}      await windowSnap.snapShot('{case_id}_01')
      await Utils.sleep(1000)
{dark_teardown}      done()
    }})
  }})
}}
"""
        (suite_dir / f"{struct}.test.ets").write_text(suite, encoding="utf-8")
        suites.append((suite_dir_name, struct))
        json_extra[case_id] = [[f"{case_id}_01.webp", f"{case_id}_01.webp"]]

    list_imports = "\n".join(
        [f"import {fn} from './{d}/{fn}.test'" for d, fn in suites]
    )
    list_calls = "\n".join([f"  {fn}()" for _, fn in suites])
    (P13 / "entry/src/ohosTest/ets/test/List.test.ets").write_text(
        f"""{HEADER}

{list_imports}

export default function testsuite() {{
{list_calls}
}}
""",
        encoding="utf-8",
    )

    tp = {"src": ["testability/pages/Index"] + routes}
    for profile in ("base", "dark"):
        path = P13 / f"entry/src/ohosTest/resources/{profile}/profile/test_pages.json"
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(tp, indent=2) + "\n", encoding="utf-8")

    idx = P13 / "entry/src/ohosTest/ets/testability/pages/Index.ets"
    idx.write_text(
        f"""{HEADER}

@Entry
@Component
struct Index {{
  build() {{
    Column() {{
      Text('uiCompareTest_13')
    }}
  }}
}}
""",
        encoding="utf-8",
    )

    doc = {
        "description": "Config for XtsTestCase devicetest test cases",
        "environment": [{"type": "device"}],
        "driver": {
            "type": "DeviceTest",
            "bundle-name": "com.example.uicompare_13",
            "py_file": "ace/testcases/UI_Compare_Tools_Common.py",
        },
        "kits": [
            {
                "test-file-name": ["ace/resource/common/hap/uiCompareTest_13.hap"],
                "type": "AppInstallKit",
                "cleanup-apps": True,
            },
            {
                "type": "ShellKit",
                "run-command": [
                    "power-shell wakeup",
                    "power-shell setmode 602",
                    "power-shell display -s 0",
                ],
            },
        ],
        "extra": json_extra,
    }
    hdr = HEADER + "\n\n"
    (P13 / "uiCompareTest_13.json").write_text(
        hdr + json.dumps(doc, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    print(f"generated {len(CASES)} snap cases")


if __name__ == "__main__":
    main()
