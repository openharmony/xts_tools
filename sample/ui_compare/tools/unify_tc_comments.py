#!/usr/bin/env python3
# Copyright (c) 2026 Shenzhen Kaihong Digital Industry Development Co., Ltd.
"""Unify @tc.* comment blocks above Hypium it() in ui_compare Suite files.

Only touches entry/src/ohosTest/ets/test/**/*.test.ets (skips model/ and
testability/pages/test orphans). Does not change it() names or bodies.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

# Match a block comment immediately before it( ...
IT_WITH_COMMENT = re.compile(
    r"(?P<indent>[ \t]*)/\*(?P<body>.*?)\*/\s*\n"
    r"(?P=indent)it\s*\(\s*(?P<q>['\"])(?P<itname>[^'\"]+)(?P=q)",
    re.DOTALL,
)

IT_BARE = re.compile(
    r"(?P<indent>[ \t]*)it\s*\(\s*(?P<q>['\"])(?P<itname>[^'\"]+)(?P=q)",
)

FIELD_RE = re.compile(
    r"@tc\.(number|name|type|size|level|desc)\s*:?\s*(.*)$",
    re.IGNORECASE | re.MULTILINE,
)


def normalize_block(itname: str, body: str, indent: str) -> str:
    fields: dict[str, str] = {}
    for m in FIELD_RE.finditer(body):
        key = m.group(1).lower()
        val = m.group(2).strip()
        # strip trailing * noise
        val = re.sub(r"\s*\*+\s*$", "", val).strip()
        if key == "desc" and "name" not in fields:
            fields["name"] = val if val.lower() != "function test" else itname
        elif key != "desc":
            fields[key] = val

    number = fields.get("number") or itname
    name = fields.get("name") or itname
    if name.lower() in ("function test", "function", ""):
        name = itname
    typ = fields.get("type") or "Function"
    if typ.lower() in ("function test",):
        typ = "Function"
    size = fields.get("size") or "MediumTest"
    if size.lower() in ("uitest", "mediumtest"):
        size = "MediumTest" if size.lower() != "uitest" else "MediumTest"
    level = fields.get("level") or "3"
    level = re.sub(r"^LEVEL\s*", "", level, flags=re.I).strip() or "3"

    lines = [
        f"{indent}/*",
        f"{indent} * @tc.number : {number}",
        f"{indent} * @tc.name   : {name}",
        f"{indent} * @tc.type   : {typ}",
        f"{indent} * @tc.size   : {size}",
        f"{indent} * @tc.level  : {level}",
        f"{indent} */",
    ]
    return "\n".join(lines)


def process_text(text: str) -> tuple[str, int]:
    changed = 0

    def repl_comment(m: re.Match) -> str:
        nonlocal changed
        indent = m.group("indent")
        itname = m.group("itname")
        q = m.group("q")
        new_block = normalize_block(itname, m.group("body"), indent)
        old = m.group(0)
        new = f"{new_block}\n{indent}it({q}{itname}{q}"
        if new != old:
            changed += 1
        return new

    out = IT_WITH_COMMENT.sub(repl_comment, text)

    # Insert missing blocks for bare it( that have no preceding */
    lines = out.splitlines(keepends=True)
    result: list[str] = []
    i = 0
    while i < len(lines):
        line = lines[i]
        m = IT_BARE.match(line.rstrip("\n"))
        if m:
            # look back for */ on previous non-empty
            j = len(result) - 1
            while j >= 0 and result[j].strip() == "":
                j -= 1
            has_block = j >= 0 and "*/" in result[j]
            if not has_block:
                indent = m.group("indent")
                itname = m.group("itname")
                block = normalize_block(itname, "", indent) + "\n"
                result.append(block)
                changed += 1
        result.append(line)
        i += 1
    return "".join(result), changed


def iter_test_files(project: Path) -> list[Path]:
    test_root = project / "entry" / "src" / "ohosTest" / "ets" / "test"
    if not test_root.is_dir():
        # nested _08
        candidates = list(project.glob("**/entry/src/ohosTest/ets/test"))
        if not candidates:
            return []
        test_root = candidates[0]
    files = []
    for p in test_root.rglob("*.test.ets"):
        if "/model/" in str(p).replace("\\", "/"):
            continue
        files.append(p)
    return sorted(files)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--project", action="append", help="uiCompareTest_XX dir name or path")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--root", default=str(ROOT))
    args = ap.parse_args()
    root = Path(args.root)
    if args.project:
        projects = []
        for p in args.project:
            path = Path(p)
            if not path.is_absolute():
                path = root / p
            projects.append(path)
    else:
        projects = sorted(root.glob("uiCompareTest_*"))

    total_files = 0
    total_blocks = 0
    for proj in projects:
        if not proj.is_dir():
            print(f"skip missing {proj}", file=sys.stderr)
            continue
        for f in iter_test_files(proj):
            text = f.read_text(encoding="utf-8", errors="replace")
            new, n = process_text(text)
            if n == 0:
                continue
            total_files += 1
            total_blocks += n
            print(f"{f.relative_to(root)}: {n} block(s)")
            if not args.dry_run:
                f.write_text(new, encoding="utf-8")
    print(f"done files={total_files} blocks={total_blocks} dry_run={args.dry_run}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
