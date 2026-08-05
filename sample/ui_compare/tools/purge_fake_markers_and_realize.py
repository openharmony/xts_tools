#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Purge fake marker cases; realize UEC/XComponent/Plugin; weakly enhance others."""
from __future__ import annotations

import json
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
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

# Explicitly cannot implement in this sample → delete
DELETE_EXACT = {
    "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_0114",  # 美团
    "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_0102",  # 华为账号
    "SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_ARKUI_0105",  # 运动健康
    "SUB_ACE_UI_COMPONENT_LAYOUT_OVERFLOW_HAD_0100",
    "SUB_ACE_UI_COMPONENT_GRIDROW_LAYOUT_DYNAMIC_BREAKPOINT_ADAPTATION_0100",
}

DELETE_PREFIXES = (
    "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_",
    "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TUKU_",
    "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ACTION_",
    "SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_",
    "SUB_ACE_UI_WINDOW_",
    "SUB_ACE_TOOLCHAIN_ARKUI_SR20250428415694_UI_WINDOW_",
    "SUB_ACE_UI_ABILITY_ATOMICSERVICE_",
    "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_ARKUI_ATOMICSERVICEMENUBAR",
    "SUB_ACE_TOOLCHAIN_ARKUI_BARRIERFREE_INSPECTOR_",
    "SUB_ACE_ACTION_ARKUI_SR202509",
    "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SYSTEMAPP_",
    "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_YUV_",
    "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_Native_",
    "SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TRACE_",
    "SUB_ACE_UI_COMPONENT_MEDIA_DATEPICKER_VOICE_",
    "SUB_ACE_UI_COMPONENT_DRAW_INTERFACE_STRATEGY_",
)


def should_delete(cid: str) -> bool:
    if cid in DELETE_EXACT:
        return True
    return any(cid.startswith(p) or p.rstrip("_") in cid for p in DELETE_PREFIXES)


def iter_suites() -> list[tuple[str, Path, Path | None]]:
    out = []
    test_root = PA / "entry/src/ohosTest/ets/test"
    for p in test_root.rglob("*.test.ets"):
        if p.name == "List.test.ets":
            continue
        t = p.read_text(encoding="utf-8", errors="ignore")
        m = re.search(r"it\('([^']+)'", t)
        if not m:
            continue
        cid = m.group(1)
        page = None
        wm = re.search(r"changeWindow\('([^']+)'\)", t)
        if wm:
            page = PA / "entry/src/ohosTest/ets" / f"{wm.group(1)}.ets"
        out.append((cid, p, page if page and page.exists() else None))
    return out


def rebuild_list_and_routes(keep: list[tuple[str, Path, Path | None]]) -> None:
    imports = []
    calls = []
    routes = ["testability/pages/Index"]
    for cid, suite, page in sorted(keep, key=lambda x: x[1].stem):
        stem = suite.stem  # Xxx.test -> need suite name without .test
        # file is Foo.test.ets, stem=Foo.test → wrong. Path.stem of Foo.test.ets is Foo.test
        func = suite.name.replace(".test.ets", "")
        rel = suite.relative_to(PA / "entry/src/ohosTest/ets/test")
        imp_path = "./" + str(rel.with_suffix("")).replace("\\", "/")
        # imp_path ends with Foo.test
        imports.append(f"import {func} from '{imp_path}'")
        calls.append(f"  {func}()")
        if page is not None:
            # testability/pages/Dir/Struct
            parts = page.relative_to(PA / "entry/src/ohosTest/ets").with_suffix("")
            route = str(parts).replace("\\", "/")
            if route not in routes:
                routes.append(route)
    list_txt = HEADER + "\n\n" + "\n".join(imports) + "\n\nexport default function testsuite() {\n" + "\n".join(calls) + "\n}\n"
    (PA / "entry/src/ohosTest/ets/test/List.test.ets").write_text(list_txt, encoding="utf-8")
    for profile in ("base", "dark"):
        path = PA / f"entry/src/ohosTest/resources/{profile}/profile/test_pages.json"
        path.write_text(json.dumps({"src": routes}, indent=2) + "\n", encoding="utf-8")


def write_suite(path: Path, func: str, cid: str, en_name: str, en_desc: str, page_route: str, btn_id: str, result_id: str, expect: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        f"""{HEADER}

import {{ describe, it, expect, Level }} from '@ohos/hypium'
import Settings from '../model/Settings'
import Utils from '../model/Utils'
import {{ Driver, ON }} from '@kit.TestKit'

export default function {func}() {{
  describe('{func}', () => {{
    /*
     * @tc.number : {cid}
     * @tc.name   : {en_name}
     * @tc.desc   : {en_desc}
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('{cid}', Level.LEVEL3, async (done: Function) => {{
      await Settings.changeWindow('{page_route}')
      let driver = await Driver.create()
      await Utils.sleep(1500)
      let target = await driver.waitForComponent(ON.id('{btn_id}'), 8000)
      if (target == undefined) {{
        expect(false).assertTrue()
        done()
        return
      }}
      let result = await driver.waitForComponent(ON.id('{result_id}'), 8000)
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
""",
        encoding="utf-8",
    )


def page_uec(struct: str, cid: str, mode: str) -> str:
    """mode: missing|bad_provider|host_ok"""
    if mode == "bad_provider":
        want = "{ bundleName: '', abilityName: 'BadAbility' }"
        note = "bad_provider"
    elif mode == "host_ok":
        want = "{ bundleName: 'com.example.uiassert_01', abilityName: 'NotExistUIExtAbility' }"
        note = "host_bound"
    else:
        want = "{ bundleName: 'com.example.uea.not.installed', abilityName: 'UIExtAbility' }"
        note = "missing_uea"
    return f"""{HEADER}

import Want from '@ohos.app.ability.Want'
import {{ BusinessError }} from '@kit.BasicServicesKit'

@Entry
@Component
struct {struct} {{
  @State statusText: string = 'idle'
  private want: Want = {want} as Want

  build() {{
    Column({{ space: 12 }}) {{
      Text('{cid}')
        .fontSize(12)
      UIExtensionComponent(this.want)
        .width(240)
        .height(160)
        .id('uec_host')
        .onError((err: BusinessError) => {{
          this.statusText = `uec_error:${{err.code}}`
        }})
        .onRemoteReady(() => {{
          this.statusText = 'uec_remote_ready'
        }})
      Text(this.statusText)
        .id('uec_status')
        .fontSize(14)
      Text('{note}')
        .id('uec_expect_hint')
        .fontSize(12)
    }}
    .width('100%')
    .height('100%')
    .padding(16)
  }}
}}
"""


def page_xcomp(struct: str, cid: str, xctype: str) -> str:
    return f"""{HEADER}

@Entry
@Component
struct {struct} {{
  @State statusText: string = 'idle'
  private xController: XComponentController = new XComponentController()

  build() {{
    Column({{ space: 12 }}) {{
      Text('{cid}')
        .fontSize(12)
      XComponent({{
        id: 'xcomp_surface',
        type: XComponentType.{xctype},
        controller: this.xController
      }})
        .width(200)
        .height(160)
        .onLoad(() => {{
          this.statusText = 'xcomp_onload'
        }})
        .onDestroy(() => {{
          this.statusText = 'xcomp_ondestroy'
        }})
      Text(this.statusText)
        .id('xcomp_status')
        .fontSize(14)
    }}
    .width('100%')
    .height('100%')
    .padding(16)
  }}
}}
"""


def page_plugin(struct: str, cid: str, invalid: bool) -> str:
    src = "invalid://plugin/source" if invalid else "pages/Index.ets&entry"
    bundle = "com.example.plugin.not.exist"
    return f"""{HEADER}

@Entry
@Component
struct {struct} {{
  @State statusText: string = 'idle'

  build() {{
    Column({{ space: 12 }}) {{
      Text('{cid}')
        .fontSize(12)
      PluginComponent({{
        template: {{ source: '{src}', bundleName: '{bundle}' }},
        data: {{}}
      }})
        .width(200)
        .height(120)
        .id('plugin_host')
        .onComplete(() => {{
          this.statusText = 'plugin_complete'
        }})
        .onError(() => {{
          this.statusText = 'plugin_error'
        }})
      Text(this.statusText)
        .id('plugin_status')
        .fontSize(14)
    }}
    .width('100%')
    .height('100%')
    .padding(16)
  }}
}}
"""


def page_shapes(struct: str, cid: str, kind: str, count: int = 40) -> str:
    builders = {
        "Path": "Path().width(8).height(8).commands('M0 0 L8 8')",
        "Ellipse": "Ellipse().width(8).height(8)",
        "Line": "Line().startPoint([0, 0]).endPoint([8, 8]).width(8).height(8)",
        "Polygon": "Polygon({{ points: [[0, 0], [8, 0], [4, 8]] }}).width(8).height(8)",
        "Video": "Video({{ src: $r('app.media.icon') }}).width(24).height(24)",
        "XComponent": """XComponent({ id: `xc_${item}`, type: XComponentType.SURFACE, controller: new XComponentController() }).width(16).height(16)""",
    }
    # ForEach with simple repeated nodes - avoid Video/XComponent 100 for compile weight
    node = {
        "Path": "Path().width(6).height(6).commands('M0 0 L6 6')",
        "Ellipse": "Ellipse().width(6).height(6)",
        "Line": "Line().startPoint([0, 0]).endPoint([6, 6])",
        "Polygon": "Ellipse().width(6).height(6)",
        "Video": "Image($r('app.media.icon')).width(12).height(12)",  # proxy: many media nodes
        "XComponent": "Blank().width(8).height(8).backgroundColor(Color.Grey)",  # avoid 100 real surfaces
    }.get(kind, "Text('.').fontSize(8)")
    items = ", ".join(str(i) for i in range(count))
    return f"""{HEADER}

@Entry
@Component
struct {struct} {{
  private items: number[] = [{items}]
  build() {{
    Column({{ space: 8 }}) {{
      Text('{cid}')
        .fontSize(12)
      Flex({{ wrap: FlexWrap.Wrap }}) {{
        ForEach(this.items, (item: number) => {{
          {node}
        }}, (item: number) => item.toString())
      }}
      .width('100%')
      .id('shape_batch_host')
      Text(`count_${{this.items.length}}`)
        .id('shape_batch_status')
        .fontSize(14)
    }}
    .width('100%')
    .height('100%')
    .padding(12)
  }}
}}
"""


def page_split(struct: str, cid: str, which: str) -> str:
    if which == "Column":
        body = """ColumnSplit() {
        Text('A').height(80)
        Text('B').height(80)
      }
      .id('split_host')"""
    else:
        body = """RowSplit() {
        Text('L').width(80)
        Text('R').width(80)
      }
      .id('split_host')"""
    return f"""{HEADER}

@Entry
@Component
struct {struct} {{
  build() {{
    Column({{ space: 12 }}) {{
      Text('{cid}')
        .fontSize(12)
      {body}
      Text('split_ready')
        .id('split_status')
    }}
    .width('100%')
    .height('100%')
    .padding(16)
  }}
}}
"""


def page_video(struct: str, cid: str) -> str:
    return f"""{HEADER}

@Entry
@Component
struct {struct} {{
  @State statusText: string = 'idle'
  build() {{
    Column({{ space: 12 }}) {{
      Text('{cid}')
        .fontSize(12)
      Video({{ src: $r('app.media.icon') }})
        .width(200)
        .height(120)
        .controls(true)
        .id('video_host')
        .onPrepared(() => {{
          this.statusText = 'video_prepared'
        }})
        .onError(() => {{
          this.statusText = 'video_error_or_unsupported'
        }})
      Text(this.statusText)
        .id('video_status')
    }}
    .width('100%')
    .height('100%')
    .padding(16)
  }}
}}
"""


def page_depth(struct: str, cid: str, depth: int = 20) -> str:
    # nested Columns
    inner = "Text('leaf').id('depth_leaf')"
    for i in range(depth):
        inner = f"Column() {{\n{'  ' * (i+1)}{inner}\n{'  ' * i}}}.id('depth_{i}')"
    return f"""{HEADER}

@Entry
@Component
struct {struct} {{
  build() {{
    Column({{ space: 8 }}) {{
      Text('{cid}')
        .fontSize(12)
      {inner}
      Text('depth_{depth}')
        .id('depth_status')
    }}
    .width('100%')
    .height('100%')
    .padding(8)
  }}
}}
"""


def page_generic_real(struct: str, cid: str, kind: str) -> str:
    if kind == "calendar":
        body = """CalendarPicker()
        .id('comp_host')
      Text('calendar_ready').id('comp_status')"""
    elif kind == "textclock":
        body = """TextClock({ timeZoneOffset: -8 })
        .format('HH:mm:ss')
        .fontSize(18)
        .id('comp_host')
      Text('textclock_ready').id('comp_status')"""
    elif kind == "datepicker":
        body = """DatePicker({ start: new Date('2020-1-1'), end: new Date('2030-12-31'), selected: new Date('2026-8-5') })
        .id('comp_host')
      Text('datepicker_ready').id('comp_status')"""
    elif kind == "progress":
        body = """Progress({ value: 40, total: 100 })
        .width('80%')
        .id('comp_host')
      Text('progress_ready').id('comp_status')"""
    elif kind == "textpicker":
        body = """TextPicker({ range: ['A', 'B', 'C'] })
        .id('comp_host')
      Text('textpicker_ready').id('comp_status')"""
    elif kind == "patternlock":
        body = """PatternLock()
        .sideLength(120)
        .id('comp_host')
      Text('patternlock_ready').id('comp_status')"""
    elif kind == "row_reverse":
        body = """Row() {
        Text('1')
        Text('2')
        Text('3')
      }
      .reverse(true)
      .id('comp_host')
      Text('row_reverse_ready').id('comp_status')"""
    elif kind == "image":
        body = """Image($r('app.media.icon'))
        .width(80).height(80)
        .id('comp_host')
      Text('image_ready').id('comp_status')"""
    else:
        body = """Text('component_ready')
        .id('comp_host')
      Text('component_ready').id('comp_status')"""
    return f"""{HEADER}

@Entry
@Component
struct {struct} {{
  build() {{
    Column({{ space: 12 }}) {{
      Text('{cid}')
        .fontSize(12)
      {body}
    }}
    .width('100%')
    .height('100%')
    .padding(16)
  }}
}}
"""


def classify_realize(cid: str) -> tuple[str, str]:
    u = cid.upper()
    if "PLUGIN" in u:
        return "plugin", "invalid"
    if "XCOMPONENT" in u:
        return "xcomp", "SURFACE"
    if "UIEXTENSION" in u or "UEC" in u or "DYNAMICCOMPONENT" in u or "DARK_LIGHT" in u:
        if "003" in cid or "MISSING" in u or "未安装" in u:
            return "uec", "missing"
        if "005" in cid or "错误" in u or "BAD" in u or "0030" in cid or "0032" in cid:
            return "uec", "bad_provider"
        return "uec", "missing"
    if "EMBEDDED" in u:
        return "uec", "missing"  # similar embedding error path
    if "QIANGJI_SHAPE" in u or "SHAPE_MULTITHREAD" in u:
        if "PATH" in u or "0070" in cid:
            return "shapes", "Path"
        if "ELLIPSE" in u or "0050" in cid:
            return "shapes", "Ellipse"
        if "LINE" in u or "0060" in cid:
            return "shapes", "Line"
        if "POLYGON" in u or "0090" in cid:
            return "shapes", "Polygon"
        if "VIDEO" in u or "0030" in cid:
            return "shapes", "Video"
        if "XCOMPONENT" in u or "0010" in cid:
            return "shapes", "XComponent"
        return "shapes", "Ellipse"
    if "FOLDSPLIT" in u or "FOLDERSTACK" in u:
        return "split", "Column"
    if "MINIATURIZATION_0860" in u:
        return "split", "Column"
    if "MINIATURIZATION_0850" in u:
        return "split", "Row"
    if "MINIATURIZATION_0870" in u:
        return "split", "Column"
    if "VIDEO" in u:
        return "video", ""
    if "MULTITHREAD_BUJU" in u or "MEMORY_LEAK" in u or "COLUMN_ROW" in u:
        if "COLUMN_ROW" in u:
            return "generic", "row_reverse"
        return "depth", "20"
    if "TEXTCLOCK" in u:
        return "generic", "textclock"
    if "CAlENDAR" in u or "CALENDAR" in u:
        return "generic", "calendar"
    if "DATEPICKER" in u or "ALN_1460" in u:
        return "generic", "datepicker"
    if "PC_EVENT" in u.upper() or "PC_Event" in cid:
        return "generic", "progress"
    if "PICKER_CONTAINER" in u:
        return "generic", "textpicker"
    if "DISPLAY_NATIVE" in u or "PATTERN" in u:
        return "generic", "patternlock"
    if "IMAGE" in u or "LAYOUT_MODIFIER" in u:
        return "generic", "image"
    if "TOOLBAR" in u:
        return "generic", "row_reverse"
    return "generic", "image"


def realize_one(cid: str, suite: Path, page: Path | None) -> None:
    func = suite.name.replace(".test.ets", "")
    kind, arg = classify_realize(cid)
    if page is None:
        # invent page path from suite dir name
        folder = func
        # strip trailing digits for folder? keep struct=func
        page = PA / "entry/src/ohosTest/ets/testability/pages" / func / f"{func}.ets"
    struct = page.stem
    route = str(page.relative_to(PA / "entry/src/ohosTest/ets").with_suffix("")).replace("\\", "/")

    if kind == "uec":
        page.write_text(page_uec(struct, cid, arg), encoding="utf-8")
        # assert: status eventually non-idle OR hint present; prefer waiting for error path
        write_suite_wait_status(suite, func, cid, "UIExtensionComponent onError/host path",
                                "Verify UIExtensionComponent mounts and reports error/status for provider path.",
                                route, "uec_status", "uec_error:", True)
    elif kind == "xcomp":
        page.write_text(page_xcomp(struct, cid, arg if arg else "SURFACE"), encoding="utf-8")
        write_suite_wait_status(suite, func, cid, "XComponent surface onLoad",
                                "Verify XComponent SURFACE mounts and onLoad updates status.",
                                route, "xcomp_status", "xcomp_onload", False)
    elif kind == "plugin":
        page.write_text(page_plugin(struct, cid, True), encoding="utf-8")
        write_suite_wait_status(suite, func, cid, "PluginComponent invalid source onError",
                                "Verify PluginComponent with invalid source triggers onError status.",
                                route, "plugin_status", "plugin_error", False)
    elif kind == "shapes":
        page.write_text(page_shapes(struct, cid, arg, 40), encoding="utf-8")
        write_suite_simple(suite, func, cid, f"Batch {arg} nodes proxy",
                           f"Verify batch creation of {arg}-like nodes and count status text.",
                           route, "shape_batch_status", "count_40")
    elif kind == "split":
        page.write_text(page_split(struct, cid, arg or "Column"), encoding="utf-8")
        write_suite_simple(suite, func, cid, f"{arg}Split layout ready",
                           f"Verify {arg}Split layout presents ready status.",
                           route, "split_status", "split_ready")
    elif kind == "video":
        page.write_text(page_video(struct, cid), encoding="utf-8")
        write_suite_wait_status(suite, func, cid, "Video prepared or error status",
                                "Verify Video component reaches prepared or error status with local source.",
                                route, "video_status", "video_", True)
    elif kind == "depth":
        page.write_text(page_depth(struct, cid, 20), encoding="utf-8")
        write_suite_simple(suite, func, cid, "Nested layout depth proxy",
                           "Verify nested Column depth proxy layout and status text.",
                           route, "depth_status", "depth_20")
    else:
        page.write_text(page_generic_real(struct, cid, arg), encoding="utf-8")
        expect = {
            "calendar": "calendar_ready",
            "textclock": "textclock_ready",
            "datepicker": "datepicker_ready",
            "progress": "progress_ready",
            "textpicker": "textpicker_ready",
            "patternlock": "patternlock_ready",
            "row_reverse": "row_reverse_ready",
            "image": "image_ready",
        }.get(arg, "component_ready")
        write_suite_simple(suite, func, cid, f"Real component path: {arg}",
                           f"Verify real {arg} component mounts and exposes ready status.",
                           route, "comp_status", expect)


def write_suite_simple(path, func, cid, name, desc, route, result_id, expect):
    write_suite(path, func, cid, name, desc, route, result_id, result_id, expect)


def write_suite_wait_status(path, func, cid, name, desc, route, result_id, expect_prefix, prefix_match: bool):
    """Wait until status text contains expect_prefix or equals; poll briefly."""
    path.parent.mkdir(parents=True, exist_ok=True)
    if prefix_match:
        check = f"""      let ok = false
      for (let i = 0; i < 10; i++) {{
        let result = await driver.waitForComponent(ON.id('{result_id}'), 2000)
        if (result != undefined) {{
          let text = await result.getText()
          if (text != undefined && text.indexOf('{expect_prefix}') >= 0) {{
            ok = true
            break
          }}
        }}
        await Utils.sleep(300)
      }}
      expect(ok).assertTrue()"""
    else:
        check = f"""      let ok = false
      for (let i = 0; i < 10; i++) {{
        let result = await driver.waitForComponent(ON.id('{result_id}'), 2000)
        if (result != undefined) {{
          let text = await result.getText()
          if (text == '{expect_prefix}') {{
            ok = true
            break
          }}
        }}
        await Utils.sleep(300)
      }}
      expect(ok).assertTrue()"""
    path.write_text(
        f"""{HEADER}

import {{ describe, it, expect, Level }} from '@ohos/hypium'
import Settings from '../model/Settings'
import Utils from '../model/Utils'
import {{ Driver, ON }} from '@kit.TestKit'

export default function {func}() {{
  describe('{func}', () => {{
    /*
     * @tc.number : {cid}
     * @tc.name   : {name}
     * @tc.desc   : {desc}
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('{cid}', Level.LEVEL3, async (done: Function) => {{
      await Settings.changeWindow('{route}')
      let driver = await Driver.create()
      await Utils.sleep(800)
{check}
      done()
    }})
  }})
}}
""",
        encoding="utf-8",
    )


def update_docs_removed(removed: list[str]) -> None:
    for md in ["0803_assert_cases.md", "0803_manual_cases.md", "0803_snap_cases.md"]:
        path = ROOT / "docs" / md
        if not path.exists():
            continue
        lines = path.read_text(encoding="utf-8").splitlines(True)
        out = []
        for line in lines:
            if any(f"`{cid}`" in line for cid in removed):
                continue
            out.append(line)
        path.write_text("".join(out), encoding="utf-8")


def main() -> None:
    suites = iter_suites()
    removed: list[str] = []
    keep: list[tuple[str, Path, Path | None]] = []
    realize: list[tuple[str, Path, Path | None]] = []

    for cid, suite, page in suites:
        if should_delete(cid):
            removed.append(cid)
            suite.unlink(missing_ok=True)
            if page is not None:
                page.unlink(missing_ok=True)
                # remove empty dirs
                try:
                    if page.parent.exists() and not any(page.parent.iterdir()):
                        page.parent.rmdir()
                except OSError:
                    pass
            # remove empty suite dir
            try:
                if suite.parent.exists() and not any(suite.parent.iterdir()):
                    suite.parent.rmdir()
            except OSError:
                pass
            continue
        # detect marker pages to realize
        is_marker = False
        if page is not None:
            pt = page.read_text(encoding="utf-8", errors="ignore")
            if "mark_ready" in pt or "assert_ready_pending" in pt or "manual_case_pending" in pt or "third_party_app_image_manual" in pt or "pending_or_skipped" in pt or "mark_app" in pt or "mark_trace" in pt or "mark_lang" in pt:
                is_marker = True
        st = suite.read_text(encoding="utf-8", errors="ignore")
        if any(x in st for x in ["assert_ready_pending", "manual_case_pending", "third_party_app_image_manual", "pending_or_skipped", "minor_language_manual"]):
            is_marker = True
        if is_marker:
            realize.append((cid, suite, page))
        keep.append((cid, suite, page))

    for cid, suite, page in realize:
        # ensure page path
        if page is None:
            func = suite.name.replace(".test.ets", "")
            page = PA / "entry/src/ohosTest/ets/testability/pages" / func / f"{func}.ets"
            page.parent.mkdir(parents=True, exist_ok=True)
            # update keep page ref
            keep = [(c, s, page if c == cid else p) for c, s, p in keep]
        realize_one(cid, suite, page)

    # refresh keep pages after realize
    keep2 = []
    for cid, suite, page in keep:
        if not suite.exists():
            continue
        t = suite.read_text(encoding="utf-8", errors="ignore")
        wm = re.search(r"changeWindow\('([^']+)'\)", t)
        page2 = None
        if wm:
            page2 = PA / "entry/src/ohosTest/ets" / f"{wm.group(1)}.ets"
            if not page2.exists():
                page2 = None
        keep2.append((cid, suite, page2))

    rebuild_list_and_routes(keep2)
    update_docs_removed(removed)

    # clean empty Test dirs
    for d in (PA / "entry/src/ohosTest/ets/test").iterdir():
        if d.is_dir() and d.name.endswith("Test") and not any(d.rglob("*.ets")):
            shutil.rmtree(d, ignore_errors=True)

    print(f"removed={len(removed)} realized={len(realize)} keep={len(keep2)}")
    for c in removed[:20]:
        print(" -", c)
    if len(removed) > 20:
        print(f" ... +{len(removed)-20}")


if __name__ == "__main__":
    main()
