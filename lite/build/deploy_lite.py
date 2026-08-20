#!/usr/bin/env python3
import argparse
import os
import shutil
import sys
import stat


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--hap", required=True)
    parser.add_argument("--hap-out", required=True)
    parser.add_argument("--test-json", required=False)
    parser.add_argument("--test-json-out", required=False)
    parser.add_argument("--aa-src", required=False)
    parser.add_argument("--tools-out", required=False)
    args = parser.parse_args()

    os.makedirs(args.hap_out, exist_ok=True)
    shutil.copy2(args.hap, args.hap_out)

    if args.test_json and args.test_json_out:
        os.makedirs(os.path.dirname(args.test_json_out), exist_ok=True)
        shutil.copy2(args.test_json, args.test_json_out)

    if args.aa_src and args.tools_out and os.path.isfile(args.aa_src):
        os.makedirs(args.tools_out, exist_ok=True)
        dst = os.path.join(args.tools_out, "aa")
        shutil.copy2(args.aa_src, dst)
        os.chmod(dst, os.stat(dst).st_mode | stat.S_IEXEC | stat.S_IXGRP | stat.S_IXOTH)

    return 0


if __name__ == "__main__":
    sys.exit(main())
