#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Fix G.FMT.05 (line >120) for uiAssertTest_01 / uiCompareTest_13 (and optional paths).

Skips import lines by default (historical overwidth deferred).
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MAX = 120


def wrap_tc_desc(line: str) -> list[str]:
    """Split long @tc.desc comment line into <=120 chunks."""
    m = re.match(r"^(\s*\*\s*@tc\.desc\s*:\s*)(.*)$", line)
    if not m or len(line) <= MAX:
        return [line]
    prefix, body = m.group(1), m.group(2)
    cont = re.sub(r"@tc\.desc\s*:\s*", "         ", prefix)
    out: list[str] = []
    first_budget = MAX - len(prefix)
    rest_budget = MAX - len(cont)
    chunk = body
    first = True
    while chunk:
        budget = first_budget if first else rest_budget
        if len(chunk) <= budget:
            out.append((prefix if first else cont) + chunk)
            break
        cut = chunk.rfind(" ", 0, budget + 1)
        if cut < max(1, budget // 2):
            cut = budget
        piece = chunk[:cut].rstrip()
        chunk = chunk[cut:].lstrip()
        out.append((prefix if first else cont) + piece)
        first = False
    return out


def wrap_star_comment(line: str) -> list[str] | None:
    """Break a long block-comment body line starting with *."""
    m = re.match(r"^(\s*\*\s*)(.*)$", line)
    if not m or len(line) <= MAX or "@tc." in line:
        return None
    prefix, body = m.groups()
    if not body.strip():
        return None
    budget = MAX - len(prefix)
    out: list[str] = []
    chunk = body
    while chunk:
        if len(chunk) <= budget:
            out.append(prefix + chunk)
            break
        cut = chunk.rfind(" ", 0, budget + 1)
        if cut < max(1, budget // 2):
            cut = budget
        out.append(prefix + chunk[:cut].rstrip())
        chunk = chunk[cut:].lstrip()
    return out


def wrap_window_call(line: str) -> list[str] | None:
    """Break Settings.createWindow/changeWindow('long/path') across lines."""
    m = re.match(
        r"^(\s*)(await\s+)?(Settings\.(?:createWindow|changeWindow))\('([^']+)'\)(.*)$",
        line,
    )
    if not m or len(line) <= MAX:
        return None
    ind, aw, fn, path, rest = m.groups()
    aw = aw or ""
    parts = path.split("/")
    if len(parts) < 2:
        return None
    last = parts[-1]
    head = "/".join(parts[:-1]) + "/"
    return [
        f"{ind}{aw}{fn}(",
        f"{ind}  '{head}' +",
        f"{ind}  '{last}'",
        f"{ind}){rest}",
    ]


def wrap_it_call(line: str) -> list[str] | None:
    """Break it('LONG_ID', Level.LEVEL3, async ...) when overwidth."""
    m = re.match(
        r"^(\s*)it\('([^']+)',\s*(Level\.LEVEL\d),\s*(async\s*\(done:\s*Function\)\s*=>\s*\{)\s*$",
        line,
    )
    if not m or len(line) <= MAX:
        return None
    ind, cid, level, async_part = m.groups()
    return [
        f"{ind}it(",
        f"{ind}  '{cid}',",
        f"{ind}  {level},",
        f"{ind}  {async_part}",
    ]


def wrap_items_array(line: str) -> list[str] | None:
    m = re.match(r"^(\s*)(private\s+items:\s*number\[\]\s*=\s*)\[(.*)\]\s*$", line)
    if not m or len(line) <= MAX:
        return None
    ind, prefix, body = m.groups()
    nums = [x.strip() for x in body.split(",") if x.strip()]
    rows: list[str] = [f"{ind}{prefix}["]
    cur = f"{ind}  "
    for i, n in enumerate(nums):
        piece = n if i == len(nums) - 1 else n + ", "
        if len(cur) + len(piece) > MAX and cur.strip():
            rows.append(cur.rstrip())
            cur = f"{ind}  " + piece
        else:
            cur += piece
    if cur.strip():
        rows.append(cur.rstrip())
    rows.append(f"{ind}]")
    return rows


def wrap_method_sig(line: str) -> list[str] | None:
    """Break long createWindow/changeWindow method signatures."""
    m = re.match(
        r"^(\s*)((?:async\s+)?(?:createWindow|changeWindow)\()(.+)(\)\s*\{?)\s*$",
        line,
    )
    if not m or len(line) <= MAX:
        return None
    ind, head, params, tail = m.groups()
    parts = [p.strip() for p in params.split(",") if p.strip()]
    rows = [f"{ind}{head}"]
    for i, p in enumerate(parts):
        comma = "," if i < len(parts) - 1 else ""
        rows.append(f"{ind}  {p}{comma}")
    rows.append(f"{ind}{tail}")
    return rows


def wrap_hilog(line: str) -> list[str] | None:
    m = re.match(r"^(\s*)(hilog\.info\()(.+)\);\s*$", line)
    if not m or len(line) <= MAX:
        return None
    ind, head, args = m.groups()
    return [f"{ind}{head}", f"{ind}  {args}", f"{ind});"]


def wrap_trailing_comment(line: str) -> list[str] | None:
    if "//" not in line or len(line) <= MAX:
        return None
    # only when code before // is short enough
    code, cmt = line.split("//", 1)
    if len(code.rstrip()) > MAX:
        return None
    ind = re.match(r"^(\s*)", line).group(1)
    return [code.rstrip(), f"{ind}//{cmt}"]


def fix_file(path: Path, skip_imports: bool = True) -> int:
    raw = path.read_text(encoding="utf-8")
    lines = raw.splitlines()
    out: list[str] = []
    changed = 0
    for line in lines:
        if len(line) <= MAX:
            out.append(line)
            continue
        if skip_imports and line.lstrip().startswith("import "):
            out.append(line)
            continue
        if "@tc.desc" in line and line.lstrip().startswith("*"):
            wrapped = wrap_tc_desc(line)
            out.extend(wrapped)
            if wrapped != [line]:
                changed += 1
            continue
        for fn in (
            wrap_window_call,
            wrap_it_call,
            wrap_items_array,
            wrap_method_sig,
            wrap_hilog,
            wrap_trailing_comment,
            wrap_star_comment,
        ):
            w = fn(line)
            if w:
                out.extend(w)
                changed += 1
                break
        else:
            out.append(line)
    new = "\n".join(out) + ("\n" if raw.endswith("\n") else "")
    if new != raw:
        path.write_text(new, encoding="utf-8")
    return changed


def main() -> int:
    targets = sys.argv[1:] or [
        str(ROOT / "uiAssertTest_01"),
        str(ROOT / "uiCompareTest_13"),
    ]
    total_files = 0
    total_fixes = 0
    for t in targets:
        p = Path(t)
        files = [p] if p.is_file() else sorted(p.rglob("*.ets"))
        for f in files:
            if any(x in f.parts for x in ("hypium", "oh_modules", "build", "autosign")):
                continue
            n = fix_file(f)
            if n:
                total_files += 1
                total_fixes += n
                print(f"fixed {n}: {f.relative_to(ROOT)}")
    print(f"done files={total_files} fix_ops={total_fixes}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
