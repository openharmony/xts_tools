"""
 * Copyright (c) 2023 iSoftStone Information Technology (Group) Co.,Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
"""
import unittest
from Tool import WebView

class Test(unittest.TestCase):
    @classmethod  # 初始化测试环境且只会执行一次
    def setUp(self) -> None:
        self.LE = WebView()
        self.LE.init_webview(test_package='com.example.myapplication')  # 运行chromeDriver

    def test_svg_001(self):
        self.LE.init_runner('test_svg_001')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/animations/use-animate-display-none-symbol.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_001')

    def test_svg_002(self):
        self.LE.init_runner('test_svg_002')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/abspos.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="container"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_002')

    def test_svg_003(self):
        self.LE.init_runner('test_svg_003')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/outer-svg-intrinsic-size-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_003')

    def test_svg_004(self):
        self.LE.init_runner('test_svg_004')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/outer-svg-intrinsic-size-004.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_004')

    def test_svg_005(self):
        self.LE.init_runner('test_svg_005')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/outer-svg-intrinsic-size-005.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_005')

    def test_svg_006(self):
        self.LE.init_runner('test_svg_006')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/view-invalid-viewBox.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_006')

    def test_svg_007(self):
        self.LE.init_runner('test_svg_007')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/view-transform-viewBox.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_007')

    def test_svg_008(self):
        self.LE.init_runner('test_svg_008')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/viewBox-baseVal-change-invalid.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_008')

    def test_svg_009(self):
        self.LE.init_runner('test_svg_009')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/viewBox-change-repaint-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_009')

    def test_svg_010(self):
        self.LE.init_runner('test_svg_010')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/coordinate-systems/viewBox-scaling-text-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_010')

    def test_svg_011(self):
        self.LE.init_runner('test_svg_011')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/embedded/image-embedding-svg-nested-svg-in-foreignobject.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_011')

    def test_svg_012(self):
        self.LE.init_runner('test_svg_012')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/embedded/image-embedding-svg-viewref-with-viewbox.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_012')

    def test_svg_013(self):
        self.LE.init_runner('test_svg_013')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/embedded/image-embedding-svg-with-auto-height.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_013')

    def test_svg_014(self):
        self.LE.init_runner('test_svg_014')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/embedded/image-embedding-svg-with-fractional-viewbox.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_014')

    def test_svg_015(self):
        self.LE.init_runner('test_svg_015')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/embedded/image-embedding-svg-with-viewport-units-inline-style.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_015')

    def test_svg_016(self):
        self.LE.init_runner('test_svg_016')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/embedded/image-embedding-svg-with-viewport-units.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_016')

    def test_svg_017(self):
        self.LE.init_runner('test_svg_017')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/embedded/image-fractional-width-vertical-fidelity.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_017')

    def test_svg_018(self):
        self.LE.init_runner('test_svg_018')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/composited-inside-object.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_018')

    def test_svg_019(self):
        self.LE.init_runner('test_svg_019')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/compositing-backface-visibility.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_019')

    def test_svg_020(self):
        self.LE.init_runner('test_svg_020')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/filter-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_020')

    def test_svg_021(self):
        self.LE.init_runner('test_svg_021')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/foreign-object-margin-collapsing.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_021')

    def test_svg_022(self):
        self.LE.init_runner('test_svg_022')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/foreign-object-paints-before-rect.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_022')

    def test_svg_023(self):
        self.LE.init_runner('test_svg_023')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/foreign-object-scale-scroll.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_023')

    def test_svg_024(self):
        self.LE.init_runner('test_svg_024')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/foreign-object-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_024')

    def test_svg_025(self):
        self.LE.init_runner('test_svg_025')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/foreign-object-with-position-under-clip-path.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_025')

    def test_svg_026(self):
        self.LE.init_runner('test_svg_026')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/isolation-with-html.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_026')

    def test_svg_027(self):
        self.LE.init_runner('test_svg_027')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/isolation-with-svg.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_027')

    def test_svg_028(self):
        self.LE.init_runner('test_svg_028')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/masked.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_028')

    def test_svg_029(self):
        self.LE.init_runner('test_svg_029')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/overlapped-positioned-and-will-change-transform-descendant.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_029')

    def test_svg_030(self):
        self.LE.init_runner('test_svg_030')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/position-svg-root-in-foreign-object.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_030')

    def test_svg_031(self):
        self.LE.init_runner('test_svg_031')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/scroll-transform-nested-stacked-children.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_031')

    def test_svg_032(self):
        self.LE.init_runner('test_svg_032')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/stacking-context.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.test_implicit_expression_screenshot('//*[@id="top"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[1]/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="top"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_032')

    def test_svg_033(self):
        self.LE.init_runner('test_svg_033')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/will-change-in-foreign-object-paint-order.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_033')

    def test_svg_034(self):
        self.LE.init_runner('test_svg_034')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/extensibility/foreignObject/will-change-in-transformed-foreign-object.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="should-be-hidden"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_034')

    def test_svg_035(self):
        self.LE.init_runner('test_svg_035')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/circle-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_035')

    def test_svg_036(self):
        self.LE.init_runner('test_svg_036')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/circle-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_036')

    def test_svg_037(self):
        self.LE.init_runner('test_svg_037')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/circle-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_037')

    def test_svg_038(self):
        self.LE.init_runner('test_svg_038')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/circle-004.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_038')

    def test_svg_039(self):
        self.LE.init_runner('test_svg_039')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/circle-005.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_039')

    def test_svg_040(self):
        self.LE.init_runner('test_svg_040')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/ellipse-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_040')

    def test_svg_041(self):
        self.LE.init_runner('test_svg_041')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/ellipse-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_041')

    def test_svg_042(self):
        self.LE.init_runner('test_svg_042')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/ellipse-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_042')

    def test_svg_043(self):
        self.LE.init_runner('test_svg_043')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/ellipse-004.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_043')

    def test_svg_044(self):
        self.LE.init_runner('test_svg_044')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/percentage-attribute.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_044')

    def test_svg_045(self):
        self.LE.init_runner('test_svg_045')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/percentage.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_045')

    def test_svg_046(self):
        self.LE.init_runner('test_svg_046')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/rect-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_046')

    def test_svg_047(self):
        self.LE.init_runner('test_svg_047')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/rect-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_047')

    def test_svg_048(self):
        self.LE.init_runner('test_svg_048')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/rect-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_048')

    def test_svg_049(self):
        self.LE.init_runner('test_svg_049')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/geometry/reftests/rect-004.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_049')

    def test_svg_050(self):
        self.LE.init_runner('test_svg_050')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/layout/svg-intrinsic-size-invalidation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="container"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="container"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_050')

    def test_svg_051(self):
        self.LE.init_runner('test_svg_051')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/layout/svg-with-precent-dimensions-relayout.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/span', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/span', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_051')

    def test_svg_052(self):
        self.LE.init_runner('test_svg_052')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-a-element-attr-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_052')

    def test_svg_053(self):
        self.LE.init_runner('test_svg_053')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-feImage-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_053')

    def test_svg_054(self):
        self.LE.init_runner('test_svg_054')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-filter-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_054')

    def test_svg_055(self):
        self.LE.init_runner('test_svg_055')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-gradient-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_055')

    def test_svg_056(self):
        self.LE.init_runner('test_svg_056')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-image-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_056')

    def test_svg_057(self):
        self.LE.init_runner('test_svg_057')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-pattern-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_057')

    def test_svg_058(self):
        self.LE.init_runner('test_svg_058')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-textPath-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_058')

    def test_svg_059(self):
        self.LE.init_runner('test_svg_059')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/href-use-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_059')

    def test_svg_060(self):
        self.LE.init_runner('test_svg_060')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/url-processing-invalid-base.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_060')

    def test_svg_061(self):
        self.LE.init_runner('test_svg_061')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/url-processing-whitespace-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_061')

    def test_svg_062(self):
        self.LE.init_runner('test_svg_062')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/url-processing-whitespace-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_062')

    def test_svg_063(self):
        self.LE.init_runner('test_svg_063')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/url-processing-whitespace-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_063')

    def test_svg_064(self):
        self.LE.init_runner('test_svg_064')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/url-reference-local-textpath.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_064')

    def test_svg_065(self):
        self.LE.init_runner('test_svg_065')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/use-descendant-combinator-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_065')

    def test_svg_066(self):
        self.LE.init_runner('test_svg_066')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/use-descendant-combinator-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_066')

    def test_svg_067(self):
        self.LE.init_runner('test_svg_067')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/use-descendant-combinator-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_067')

    def test_svg_068(self):
        self.LE.init_runner('test_svg_068')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/use-hidden-attr-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_068')

    def test_svg_069(self):
        self.LE.init_runner('test_svg_069')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/use-keyframes.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_069')

    def test_svg_070(self):
        self.LE.init_runner('test_svg_070')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/use-nested-symbol-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_070')

    def test_svg_071(self):
        self.LE.init_runner('test_svg_071')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/linking/reftests/use-symbol-rendered-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_071')

    def test_svg_072(self):
        self.LE.init_runner('test_svg_072')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/currentColor-override-pserver-fallback.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_072')

    def test_svg_073(self):
        self.LE.init_runner('test_svg_073')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/currentColor-override-pserver-fill.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_073')

    def test_svg_074(self):
        self.LE.init_runner('test_svg_074')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/currentColor-override-pserver-stroke.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_074')

    def test_svg_075(self):
        self.LE.init_runner('test_svg_075')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/foreignObject-overflow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_075')

    def test_svg_076(self):
        self.LE.init_runner('test_svg_076')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_076')

    def test_svg_077(self):
        self.LE.init_runner('test_svg_077')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_077')

    def test_svg_078(self):
        self.LE.init_runner('test_svg_078')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_078')

    def test_svg_079(self):
        self.LE.init_runner('test_svg_079')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-004.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_079')

    def test_svg_080(self):
        self.LE.init_runner('test_svg_080')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-005.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_080')

    def test_svg_081(self):
        self.LE.init_runner('test_svg_081')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-006.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_081')

    def test_svg_082(self):
        self.LE.init_runner('test_svg_082')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-007.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_082')

    def test_svg_083(self):
        self.LE.init_runner('test_svg_083')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-008.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_083')

    def test_svg_084(self):
        self.LE.init_runner('test_svg_084')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-009.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_084')

    def test_svg_085(self):
        self.LE.init_runner('test_svg_085')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/marker-orient-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_085')

    def test_svg_086(self):
        self.LE.init_runner('test_svg_086')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/mask-containing-image-with-clip-path.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_086')

    def test_svg_087(self):
        self.LE.init_runner('test_svg_087')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/display-none-mask.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_087')

    def test_svg_088(self):
        self.LE.init_runner('test_svg_088')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/fallback-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_088')

    def test_svg_089(self):
        self.LE.init_runner('test_svg_089')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/fallback-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_089')

    def test_svg_090(self):
        self.LE.init_runner('test_svg_090')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_090')

    def test_svg_091(self):
        self.LE.init_runner('test_svg_091')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_091')

    def test_svg_092(self):
        self.LE.init_runner('test_svg_092')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_092')

    def test_svg_093(self):
        self.LE.init_runner('test_svg_093')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-011.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_093')

    def test_svg_094(self):
        self.LE.init_runner('test_svg_094')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-012.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_094')

    def test_svg_095(self):
        self.LE.init_runner('test_svg_095')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-013.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_095')

    def test_svg_096(self):
        self.LE.init_runner('test_svg_096')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-021.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_096')

    def test_svg_097(self):
        self.LE.init_runner('test_svg_097')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-022.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_097')

    def test_svg_098(self):
        self.LE.init_runner('test_svg_098')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-path-023.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_098')

    def test_svg_099(self):
        self.LE.init_runner('test_svg_099')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-units-strokewidth-non-scaling-stroke.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_099')

    def test_svg_100(self):
        self.LE.init_runner('test_svg_100')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/marker-units-userspaceonuse-non-scaling-stroke.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_100')

    def test_svg_101(self):
        self.LE.init_runner('test_svg_101')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/markers-orient-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_101')

    def test_svg_102(self):
        self.LE.init_runner('test_svg_102')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/markers-orient-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_102')

    def test_svg_103(self):
        self.LE.init_runner('test_svg_103')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/paint-context-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_103')

    def test_svg_104(self):
        self.LE.init_runner('test_svg_104')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/paint-context-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_104')

    def test_svg_105(self):
        self.LE.init_runner('test_svg_105')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/paint-order-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_105')

    def test_svg_106(self):
        self.LE.init_runner('test_svg_106')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/percentage-attribute.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_106')

    def test_svg_107(self):
        self.LE.init_runner('test_svg_107')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/reftests/percentage.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_107')

    def test_svg_108(self):
        self.LE.init_runner('test_svg_108')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/subpixel-clip-path-transform.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_108')

    def test_svg_109(self):
        self.LE.init_runner('test_svg_109')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/svg-child-will-change-transform-invalidation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_109')

    def test_svg_110(self):
        self.LE.init_runner('test_svg_110')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/svg-with-outline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_110')

    def test_svg_111(self):
        self.LE.init_runner('test_svg_111')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/text-clip-path-transform.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_111')

    def test_svg_112(self):
        self.LE.init_runner('test_svg_112')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/text-mask-transform.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_112')

    def test_svg_113(self):
        self.LE.init_runner('test_svg_113')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/painting/will-change-under-mask.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_113')

    def test_svg_114(self):
        self.LE.init_runner('test_svg_114')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/bearing/absolute.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_114')

    def test_svg_115(self):
        self.LE.init_runner('test_svg_115')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/bearing/relative.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_115')

    def test_svg_116(self):
        self.LE.init_runner('test_svg_116')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/bearing/zero.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_116')

    def test_svg_117(self):
        self.LE.init_runner('test_svg_117')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/closepath/segment-completing.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_117')

    def test_svg_118(self):
        self.LE.init_runner('test_svg_118')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathLength-positive-percentage.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_118')

    def test_svg_119(self):
        self.LE.init_runner('test_svg_119')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathLength-positive.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_119')

    def test_svg_120(self):
        self.LE.init_runner('test_svg_120')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathLength-zero-percentage.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_120')

    def test_svg_121(self):
        self.LE.init_runner('test_svg_121')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathLength-zero.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_121')

    def test_svg_122(self):
        self.LE.init_runner('test_svg_122')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathlength-circle-mutating.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_122')

    def test_svg_123(self):
        self.LE.init_runner('test_svg_123')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathlength-path-mutating.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_123')

    def test_svg_124(self):
        self.LE.init_runner('test_svg_124')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathlength-path-negative.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_124')

    def test_svg_125(self):
        self.LE.init_runner('test_svg_125')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathlength-path-zero.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_125')

    def test_svg_126(self):
        self.LE.init_runner('test_svg_126')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathlength-path.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_126')

    def test_svg_127(self):
        self.LE.init_runner('test_svg_127')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathlength-rect-mutating.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_127')

    def test_svg_128(self):
        self.LE.init_runner('test_svg_128')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/distance/pathlength-rect.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_128')

    def test_svg_129(self):
        self.LE.init_runner('test_svg_129')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/error-handling/render-until-error.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_129')

    def test_svg_130(self):
        self.LE.init_runner('test_svg_130')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/property/marker-path.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_130')

    def test_svg_131(self):
        self.LE.init_runner('test_svg_131')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/property/mpath.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_131')

    def test_svg_132(self):
        self.LE.init_runner('test_svg_132')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/path/property/priority.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_132')

    def test_svg_133(self):
        self.LE.init_runner('test_svg_133')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/meshgradient-basic-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_133')

    def test_svg_134(self):
        self.LE.init_runner('test_svg_134')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/meshgradient-basic-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_134')

    def test_svg_135(self):
        self.LE.init_runner('test_svg_135')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/meshgradient-basic-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_135')

    def test_svg_136(self):
        self.LE.init_runner('test_svg_136')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/meshgradient-basic-004.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_136')

    def test_svg_137(self):
        self.LE.init_runner('test_svg_137')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/meshgradient-basic-005.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_137')

    def test_svg_138(self):
        self.LE.init_runner('test_svg_138')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/meshgradient-bicubic-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_138')

    def test_svg_139(self):
        self.LE.init_runner('test_svg_139')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/meshgradient-complex-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_139')

    def test_svg_140(self):
        self.LE.init_runner('test_svg_140')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/pattern-inheritance-template-pattern-removed.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_140')

    def test_svg_141(self):
        self.LE.init_runner('test_svg_141')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/radialgradient-basic-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_141')

    def test_svg_142(self):
        self.LE.init_runner('test_svg_142')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/radialgradient-fully-overlapping.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_142')

    def test_svg_143(self):
        self.LE.init_runner('test_svg_143')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/pservers/reftests/stop-color-currentcolor-dynamic-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_143')

    def test_svg_144(self):
        self.LE.init_runner('test_svg_144')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/blending-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_144')

    def test_svg_145(self):
        self.LE.init_runner('test_svg_145')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/blending-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_145')

    def test_svg_146(self):
        self.LE.init_runner('test_svg_146')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/blending-svg-foreign-object.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_146')

    def test_svg_147(self):
        self.LE.init_runner('test_svg_147')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/blending-svg-root.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_147')

    def test_svg_148(self):
        self.LE.init_runner('test_svg_148')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/change-sync-for-nested-use.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_148')

    def test_svg_149(self):
        self.LE.init_runner('test_svg_149')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/filter-effects-on-pattern.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_149')

    def test_svg_150(self):
        self.LE.init_runner('test_svg_150')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/nested-svg-overflow-clip.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_150')

    def test_svg_151(self):
        self.LE.init_runner('test_svg_151')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/overflow-clip.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_151')

    def test_svg_152(self):
        self.LE.init_runner('test_svg_152')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/render/reftests/render-sync-with-font-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_152')

    def test_svg_153(self):
        self.LE.init_runner('test_svg_153')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/rendering/order/clip-path-filter-order.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_153')

    def test_svg_154(self):
        self.LE.init_runner('test_svg_154')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/rendering/order/z-index.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_154')

    def test_svg_155(self):
        self.LE.init_runner('test_svg_155')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/scripted/script-style-attribute-csp.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_155')

    def test_svg_156(self):
        self.LE.init_runner('test_svg_156')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/circle-01.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_156')

    def test_svg_157(self):
        self.LE.init_runner('test_svg_157')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-01.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_157')

    def test_svg_158(self):
        self.LE.init_runner('test_svg_158')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-02.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_158')

    def test_svg_159(self):
        self.LE.init_runner('test_svg_159')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-03.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_159')

    def test_svg_160(self):
        self.LE.init_runner('test_svg_160')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-04.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_160')

    def test_svg_161(self):
        self.LE.init_runner('test_svg_161')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-05.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_161')

    def test_svg_162(self):
        self.LE.init_runner('test_svg_162')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-06.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_162')

    def test_svg_163(self):
        self.LE.init_runner('test_svg_163')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-07.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_163')

    def test_svg_164(self):
        self.LE.init_runner('test_svg_164')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-08.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_164')

    def test_svg_165(self):
        self.LE.init_runner('test_svg_165')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/ellipse-09.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_165')

    def test_svg_166(self):
        self.LE.init_runner('test_svg_166')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/line-dasharray.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_166')

    def test_svg_167(self):
        self.LE.init_runner('test_svg_167')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/rect-01.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_167')

    def test_svg_168(self):
        self.LE.init_runner('test_svg_168')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/rect-02.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_168')

    def test_svg_169(self):
        self.LE.init_runner('test_svg_169')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/rect-03.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_169')

    def test_svg_170(self):
        self.LE.init_runner('test_svg_170')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/rect-04.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_170')

    def test_svg_171(self):
        self.LE.init_runner('test_svg_171')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/rect-05.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_171')

    def test_svg_172(self):
        self.LE.init_runner('test_svg_172')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/reftests/disabled-shapes-01.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_172')

    def test_svg_173(self):
        self.LE.init_runner('test_svg_173')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/reftests/pathlength-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_173')

    def test_svg_174(self):
        self.LE.init_runner('test_svg_174')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/reftests/pathlength-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_174')

    def test_svg_175(self):
        self.LE.init_runner('test_svg_175')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/reftests/pathlength-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_175')

    def test_svg_176(self):
        self.LE.init_runner('test_svg_176')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/shapes/reftests/polygon-with-filtered-marker.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_176')

    def test_svg_177(self):
        self.LE.init_runner('test_svg_177')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/currentScale-change-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_177')

    def test_svg_178(self):
        self.LE.init_runner('test_svg_178')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/currentScale.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_178')

    def test_svg_179(self):
        self.LE.init_runner('test_svg_179')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/nested-svg-through-display-contents.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_179')

    def test_svg_180(self):
        self.LE.init_runner('test_svg_180')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/requiredextensions-empty-string.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_180')

    def test_svg_181(self):
        self.LE.init_runner('test_svg_181')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/requiredextensions-xhtml.tentative.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_181')

    def test_svg_182(self):
        self.LE.init_runner('test_svg_182')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-a.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_182')

    def test_svg_183(self):
        self.LE.init_runner('test_svg_183')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-adopted-with-external-resource.tentative.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_183')

    def test_svg_184(self):
        self.LE.init_runner('test_svg_184')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-cross-origin.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_184')

    def test_svg_185(self):
        self.LE.init_runner('test_svg_185')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-data-url.tentative.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_185')

    def test_svg_186(self):
        self.LE.init_runner('test_svg_186')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-external-resource-with-revalidation.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_186')

    def test_svg_187(self):
        self.LE.init_runner('test_svg_187')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-inheritance-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_187')

    def test_svg_188(self):
        self.LE.init_runner('test_svg_188')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-inheritance-nth-child-of.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_188')

    def test_svg_189(self):
        self.LE.init_runner('test_svg_189')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-inheritance-nth-last-child-of.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_189')

    def test_svg_190(self):
        self.LE.init_runner('test_svg_190')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-no-tspan.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_190')

    def test_svg_191(self):
        self.LE.init_runner('test_svg_191')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-same-origin.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_191')

    def test_svg_192(self):
        self.LE.init_runner('test_svg_192')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-svg-dimensions-override-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_192')

    def test_svg_193(self):
        self.LE.init_runner('test_svg_193')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-svg-dimensions-override-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_193')

    def test_svg_194(self):
        self.LE.init_runner('test_svg_194')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-switch.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_194')

    def test_svg_195(self):
        self.LE.init_runner('test_svg_195')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-symbol-dimensions-override-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_195')

    def test_svg_196(self):
        self.LE.init_runner('test_svg_196')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/struct/reftests/use-symbol-dimensions-override-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_196')

    def test_svg_197(self):
        self.LE.init_runner('test_svg_197')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/invalidation/nth-child-of-class.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_197')

    def test_svg_198(self):
        self.LE.init_runner('test_svg_198')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/invalidation/nth-last-child-of-class.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_198')

    def test_svg_199(self):
        self.LE.init_runner('test_svg_199')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/padding-on-svg-via-img.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/img[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/img[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/img[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_199')

    def test_svg_200(self):
        self.LE.init_runner('test_svg_200')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/render/transform-box.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_200')

    def test_svg_201(self):
        self.LE.init_runner('test_svg_201')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/render/transform-origin.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_201')

    def test_svg_202(self):
        self.LE.init_runner('test_svg_202')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/render/transform.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_202')

    def test_svg_203(self):
        self.LE.init_runner('test_svg_203')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/use-element-animations.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_203')

    def test_svg_204(self):
        self.LE.init_runner('test_svg_204')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/use-element-transitions.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_204')

    def test_svg_205(self):
        self.LE.init_runner('test_svg_205')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/styling/use-element-web-animations.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="tmpl"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="tmpl"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_205')

    def test_svg_206(self):
        self.LE.init_runner('test_svg_206')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/dominant-baseline-hanging-small-font-size.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_206')

    def test_svg_207(self):
        self.LE.init_runner('test_svg_207')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/gradient-after-reposition.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_207')

    def test_svg_208(self):
        self.LE.init_runner('test_svg_208')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/lang-attribute-dynamic.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_208')

    def test_svg_209(self):
        self.LE.init_runner('test_svg_209')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/lang-attribute.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_209')

    def test_svg_210(self):
        self.LE.init_runner('test_svg_210')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/multiple-textpaths.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_210')

    def test_svg_211(self):
        self.LE.init_runner('test_svg_211')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/no-background.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_211')

    def test_svg_212(self):
        self.LE.init_runner('test_svg_212')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/no-margin-border-padding.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_212')

    def test_svg_213(self):
        self.LE.init_runner('test_svg_213')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-clipped-offscreen-move-onscreen.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_213')

    def test_svg_214(self):
        self.LE.init_runner('test_svg_214')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-complex-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_214')

    def test_svg_215(self):
        self.LE.init_runner('test_svg_215')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-complex-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_215')

    def test_svg_216(self):
        self.LE.init_runner('test_svg_216')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_216')

    def test_svg_217(self):
        self.LE.init_runner('test_svg_217')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_217')

    def test_svg_218(self):
        self.LE.init_runner('test_svg_218')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_218')

    def test_svg_219(self):
        self.LE.init_runner('test_svg_219')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-005.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_219')

    def test_svg_220(self):
        self.LE.init_runner('test_svg_220')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-006.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_220')

    def test_svg_221(self):
        self.LE.init_runner('test_svg_221')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-007.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_221')

    def test_svg_222(self):
        self.LE.init_runner('test_svg_222')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-101.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_222')

    def test_svg_223(self):
        self.LE.init_runner('test_svg_223')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-inline-size-201.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_223')

    def test_svg_224(self):
        self.LE.init_runner('test_svg_224')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-multiline-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_224')

    def test_svg_225(self):
        self.LE.init_runner('test_svg_225')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-multiline-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_225')

    def test_svg_226(self):
        self.LE.init_runner('test_svg_226')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-multiline-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_226')

    def test_svg_227(self):
        self.LE.init_runner('test_svg_227')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-shape-inside-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_227')

    def test_svg_228(self):
        self.LE.init_runner('test_svg_228')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-shape-inside-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_228')

    def test_svg_229(self):
        self.LE.init_runner('test_svg_229')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-text-anchor-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_229')

    def test_svg_230(self):
        self.LE.init_runner('test_svg_230')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-text-anchor-002.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_230')

    def test_svg_231(self):
        self.LE.init_runner('test_svg_231')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-text-anchor-003.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_231')

    def test_svg_232(self):
        self.LE.init_runner('test_svg_232')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-text-anchor-102.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_232')

    def test_svg_233(self):
        self.LE.init_runner('test_svg_233')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-text-anchor-201.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_233')

    def test_svg_234(self):
        self.LE.init_runner('test_svg_234')  # 打开runner页
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-text-anchor-202.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_234')

    def test_svg_235(self):
        self.LE.init_runner('test_svg_235')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-text-anchor-203.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_235')

    def test_svg_236(self):
        self.LE.init_runner('test_svg_236')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-transform-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_236')

    def test_svg_237(self):
        self.LE.init_runner('test_svg_237')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-transform-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_237')

    def test_svg_238(self):
        self.LE.init_runner('test_svg_238')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/text-xml-space-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_238')

    def test_svg_239(self):
        self.LE.init_runner('test_svg_239')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/textpath-shape-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_239')

    def test_svg_240(self):
        self.LE.init_runner('test_svg_240')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/textpath-side-001.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_240')

    def test_svg_241(self):
        self.LE.init_runner('test_svg_241')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/transform-dynamic-change-root.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_241')

    def test_svg_242(self):
        self.LE.init_runner('test_svg_242')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/transform-dynamic-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_242')

    def test_svg_243(self):
        self.LE.init_runner('test_svg_243')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/tspan-opacity-mixed-direction.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_243')

    def test_svg_244(self):
        self.LE.init_runner('test_svg_244')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/writing-mode-dynamic-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_244')

    def test_svg_245(self):
        self.LE.init_runner('test_svg_245')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/xml-lang-attribute-dynamic.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_245')

    def test_svg_246(self):
        self.LE.init_runner('test_svg_246')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('svg/text/reftests/xml-lang-attribute.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_svg_246')

if __name__ == '__main__':
    suite = unittest.TestSuite()  # 实例化TestSuite
    suite.addTest(Test("test_add_02"))  # 添加测试用例
    suite.addTest(Test("test_add_01"))
    runner = unittest.TextTestRunner()  # 实例化TextTestRunner
    runner.run(suite)  # 传入suite并执行测试用例
