#!/usr/bin/env python3
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
"""Build jsunit_lite JS bundle via ace-loader webpack.

Usage: jsunit_lite_build_js.py <test_source_root> <framework_root> <output_dir>
"""
import os
import re
import shutil
import subprocess
import sys
import tempfile
import json

_IMPORT_PATTERN = re.compile(
    r"import\s*\{([^}]+)\}\s*from\s*['\"]jsunit_lite/index['\"]"
)

_TEST_IMPORT_PATTERN = re.compile(
    r"import\s+(\w+)\s+from\s+['\"]\.\/([^'\"]+)\.test['\"]"
)


def _find_source_root():
    if os.environ.get("OHOS_BUILD_HOME"):
        return os.environ["OHOS_BUILD_HOME"]
    cur = os.path.dirname(os.path.abspath(__file__))
    for _ in range(10):
        if os.path.isfile(os.path.join(cur, "build.sh")) and \
                os.path.isdir(os.path.join(cur, "developtools", "ace_js2bundle", "ace-loader")):
            return cur
        cur = os.path.dirname(cur)
    raise RuntimeError("could not locate source root (no build.sh found upward)")


def _find_node_bin(prebuilts_dir, entries):
    current_link = os.path.join(prebuilts_dir, "current")
    if os.path.islink(current_link):
        node_bin = os.path.join(current_link, "bin", "node")
        if os.path.isfile(node_bin):
            return os.path.join(current_link, "bin")
    for entry in entries:
        if entry == "current":
            continue
        node_bin = os.path.join(prebuilts_dir, entry, "bin", "node")
        if os.path.isfile(node_bin):
            return os.path.join(prebuilts_dir, entry, "bin")
    return None


def find_ace_loader():
    root = _find_source_root()
    return os.path.join(root, "developtools", "ace_js2bundle", "ace-loader")


def find_nodejs():
    cur = os.path.dirname(os.path.abspath(__file__))
    for _ in range(10):
        prebuilts = os.path.join(cur, "prebuilts", "build-tools", "common", "nodejs")
        if os.path.isdir(prebuilts):
            entries = sorted(os.listdir(prebuilts), reverse=True)
            result = _find_node_bin(prebuilts, entries)
            if result:
                return result
        cur = os.path.dirname(cur)
    return None


def _merge_sources(test_root, framework_root, tmp_merged):
    """Merge test source files and framework files into a single temp dir."""
    _skip_exts = {".py", ".gn", ".bak"}
    for root, _, files in os.walk(test_root):
        for name in files:
            if any(name.endswith(ext) for ext in _skip_exts):
                continue
            src = os.path.join(root, name)
            rel = os.path.relpath(root, test_root)
            dst_dir = os.path.join(tmp_merged, rel) if rel != "." else tmp_merged
            os.makedirs(dst_dir, exist_ok=True)
            shutil.copy2(src, os.path.join(dst_dir, name))

    fw_dst = os.path.join(tmp_merged, "entry/src/main/js/MainAbility/jsunit_lite")
    for root, _, files in os.walk(framework_root):
        for name in files:
            if any(name.endswith(ext) for ext in _skip_exts):
                continue
            src = os.path.join(root, name)
            rel = os.path.relpath(root, framework_root)
            dst_dir = os.path.join(fw_dst, rel) if rel != "." else fw_dst
            os.makedirs(dst_dir, exist_ok=True)
            shutil.copy2(src, os.path.join(dst_dir, name))


def _replace_import(match):
    """Replace import { x, y } from 'jsunit_lite/index' with a global accessor.
    
    NOTE: Cannot use getApp().__hypium at module top-level because when test files
    are imported by app.js, getApp() is not yet available (onCreate hasn't run).
    Instead, declare variables that will be populated inside the testsuite function.
    """
    names = [n.strip() for n in match.group(1).split(",")]
    # Declare variables without assigning (will be set inside testsuite function body)
    decls = ""
    for name in names:
        if name:
            decls += "var " + name + ";"
    return decls


def _inject_hypium_access(tmp_merged, test_files):
    """Inject getApp().__hypium access at the start of each testsuite function body.
    
    Each test file has different imported names, so we extract the var
    declarations from each file individually and generate a per-file accessoror.
"""
    js_dir = os.path.join(tmp_merged, "entry/src/main/js")
    test_dir = os.path.join(js_dir, "test")
    if not os.path.isdir(test_dir):
        return

    # Pattern to match: export default function testName() {
    func_start_pattern = re.compile(
        r"(export\s+default\s+function\s+\w+\s*\(\s*\)\s*\{)"
    )

    # Pattern to extract var names from _replace_import output: 'var describe; var it; ...'
    var_pattern = re.compile(r"var\s+(\w+)\s*;")

    for tf in test_files:
        fpath = os.path.join(test_dir, tf)
        if not os.path.isfile(fpath):
            continue
        with open(fpath, "r") as f:
            content = f.read()

        # Extract var names declared in this file (by _replace_import)
        names = var_pattern.findall(content)

        if not names:
            continue

        # Build per-file accessor
        accessor_parts = ["var __h = getApp().__hypium;"]
        for name in names:
            accessor_parts.append(name + " = __h." + name + ";")
        accessor = " ".join(accessor_parts)

        # Insert accessor right after the function opening brace
        content = func_start_pattern.sub(
            r"\1" + accessor,
            content,
            count=1
        )
        with open(fpath, "w") as f:
            f.write(content)


def _hollow_list_test(tmp_merged):
    """Hollow out List.test.js: replace jsunit_lite/index import with getApp(),
    remove test file imports and calls, return ordered list of test file names.

    This prevents test code from being bundled into app.js while keeping
    the source List.test.js unchanged (only the temp copy is modified).
    """
    js_dir = os.path.join(tmp_merged, "entry/src/main/js")
    list_path = os.path.join(js_dir, "test", "List.test.js")
    if not os.path.isfile(list_path):
        return []

    with open(list_path, "r") as f:
        content = f.read()

    # Parse test imports in order: import assertTest from './assert.test';
    test_files = []
    for m in _TEST_IMPORT_PATTERN.finditer(content):
        test_files.append(m.group(2) + ".test.js")

    # Remove jsunit_lite/index import entirely (empty shell doesn't need it)
    content = _IMPORT_PATTERN.sub("", content)

    # Remove all test file imports
    content = _TEST_IMPORT_PATTERN.sub("", content)

    # Remove all function calls that correspond to test imports
    # (e.g., assertTest(), lifecycleTest(), etc.)
    for tf in test_files:
        name_without_ext = tf.replace(".test.js", "")
        func_name = f"{name_without_ext[0].lower()}{name_without_ext[1:]}Test"
        content = re.sub(
            r"^\s*{}\(\s*\)\s*;?\s*$".format(re.escape(func_name)),
            "",
            content,
            flags=re.MULTILINE
        )

    with open(list_path, "w") as f:
        f.write(content)

    return test_files


def _process_test_files(tmp_merged, test_files):
    """Replace jsunit_lite/index imports in each test file with getApp()."""
    js_dir = os.path.join(tmp_merged, "entry/src/main/js")
    test_dir = os.path.join(js_dir, "test")
    if not os.path.isdir(test_dir):
        return

    for tf in test_files:
        fpath = os.path.join(test_dir, tf)
        if not os.path.isfile(fpath):
            continue
        with open(fpath, "r") as f:
            content = f.read()
        content = _IMPORT_PATTERN.sub(_replace_import, content)
        with open(fpath, "w") as f:
            f.write(content)


def _generate_test_pages(tmp_merged, test_files):
    """For each test file, generate a page wrapper (.hml + .js)."""
    main_ability_dir = os.path.join(tmp_merged, "entry/src/main/js/MainAbility")
    pages_dir = os.path.join(main_ability_dir, "pages", "test")
    test_pages = []

    for tf in test_files:
        test_name = tf.replace(".test.js", "")
        page_dir = os.path.join(pages_dir, test_name)
        os.makedirs(page_dir, exist_ok=True)

        # Minimal .hml (required by ACE webpack for page entry)
        hml_path = os.path.join(page_dir, "index.hml")
        with open(hml_path, "w") as f:
            f.write('<text style="display:none">test</text>\n')

        # Generate page wrapper JS
        # NOTE: Do NOT use 'import router from @system.router' at module top-level -
        # it crashes on reflashed devices (ACE init timing issue).
        # Use requireNative('system.router') inside onShow instead.
        # NOTE: Do NOT 'import testsuite' - it causes JS REF LIMIT (ecma_object ref count > 1022)
        # because test file references getApp().__hypium which adds refs to framework objects.
        # Instead, store testsuite on getApp().__hypium.__testsuites in app.js and call from there.
        page_template = (
            "export default {{\n"
            "    data: {{}},\n"
            "    onShow() {{\n"
            "        console.info('[Hypium] test page onShow: {name}');\n"
            "        try {{\n"
            "            var __app = getApp();\n"
            "            var __h = __app.__hypium;\n"
            "            if (__h && __h.__testsuites && __h.__testsuites['{name}']) {{\n"
            "                __h.__testsuites['{name}']();\n"
            "            }} else {{\n"
            "                console.info('[Hypium] testsuite not found for {name}');\n"
            "            }}\n"
            "        }} catch(e) {{\n"
            "            console.info('[Hypium] page error: ' + e);\n"
            "        }}\n"
            "        try {{\n"
            "            var __app2 = getApp();\n"
            "            var __pages = __app2.testPages;\n"
            "            var __idx = __pages.indexOf('pages/test/{name}/index');\n"
            "            if (__idx >= 0 && __idx < __pages.length - 1) {{\n"
            "                var __router = requireNative('system.router');\n"
            "                __router.replace({{ uri: __pages[__idx + 1] }});\n"
            "            }} else {{\n"
            "                if (__app2.__hypium) {{ __app2.__hypium.execute(); }}\n"
            "            }}\n"
            "        }} catch(e2) {{\n"
            "            console.info('[Hypium] route error: ' + e2);\n"
            "        }}\n"
            "    }}\n"
            "}};\n"
        )
        page_js = page_template.format(name=test_name)
        js_path = os.path.join(page_dir, "index.js")
        with open(js_path, "w") as f:
            f.write(page_js)

        test_pages.append(os.path.join("pages", "test", test_name, "index"))

    return test_pages


def _update_manifest(tmp_merged, test_pages):
    """Add test pages to manifest.json."""
    manifest_path = os.path.join(tmp_merged, "entry/src/main/js/MainAbility/manifest.json")
    if not os.path.isfile(manifest_path):
        return

    with open(manifest_path, "r") as f:
        manifest = json.load(f)

    pages = manifest.get("pages", [])
    if "pages/index/index" not in pages:
        pages.insert(0, "pages/index/index")

    for tp in test_pages:
        if tp not in pages:
            pages.append(tp)

    manifest["pages"] = pages

    with open(manifest_path, "w") as f:
        json.dump(manifest, f, indent=2)


def _run_webpack(ace_loader, src_root, tmp_build, nodejs_bin):
    env = os.environ.copy()
    env["img2bin"] = "false"
    env["hapMode"] = "true"
    if nodejs_bin:
        env["PATH"] = nodejs_bin + os.pathsep + env.get("PATH", "")
    subprocess.run(
        [
            "./node_modules/.bin/webpack",
            "--config", "./webpack.lite.config.js",
            "--env", f"aceModuleRoot={src_root}/entry/src/main/js/MainAbility",
            "--env", f"aceModuleBuild={tmp_build}",
            "--env", "sourceMap=none",
        ],
        cwd=ace_loader,
        check=True,
        env=env,
    )


def _copy_build_output(tmp_build, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    for root, _, files in os.walk(tmp_build):
        rel = os.path.relpath(root, tmp_build)
        for name in files:
            if name.endswith(".map") or name in {"image_convert_result.txt"} or name.endswith(".bak"):
                continue
            src = os.path.join(root, name)
            dst_dir = os.path.join(out_dir, rel) if rel != "." else out_dir
            os.makedirs(dst_dir, exist_ok=True)
            shutil.copy2(src, os.path.join(dst_dir, name))


def main():
    if len(sys.argv) != 4:
        print("Usage: jsunit_lite_build_js.py <test_source_root> <framework_root> <output_dir>", file=sys.stderr)
        return 1

    test_root = os.path.abspath(sys.argv[1])
    framework_root = os.path.abspath(sys.argv[2])
    out_dir = os.path.abspath(sys.argv[3])
    ace_loader = find_ace_loader()

    if not os.path.isdir(test_root):
        print(f"test source root not found: {test_root}", file=sys.stderr)
        return 1
    if not os.path.isdir(framework_root):
        print(f"framework root not found: {framework_root}", file=sys.stderr)
        return 1

    tmp_merged = tempfile.mkdtemp(prefix="jsunit_lite_merged_")
    tmp_build = tempfile.mkdtemp(prefix="jsunit_lite_webpack_")
    try:
        _merge_sources(test_root, framework_root, tmp_merged)

        # Hollow out List.test.js and get ordered test file list
        test_files = _hollow_list_test(tmp_merged)
        if test_files:
            # Replace imports in test files
            _process_test_files(tmp_merged, test_files)
            # Inject getApp().__hypium access inside testsuite function bodies
            _inject_hypium_access(tmp_merged, test_files)
            # Generate page wrappers
            test_pages = _generate_test_pages(tmp_merged, test_files)
            # Update manifest
            _update_manifest(tmp_merged, test_pages)
            # Store page list in app.js's data for runtime access
            _inject_page_list(tmp_merged, test_pages)
            # Inject test imports into pages/index/index.js (page bundle, no 48KB limit)
            _inject_test_imports_to_index(tmp_merged, test_files)
            print(f"[jsunit_lite] Generated {len(test_pages)} test pages: {test_pages}")

        nodejs_bin = find_nodejs()
        _run_webpack(ace_loader, tmp_merged, tmp_build, nodejs_bin)
        _copy_build_output(tmp_build, out_dir)
    finally:
        shutil.rmtree(tmp_merged, ignore_errors=True)
        shutil.rmtree(tmp_build, ignore_errors=True)

    return 0


def _inject_page_list(tmp_merged, test_pages):
    """Inject testPages array into app.js data object."""
    app_path = os.path.join(tmp_merged, "entry/src/main/js/MainAbility/app.js")
    if not os.path.isfile(app_path):
        return
    with open(app_path, "r") as f:
        content = f.read()

    # Add testPages to data object
    pages_str = ", ".join(["'" + p + "'" for p in test_pages])
    if "data: {}," in content:
        content = content.replace(
            "data: {},",
            "data: { testPages: [" + pages_str + "] },",
            1
        )
    elif "testPages: []" in content:
        content = content.replace(
            "testPages: []",
            "testPages: [" + pages_str + "]",
            1
        )
    elif "testPages: [" in content:
        pass

    with open(app_path, "w") as f:
        f.write(content)


def _build_onshow_body(call_lines):
    return (
        "onShow() {\n"
        "        var h = getApp().__hypium;\n"
        "        console.info('[Hypium] index onShow (plan A, test imports in page bundle)');\n"
        "        try {\n"
        "            console.info('[Hypium] running all testsuites');\n"
        + call_lines +
        "            h.execute();\n"
        "            console.info('[Hypium] all testsuites done');\n"
        "        } catch(e) {\n"
        "            console.info('[Hypium] test error: ' + e);\n"
        "        }\n"
        "        try {\n"
        "            var app = requireNative('system.app');\n"
        "            console.info('[Hypium] app type: ' + typeof app);\n"
        "            if (app && app.terminate) {\n"
        "                app.terminate();\n"
        "                console.info('[Hypium] app.terminate called');\n"
        "            } else {\n"
        "                console.info('[Hypium] app.terminate not available');\n"
        "            }\n"
        "        } catch(e) {\n"
        "            console.info('[Hypium] app terminate error: ' + e);\n"
        "        }\n"
        "    }"
    )


def _inject_test_imports_to_index(tmp_merged, test_files):
    """Inject test file imports and calls into pages/index/index.js.
    
    This keeps test code out of app.js (avoiding 48KB limit) by placing
    test imports in the page bundle (no size limit).
    """
    index_path = os.path.join(tmp_merged, "entry/src/main/js/MainAbility/pages/index/index.js")
    if not os.path.isfile(index_path):
        return
    
    test_names = [tf.replace(".test.js", "") for tf in test_files]
    
    # Build import lines
    import_lines = ""
    for tn in test_names:
        import_lines += "import " + tn + "Test from '../../../test/" + tn + ".test';\n"
    
    # Build call lines for onShow
    call_lines = ""
    for tn in test_names:
        call_lines += "        " + tn + "Test();\n"
    
    # Read existing index.js
    with open(index_path, "r") as f:
        content = f.read()
    
    print(f"[jsunit_lite] _inject_test_imports_to_index: index_path={index_path}")
    print(f"[jsunit_lite] before injection, content length={len(content)}")
    print(f"[jsunit_lite] has 'export default': {'export default' in content}")
    
    # Insert imports at the top (before export default)
    export_idx = content.find("export default")
    if export_idx >= 0:
        content = content[:export_idx] + import_lines + content[export_idx:]
        print(f"[jsunit_lite] inserted {len(import_lines)} chars of imports")
    else:
        print(f"[jsunit_lite] WARNING: no 'export default' found!")
    
    # Replace the entire onShow body with test execution
    # Match: onShow() { ... } (non-greedy, up to the next method)
    onshow_pattern = re.compile(
        r"onShow\s*\(\s*\)\s*\{[^}]*(?:\{[^}]*\}[^}]*)*\}",
        re.DOTALL
    )
    new_onshow = _build_onshow_body(call_lines)
    if onshow_pattern.search(content):
        content = onshow_pattern.sub(new_onshow, content, count=1)
    
    with open(index_path, "w") as f:
        f.write(content)
if __name__ == "__main__":
    sys.exit(main())
