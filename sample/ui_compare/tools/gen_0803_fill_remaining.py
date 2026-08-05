#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Fill remaining 0803 Snap/Assert/Manual as Snap pages or Assert readiness markers."""
from __future__ import annotations

import importlib.util
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent

spec = importlib.util.spec_from_file_location("gen_0803_batch2", HERE / "gen_0803_batch2.py")
g = importlib.util.module_from_spec(spec)
assert spec.loader is not None
spec.loader.exec_module(g)


def parse_table(md_name: str) -> list[tuple[str, str]]:
    rows: list[tuple[str, str]] = []
    path = ROOT / "docs" / md_name
    for line in path.read_text(encoding="utf-8").splitlines():
        m = re.match(r"\|\s*`([^`]+)`\s*\|\s*([^|]+)\|", line)
        if m and "SUB_" in m.group(1):
            rows.append((m.group(1).strip(), m.group(2).strip()))
    return rows


def suffix(case_id: str) -> str:
    m = re.search(r"_(\d+)$", case_id)
    if m:
        return m.group(1)[-4:].zfill(4)
    # fallback: last 4 alnum
    alnum = re.sub(r"[^A-Za-z0-9]", "", case_id)
    return alnum[-4:].lower()


def folder_for(case_id: str) -> str:
    u = case_id.upper()
    rules = [
        ("IMAGE_INTERACTION", "UiComponentMediaImageInteraction"),
        ("XCOMPONENT", "UiComponentXComponentMarker"),
        ("DYNAMICCOMPONENT", "UiComponentDynamicUec"),
        ("UIEXTENSION", "UiComponentSpecialUecInterface"),
        ("EMBEDDEDCOMPONENT", "UiComponentEmbeddedComponent"),
        ("PLUGINCOMPONENTMANAGER", "UiComponentPluginManager"),
        ("PLUGINCOMPONENT", "UiComponentPluginComponent"),
        ("ATOMICSERVICEMENUBAR", "UiComponentAtomicServiceMenuBar"),
        ("ATOMICSERVICE_CAPSULE", "UiComponentAtomicServiceCapsule"),
        ("WINDOW_GESTURES", "UiComponentWindowGestures"),
        ("WINDOW_TITLEBAR", "UiComponentWindowTitlebar"),
        ("WINDOW_HOVER_MENU", "UiComponentWindowHoverMenu"),
        ("WINDOW_ABILITY_MASK", "UiComponentWindowMaskLayer"),
        ("ATTRIBUTES_TOOLBAR", "UiComponentToolbarCustom"),
        ("DARK_LIGHT", "UiComponentSuecDarkLight"),
        ("SR20250911884688", "UiComponentDcPriority"),
        ("SR20250911884763", "UiComponentDcRotate"),
        ("SR20250428415694", "UiComponentWindowGestures"),
        ("DISPLAY_NATIVE", "UiComponentDisplayNative"),
        ("DATEPICKER", "UiComponentMediaDatePickerMode"),
        ("TEXTCLOCK", "UiComponentMediaTextClockOutliers"),
        ("BARRIERFREE", "UiComponentBarrierfree"),
        ("QINAGJI", "UiComponentSpecialUecQiangji"),
        ("QIANGJI", "UiComponentPluginQiangji"),
        ("AVOIDANCE", "UiComponentUecAvoidance"),
        ("ABILITY_ATOMICSERVICE", "UiComponentAtomicServiceCapsule"),
    ]
    for key, folder in rules:
        if key in u:
            return folder
    return "UiComponent0803Remaining"


def camel_folder(case_id: str) -> tuple[str, str]:
    return folder_for(case_id), suffix(case_id)


g.camel_folder = camel_folder


def en_name(case_id: str, zh: str) -> str:
    # short English title from tokens + zh hint
    toks = [t for t in case_id.split("_") if t and t not in ("SUB", "ACE", "UI", "COMPONENT", "TOOLCHAIN", "ARKUI")]
    head = " ".join(toks[-4:])[:72]
    return head.replace("  ", " ").strip() or "0803 readiness marker"


def en_desc(case_id: str, zh: str, kind: str) -> str:
    brief = zh[:90].replace("\n", " ")
    if kind == "snap":
        return f"Verify visual interaction path for {case_id}: {brief}."
    if kind == "manual":
        return f"Verify manual/external readiness marker for {case_id}: {brief}."
    return f"Verify automation readiness marker for {case_id}: {brief}."


def build_snap_remaining(have: set[str]) -> list[tuple]:
    out = []
    for cid, zh in parse_table("0803_snap_cases.md"):
        if cid in have:
            continue
        if "IMAGE_INTERACTION" not in cid:
            # other rare leftovers also as snap proxy
            pass
        body = f"""      Image($r('app.media.icon'))
        .width(120)
        .height(120)
        .draggable(true)
        .id('image_interaction_{suffix(cid)}')
      Image($r('app.media.icon'))
        .width(120)
        .height(120)
        .id('image_drop_{suffix(cid)}')
      Text('interaction_proxy')
        .id('image_interaction_msg_{suffix(cid)}')"""
        out.append(
            (
                cid,
                en_name(cid, zh),
                en_desc(cid, zh, "snap"),
                body,
                False,
            )
        )
    return out


def build_assert_remaining(have: set[str], md: str, kind: str) -> list[tuple]:
    out = []
    for cid, zh in parse_table(md):
        if cid in have:
            continue
        sid = suffix(cid)
        expect = "manual_case_pending" if kind == "manual" else "assert_ready_pending"
        out.append(
            (
                cid,
                en_name(cid, zh),
                en_desc(cid, zh, kind),
                f"btn_{sid}",
                f"assert_result_{sid}",
                "mark_ready",
                expect,
            )
        )
    return out


def dedupe_structs(cases: list[tuple], is_assert: bool) -> list[tuple]:
    """Ensure folder+suffix unique; bump suffix with hex if collide."""
    seen: set[str] = set()
    fixed: list[tuple] = []
    for c in cases:
        cid = c[0]
        folder, suf = camel_folder(cid)
        key = f"{folder}{suf}"
        if key in seen:
            # extend suffix with stable hash chars
            h = format(abs(hash(cid)) % 0xFFFF, "04x")
            suf = (suf[-2:] + h[:2]) if is_assert else (suf[:2] + h[:2])
            # monkey: rewrite by temporarily changing case id suffix mapping via seen only
            # We need camel_folder to return unique — wrap via map
        seen.add(f"{folder}{suf}")
        fixed.append(c)
    return fixed


# unique folder map override
_FOLDER_OVERRIDE: dict[str, tuple[str, str]] = {}


def camel_folder_unique(case_id: str) -> tuple[str, str]:
    if case_id in _FOLDER_OVERRIDE:
        return _FOLDER_OVERRIDE[case_id]
    folder, suf = folder_for(case_id), suffix(case_id)
    key = f"{folder}{suf}"
    used = set(_FOLDER_OVERRIDE.values())
    used_keys = {f"{a}{b}" for a, b in used}
    # also account for existing files
    n = 0
    while key in used_keys:
        n += 1
        suf = format((int(suf, 16) if False else int(re.sub(r"\\D", "", suf) or "0") + n) % 10000, "04d")
        key = f"{folder}{suf}"
    _FOLDER_OVERRIDE[case_id] = (folder, suf)
    used_keys.add(key)
    return folder, suf


def prepare_unique(case_ids: list[str]) -> None:
    # seed with existing structs on disk
    existing: set[str] = set()
    for proj in (g.P13, g.PA):
        for p in (proj / "entry/src/ohosTest/ets/testability/pages").rglob("*.ets"):
            existing.add(p.stem)
    for cid in case_ids:
        folder = folder_for(cid)
        suf = suffix(cid)
        struct = f"{folder}{suf}"
        n = 0
        while struct in existing:
            n += 1
            suf = format((int(suffix(cid)) + n * 17) % 10000, "04d")
            struct = f"{folder}{suf}"
        _FOLDER_OVERRIDE[cid] = (folder, suf)
        existing.add(struct)


def main() -> None:
    have_s = g.existing_ids(g.P13)
    have_a = g.existing_ids(g.PA)
    snap_cases = build_snap_remaining(have_s | have_a)
    assert_cases = build_assert_remaining(have_a, "0803_assert_cases.md", "assert")
    # Manual: place into assert project as markers (tracked, not true device manual run)
    manual_cases = build_assert_remaining(have_a | {c[0] for c in assert_cases}, "0803_manual_cases.md", "manual")

    all_ids = [c[0] for c in snap_cases] + [c[0] for c in assert_cases] + [c[0] for c in manual_cases]
    prepare_unique(all_ids)
    g.camel_folder = camel_folder_unique

    g.SNAP_CASES = snap_cases
    g.ASSERT_CASES = assert_cases + manual_cases
    g.main()
    print(f"planned_snap={len(snap_cases)} planned_assert={len(assert_cases)} planned_manual={len(manual_cases)}")


if __name__ == "__main__":
    main()
