#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Create missing uiCompareTest_XX.json5 or append missing extra pairs from named snapShot()."""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SNAP_RE = re.compile(r"""snapShot\s*\(\s*['"]([^'"]+)['"]\s*\)""")

JSON5_HEADER = '''/**
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
 */

'''


def find_test_root(project: Path) -> Path | None:
    p = project / "entry" / "src" / "ohosTest" / "ets" / "test"
    if p.is_dir():
        return p
    found = list(project.glob("**/entry/src/ohosTest/ets/test"))
    return found[0] if found else None


def collect_snaps(test_root: Path) -> dict[str, list[str]]:
    """Map case_id -> ordered unique snap basenames (with .webp)."""
    cases: dict[str, list[str]] = {}
    for f in test_root.rglob("*.test.ets"):
        if "/model/" in str(f).replace("\\", "/"):
            continue
        text = f.read_text(encoding="utf-8", errors="replace")
        for name in SNAP_RE.findall(text):
            base = name if name.endswith(".webp") else f"{name}.webp"
            # case key: strip trailing _NN before .webp if present
            stem = base[:-5] if base.endswith(".webp") else base
            m = re.match(r"^(.*?)(?:_(\d{2}))?$", stem)
            case_id = m.group(1) if m else stem
            cases.setdefault(case_id, [])
            if base not in cases[case_id]:
                cases[case_id].append(base)
    return cases


def read_bundle(project: Path) -> str:
    app = project / "AppScope" / "app.json5"
    if not app.exists():
        # nested
        apps = list(project.glob("**/AppScope/app.json5"))
        app = apps[0] if apps else None
    if app and app.exists():
        m = re.search(r'"bundleName"\s*:\s*"([^"]+)"', app.read_text(encoding="utf-8"))
        if m:
            return m.group(1)
    return f"com.example.{project.name.lower()}"


def load_extra(path: Path) -> dict:
    if not path.exists():
        return {}
    text = path.read_text(encoding="utf-8")
    # strip /* */ comments for json5-ish
    text = re.sub(r"/\*.*?\*/", "", text, flags=re.DOTALL)
    text = re.sub(r"//.*?$", "", text, flags=re.MULTILINE)
    try:
        data = json.loads(text)
    except json.JSONDecodeError:
        # trailing commas
        text2 = re.sub(r",\s*}", "}", text)
        text2 = re.sub(r",\s*]", "]", text2)
        try:
            data = json.loads(text2)
        except json.JSONDecodeError as e:
            print(f"WARN cannot parse {path}: {e}", file=sys.stderr)
            return {}
    return data.get("extra") or {}


def build_doc(project: Path, extra: dict, bundle: str) -> dict:
    hap = f"ace/resource/common/hap/{project.name}.hap"
    return {
        "description": "Config for XtsTestCase devicetest test cases",
        "environment": [{"type": "device"}],
        "driver": {
            "type": "DeviceTest",
            "bundle-name": bundle,
            "py_file": "ace/testcases/UI_Compare_Tools_Common.py",
        },
        "kits": [
            {
                "test-file-name": [hap],
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
        "extra": extra,
    }


def write_json5(path: Path, doc: dict) -> None:
    # pretty json (valid json5)
    body = json.dumps(doc, indent=2, ensure_ascii=False)
    path.write_text(JSON5_HEADER + body + "\n", encoding="utf-8")


def merge_extra(existing: dict, snaps: dict[str, list[str]]) -> tuple[dict, int]:
    out = dict(existing)
    added = 0
    for case_id, webs in sorted(snaps.items()):
        pairs = [[w, w] for w in webs]
        if case_id not in out:
            out[case_id] = pairs
            added += len(pairs)
        else:
            # append missing pairs only
            have = {tuple(p) if isinstance(p, list) else p for p in out[case_id]}
            for p in pairs:
                t = tuple(p)
                if t not in have:
                    out[case_id].append(p)
                    added += 1
                    have.add(t)
    return out, added


def config_path(project: Path) -> Path | None:
    for ext in (".json5", ".json"):
        p = project / f"{project.name}{ext}"
        if p.exists():
            return p
    # nested _08
    for p in project.glob("**/uiCompareTest_*.json*"):
        if p.name.startswith("uiCompare"):
            return p
    return None


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--project", action="append")
    ap.add_argument("--root", default=str(ROOT))
    ap.add_argument("--create-missing-only", action="store_true")
    args = ap.parse_args()
    root = Path(args.root)
    if args.project:
        projects = [(root / p if not Path(p).is_absolute() else Path(p)) for p in args.project]
    else:
        projects = sorted(root.glob("uiCompareTest_*"))

    for proj in projects:
        if not proj.is_dir():
            continue
        test_root = find_test_root(proj)
        snaps = collect_snaps(test_root) if test_root else {}
        cfg = config_path(proj)
        bundle = read_bundle(proj)
        if cfg is None:
            # create json5
            out_path = proj / f"{proj.name}.json5"
            # for nested _08, write next to entry parent that looks like project root
            if (proj / "uiTEXTcompare01").is_dir() and not (proj / "entry").is_dir():
                # put at uiTEXTcompare01 if that is the real app root
                nested = proj / "uiTEXTcompare01"
                if (nested / "entry").is_dir():
                    out_path = nested / f"{proj.name}.json5"
                    bundle = read_bundle(nested)
                    test_root = find_test_root(nested)
                    snaps = collect_snaps(test_root) if test_root else {}
            extra = {cid: [[w, w] for w in webs] for cid, webs in sorted(snaps.items())}
            doc = build_doc(proj, extra, bundle)
            write_json5(out_path, doc)
            print(f"CREATED {out_path.relative_to(root)} cases={len(extra)}")
            continue
        if args.create_missing_only:
            continue
        # fill existing
        existing = load_extra(cfg)
        merged, added = merge_extra(existing, snaps)
        if added == 0:
            print(f"OK {cfg.name}: no new pairs")
            continue
        # rewrite preserving top-level keys if possible
        text = cfg.read_text(encoding="utf-8")
        text_nc = re.sub(r"/\*.*?\*/", "", text, flags=re.DOTALL)
        text_nc = re.sub(r"//.*?$", "", text_nc, flags=re.MULTILINE)
        try:
            data = json.loads(re.sub(r",\s*}", "}", re.sub(r",\s*]", "]", text_nc)))
        except json.JSONDecodeError:
            data = build_doc(proj, merged, bundle)
        else:
            data["extra"] = merged
        if cfg.suffix == ".json5":
            write_json5(cfg, data)
        else:
            cfg.write_text(json.dumps(data, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
        print(f"UPDATED {cfg.relative_to(root)} +{added} pairs")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
