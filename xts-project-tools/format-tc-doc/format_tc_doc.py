#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Copyright (c) 2026 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

import os, sys, re, copy, json
from typing import TextIO, Dict

SRC = sys.argv[1]
CWD = os.path.dirname(os.path.abspath(__file__))
SRC_COPY = os.path.join(CWD, "log", "src.copy")
DOC_INFO = os.path.join(CWD, "log", "src_doc.info")
TC_INFO = os.path.join(CWD, "log", "src_tc.info")
NEW_BLK_PAT = re.compile(r"^([0-9]+):")
TC_LVL_NOT_FOUND = "[CORRECT ME] INVALID TCLEVEL."

if len(sys.argv) > 2 and sys.argv[2] == "debug":
    SRC = os.path.join(CWD, "log", os.path.basename(SRC))

DOC_PARAM_TEMP = {
    "num": None,
    "desc": None
}

def rolling_update_doc_param(param: Dict, ln: str) -> Dict:
    num_pat = re.compile(r"tc\.number\s*:?\s*(.*)\s*")
    desc_pat = re.compile(r"tc\.desc\s*:?\s*(.*)\s*")
    
    def get_result(pat: re.Pattern, ln, default):
        mat = pat.search(ln)
        return mat.group(1).strip() if mat else default
    
    param["num"] = get_result(num_pat, ln, param["num"])
    param["desc"] = get_result(desc_pat, ln, param["desc"])
    return param


def get_doc_info():
    try:
        doc_info = {}
        doc_range = {}
        with open(DOC_INFO, 'r', encoding = "utf-8") as f:
            in_blk, st, ed = False, 1, 1
            param = None

            def put_into_doc_info():
                # no doc found or invalid doc
                if param is None or \
                   (param.get("desc") is None and param.get("num") is None):
                    return
                doc_info[st] = {
                    "ed": ed,
                    "param": param
                }
                doc_range[ed] = st

            for ln in f:
                mat = NEW_BLK_PAT.search(ln)
                if mat:
                    if in_blk:
                        put_into_doc_info()
                    else:
                        in_blk = True
                    st = ed = int(mat.group(1))
                    param = copy.deepcopy(DOC_PARAM_TEMP)
                    param = rolling_update_doc_param(param, ln[mat.end():])
                elif in_blk:
                    assert param
                    ed += 1
                    param = rolling_update_doc_param(param, ln)
            # put last one
            if doc_info.get(st) is None:
                put_into_doc_info()
            return 0, doc_info, doc_range
    except Exception as e:
        print(f"An unexpected error occurred during processing doc info file.\n[ERROR] {e}")
        return 77, {}, {}


class TestCaseType:
    JS = 0
    TS = 1
    ARK_TS = 2
    C = 3
    CPP = 4

TC_PAT: Dict = {
    TestCaseType.JS: {
        "sig": re.compile(r"\bit\s*\(\s*(.*?)\s*,\s*(.*?)\s*,"),
        "type": re.compile(r"TestType\.(FUNCTION|PERFORMANCE|POWER|RELIABILITY|SECURITY"
                           r"|GLOBAL|COMPATIBILITY|USER|STANDARD|SAFETY|RESILIENCE)"),
        "size": re.compile(r"Size\.(SMALLTEST|MEDIUMTEST|LARGETEST)"),
        "level": re.compile(r"Level\.(LEVEL[0-4])")
    },
    TestCaseType.CPP: {
        "sig": re.compile(r"\b(?:LITE_TEST_CASE|HWTEST|HWTEST_F)\s*\(.*,\s*(.*?)\s*,\s*(.*?)\s*\)"),
        "type": re.compile(r"(Function|Performance|Power|Reliability|Security"
                           r"|Global|Compatibility|User|Standard|Safety|Resilience)"),
        "size": re.compile(r"(SmallTest|MediumTest|LargeTest)"),
        "level": re.compile(r"(Level[0-4])")
    }
}
TC_PAT[TestCaseType.C] = TC_PAT[TestCaseType.CPP]
TC_PAT[TestCaseType.TS] = TC_PAT[TestCaseType.JS]
TC_PAT[TestCaseType.ARK_TS] = TC_PAT[TestCaseType.JS]

def get_tc_notation(tc_pat: Dict, notation: str):
    type_pat, size_pat, level_pat = tc_pat["type"], tc_pat["size"], tc_pat["level"]
    mat, type, size, level = None, "FUNCTION", "MEDIUMTEST", TC_LVL_NOT_FOUND
    if (mat := type_pat.search(notation)):
        type = mat.group(1).upper()
    if (mat := size_pat.search(notation)):
        size = mat.group(1).upper()
    if (mat := level_pat.search(notation)):
        level = mat.group(1).upper()
    return type, size, level


def get_tc_info(tc_type):
    try:
        tc_info = {}
        tc_pat = TC_PAT[tc_type]
        sig_pat = tc_pat["sig"]
        with open(TC_INFO, 'r', encoding = "utf-8") as f:
            in_blk, st, tc_sig = False, 1, None

            def put_into_tc_info():
                if tc_sig is None:
                    return
                tc_mat = sig_pat.search(tc_sig)
                assert tc_mat
                if tc_type in (TestCaseType.C, TestCaseType.CPP):
                    name = tc_mat.group(1)
                elif tc_mat.group(1).startswith(("'", '"', '`')):
                    name = tc_mat.group(1)[1:-1]
                else:
                    name = tc_mat.group(1)
                notation = tc_mat.group(2)
                type, size, level = get_tc_notation(tc_pat, notation)
                tc_info[st] = {
                    "name": name,
                    "type": type,
                    "size": size,
                    "level": level
                }

            for ln in f:
                mat = NEW_BLK_PAT.search(ln)
                if mat:
                    if in_blk:
                        put_into_tc_info()
                    else:
                        in_blk = True
                    st = int(mat.group(1))
                    tc_sig = ln[mat.end():].strip()
                elif in_blk:
                    assert tc_sig
                    tc_sig += ln.strip()
            # put last one
            if tc_info.get(st) is None:
                put_into_tc_info()
            return 0, tc_info
    except Exception as e:
        print(f"An unexpected error occurred during processing tc info file.\n[ERROR] {e}")
        return 77, {}


def place_tc_doc(fp: TextIO, ld_zero_no: int, tc_sig: Dict, doc: Dict | None):
    name, type, size, level = tc_sig["name"], tc_sig["type"], tc_sig["size"], tc_sig["level"]
    desc, num = None, None
    if doc and (param := doc.get("param")):
        desc = param.get("desc", name)
        num = param.get("num", name)
    
    if not desc or len(desc) == 0:
        desc = name
    if not num or len(num) == 0:
        num = name

    docs = [
        f"/**",
        f" * @tc.name   {name}",
        f" * @tc.number {num}",
        f" * @tc.desc   {desc}",
        f" * @tc.type   {type}",
        f" * @tc.size   {size}",
        f" * @tc.level  {level}",
        f" */"
    ]

    for ln in docs:
        fp.write(ln.rjust(len(ln) + ld_zero_no, ' ') + '\n')


def format_tc_doc(doc_info: Dict, doc_range: Dict, tc_info: Dict):
    try:
        with open(SRC, 'w', encoding = "utf-8") as src:
            with open(SRC_COPY, 'r', encoding = "utf-8") as f:
                ln_no, blank_ln_cnt = 0, 0
                while True:
                    try:
                        ln = next(f)
                        ln_no += 1
                        blank_ln_cnt = blank_ln_cnt + 1 if ln.strip() == '' else 0
                        if blank_ln_cnt != 0:
                            src.write(ln)
                            continue

                        if (doc := doc_info.get(ln_no)):
                            ed = doc["ed"]
                            for _ in range(ed - ln_no):
                                next(f)
                            ln_no = ed
                            blank_ln_cnt = 0
                            continue
                        
                        # place tc and doc
                        if (tc_sig := tc_info.get(ln_no)):
                            ld_zero_no = len(ln) - len(ln.lstrip())
                            ed = ln_no - blank_ln_cnt - 1
                            doc = doc_info.get(doc_range.get(ed))
                            place_tc_doc(src, ld_zero_no, tc_sig, doc)
                            if tc_sig["level"] == TC_LVL_NOT_FOUND:
                                print(f"[WARN] Missing 'Level' notation in '{SRC}:{ln_no}'")
                        src.write(ln)
                    except StopIteration:
                        # The built-in iterator raises StopIteration when the file ends
                        break
        return 0
    except Exception as e:
        print(f"An unexpected error occurred during formatting source file: {SRC}.\n[ERROR] {e}")
        return 77


def format_doc_comment():
    tc_type = None
    if re.search(r"\.c$", SRC, re.I):
        tc_type = TestCaseType.C
    elif re.search(r"\.(?:cpp|c\+\+|cxx|cc)$", SRC, re.I):
        tc_type = TestCaseType.CPP
    elif re.search(r"\.js$", SRC, re.I):
        tc_type = TestCaseType.JS
    elif re.search(r"\.ts$", SRC, re.I):
        tc_type = TestCaseType.TS
    elif re.search(r"\.ets$", SRC, re.I):
        tc_type = TestCaseType.ARK_TS
    
    if tc_type is None:
        print("Invalid file extension, skip.")
        return
    
    print(f"Formatting file: '{SRC}'...")
    ret_code, doc_info, doc_range = get_doc_info()
    assert ret_code == 0
    print("=======DOC INFO=======")
    print(json.dumps(doc_info, indent = 2, sort_keys = False))
    print("=======OFNI COD=======\n")

    print("=======DOC RANGE=======")
    print(json.dumps(doc_range, indent = 2, sort_keys = False))
    print("=======EGNAR COD=======\n")

    ret_code, tc_info = get_tc_info(tc_type)
    assert ret_code == 0
    print("=====TC INFO=====")
    print(json.dumps(tc_info, indent = 2, sort_keys = False))
    print("=====OFNI CT=====")

    assert format_tc_doc(doc_info, doc_range, tc_info) == 0
    print(f"Done formatting file: '{SRC}'.\n")
    return


format_doc_comment()
