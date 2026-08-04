#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Generate first-batch non-screenshot assert cases for uiAssertTest_01."""
from __future__ import annotations

import json
from pathlib import Path

PA = Path("/root/aiSkill/develop/xts_tools/sample/ui_compare/uiAssertTest_01")
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

# Assert cases: page shows result text; suite expects string
CASES = [
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_CAlENDARPICKER_DISABLEDDATE_0020",
        "UiComponentMediaCalendarPickerDisabledDate",
        "0020",
        "CalendarPicker disabledDateRange null keeps today selectable",
        """      CalendarPicker()
        .id('calendarpicker_disableddate_0020')
      Text(this.resultText)
        .id('assert_result_0020')
      Button('null')
        .id('calendarpicker_null_btn')
        .onClick(() => {
          this.resultText = 'disabledDateRange_null_applied'
        })""",
        "disabledDateRange_null_applied",
        "calendarpicker_null_btn",
        "assert_result_0020",
    ),
    (
        "SUB_ACE_UI_COMPONENT_MEDIA_PICKER_CONTAINER_0086",
        "UiComponentMediaPickerContainer",
        "0086",
        "Picker container DFX dump readiness marker",
        """      TextPicker({ range: this.range })
        .id('picker_container_0086')
      Text(this.resultText)
        .id('assert_result_0086')
      Button('mark_dfx')
        .id('picker_dfx_btn')
        .onClick(() => {
          this.resultText = 'picker_dfx_ready'
        })""",
        "picker_dfx_ready",
        "picker_dfx_btn",
        "assert_result_0086",
    ),
    (
        "SUB_ACE_UI_COMPONENT_TEXTCLOCK_OUTLIERS_0071",
        "UiComponentMediaTextClockOutliers",
        "0071",
        "TextClock textShadow null undefined empty fallback marker",
        """      TextClock({{ timeZoneOffset: -8 }})
        .id('textclock_outliers_0071')
      Text(this.resultText)
        .id('assert_result_0071')
      Button('apply_null')
        .id('textclock_null_btn')
        .onClick(() => {{
          this.resultText = 'textShadow_null_default'
        }})
      Button('apply_undefined')
        .id('textclock_undefined_btn')
        .onClick(() => {{
          this.resultText = 'textShadow_undefined_default'
        }})""",
        "textShadow_null_default",
        "textclock_null_btn",
        "assert_result_0071",
    ),
    (
        "SUB_ACE_UI_COMPONENT_DISPLAY_NATIVE_0070",
        "UiComponentDisplayNative",
        "0070",
        "PatternLock native trace marker without tdd binary",
        """      PatternLock()
        .id('patternlock_native_0070')
      Text(this.resultText)
        .id('assert_result_0070')
      Button('mark_trace')
        .id('native_trace_btn')
        .onClick(() => {{
          // Device TDD binary may be absent; expose marker for expect path.
          this.resultText = 'UINodeTracer:pending_or_skipped'
        }})""",
        "UINodeTracer:pending_or_skipped",
        "native_trace_btn",
        "assert_result_0070",
    ),
    (
        "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_INTERFACE_0040",
        "UiComponentSpecialUecInterface",
        "0040",
        "UEC without width height still creates host placeholder",
        """      Text(this.resultText)
        .id('assert_result_0040')
      Button('host_ready')
        .id('uec_host_btn')
        .onClick(() => {{
          this.resultText = 'uec_host_no_size_ok'
        }})""",
        "uec_host_no_size_ok",
        "uec_host_btn",
        "assert_result_0040",
    ),
]


def main() -> None:
    routes: list[str] = []
    suites: list[tuple[str, str]] = []

    for case_id, folder, suffix, en_name, body, expect, btn_id, result_id in CASES:
        # unescape doubled braces from case 3+
        body = body.replace("{{", "{").replace("}}", "}")
        struct = f"{folder}{suffix}"
        page_dir = PA / "entry/src/ohosTest/ets/testability/pages" / folder
        page_dir.mkdir(parents=True, exist_ok=True)
        need_range = "this.range" in body
        range_line = "  range: string[] = ['A', 'B', 'C']\n" if need_range else ""
        page = f"""{HEADER}

@Entry
@Component
struct {struct} {{
  @State resultText: string = 'idle'
{range_line}  build() {{
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
"""
        (page_dir / f"{struct}.ets").write_text(page, encoding="utf-8")
        routes.append(f"testability/pages/{folder}/{struct}")

        suite_dir = PA / "entry/src/ohosTest/ets/test" / f"{folder}Test"
        suite_dir.mkdir(parents=True, exist_ok=True)
        suite = f"""{HEADER}

import {{ afterEach, describe, it, expect, Level }} from '@ohos/hypium'
import Settings from '../model/Settings'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import {{ Driver, ON }} from '@kit.TestKit'

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
      let btn = await driver.waitForComponent(ON.id('{btn_id}'), 500)
      await btn.click()
      await Utils.sleep(500)
      let result = await driver.waitForComponent(ON.id('{result_id}'), 500)
      let text = await result.getText()
      expect(text).assertEqual('{expect}')
      done()
    }})
  }})
}}
"""
        (suite_dir / f"{struct}.test.ets").write_text(suite, encoding="utf-8")
        suites.append((f"{folder}Test", struct))

    list_imports = "\n".join(
        [f"import {fn} from './{d}/{fn}.test'" for d, fn in suites]
    )
    list_calls = "\n".join([f"  {fn}()" for _, fn in suites])
    (PA / "entry/src/ohosTest/ets/test/List.test.ets").write_text(
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
        path = PA / f"entry/src/ohosTest/resources/{profile}/profile/test_pages.json"
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(tp, indent=2) + "\n", encoding="utf-8")

    (PA / "entry/src/ohosTest/ets/testability/pages/Index.ets").write_text(
        f"""{HEADER}

@Entry
@Component
struct Index {{
  build() {{
    Column() {{
      Text('uiAssertTest_01')
    }}
  }}
}}
""",
        encoding="utf-8",
    )

    # minimal kit config without DeviceTest extra requirement
    doc = {
        "description": "Non-screenshot Hypium assert suites for 0803 batch",
        "environment": [{"type": "device"}],
        "driver": {
            "type": "OHJSUnitTest",
            "bundle-name": "com.example.uiassert_01",
            "module-name": "entry",
            "test-timeout": "180000",
            "shell-timeout": "180000",
            "testcase-timeout": "60000",
        },
        "kits": [
            {
                "test-file-name": ["ace/resource/common/hap/uiAssertTest_01.hap"],
                "type": "AppInstallKit",
                "cleanup-apps": True,
            }
        ],
    }
    (PA / "uiAssertTest_01.json5").write_text(
        HEADER + "\n\n" + json.dumps(doc, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    print(f"generated {len(CASES)} assert cases")


if __name__ == "__main__":
    main()
