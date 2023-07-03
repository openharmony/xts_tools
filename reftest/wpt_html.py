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
    def test_html_001(self):
        self.LE.init_runner('test_html_001')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/browsers/sandboxing/sandbox-parse-noscript.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/iframe[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/iframe[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/iframe[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/iframe[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_001')

    def test_html_002(self):
        self.LE.init_runner('test_html_002')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/drawing-text-to-the-canvas/direction-inherit-rtl.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_002')

    def test_html_003(self):
        self.LE.init_runner('test_html_003')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/drawing-text-to-the-canvas/direction-ltr.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_003')

    def test_html_004(self):
        self.LE.init_runner('test_html_004')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/drawing-text-to-the-canvas/direction-rtl.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_004')

    def test_html_005(self):
        self.LE.init_runner('test_html_005')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.endlayer.alone.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_005')

    def test_html_006(self):
        self.LE.init_runner('test_html_006')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.endlayer.unmatched.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_006')

    def test_html_007(self):
        self.LE.init_runner('test_html_007')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.alpha.filter.globalcompositeoperation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_007')

    def test_html_008(self):
        self.LE.init_runner('test_html_008')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.alpha.filter.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_008')

    def test_html_009(self):
        self.LE.init_runner('test_html_009')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.alpha.filter.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_009')

    def test_html_010(self):
        self.LE.init_runner('test_html_010')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_010')

    def test_html_011(self):
        self.LE.init_runner('test_html_011')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.alpha.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_011')

    def test_html_012(self):
        self.LE.init_runner('test_html_012')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.filter.globalcompositeoperation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_012')

    def test_html_013(self):
        self.LE.init_runner('test_html_013')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.filter.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_013')

    def test_html_014(self):
        self.LE.init_runner('test_html_014')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.filter.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_014')

    def test_html_015(self):
        self.LE.init_runner('test_html_015')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.globalcompositeoperation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_015')

    def test_html_016(self):
        self.LE.init_runner('test_html_016')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.no_global_states.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_016')

    def test_html_017(self):
        self.LE.init_runner('test_html_017')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.global-states.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_017')

    def test_html_018(self):
        self.LE.init_runner('test_html_018')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.nested.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_018')

    def test_html_019(self):
        self.LE.init_runner('test_html_019')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.restore-style.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_019')

    def test_html_020(self):
        self.LE.init_runner('test_html_020')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/layers/2d.layer.several-complex.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_020')

    def test_html_021(self):
        self.LE.init_runner('test_html_021')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/building-paths/canvas_complexshapes_arcto_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas1"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_021')

    def test_html_022(self):
        self.LE.init_runner('test_html_022')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/building-paths/canvas_complexshapes_beziercurveto_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas1"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_022')

    def test_html_023(self):
        self.LE.init_runner('test_html_023')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/compositing/canvas_compositing_globalcompositeoperation_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_023')

    def test_html_024(self):
        self.LE.init_runner('test_html_024')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/context-attributes/clearRect_alpha_false.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_024')

    def test_html_025(self):
        self.LE.init_runner('test_html_025')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/context-attributes/drawImage_alpha_false.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_025')

    def test_html_026(self):
        self.LE.init_runner('test_html_026')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/context-attributes/fillRect_alpha_false.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_026')

    def test_html_027(self):
        self.LE.init_runner('test_html_027')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/context-attributes/fill_alpha_false.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_027')

    def test_html_028(self):
        self.LE.init_runner('test_html_028')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/context-attributes/initial_color_alpha_false.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_028')

    def test_html_029(self):
        self.LE.init_runner('test_html_029')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/context-attributes/reset_color_alpha_false.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_029')

    def test_html_030(self):
        self.LE.init_runner('test_html_030')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/drawimage_canvas_self.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="dest"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="dest"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_030')

    def test_html_031(self):
        self.LE.init_runner('test_html_031')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-bitmap-orientation-none.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_031')

    def test_html_032(self):
        self.LE.init_runner('test_html_032')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-bitmap-swap-width-height-orientation-none.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.test_screenshot('/html/body/img[2]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_032')

    def test_html_033(self):
        self.LE.init_runner('test_html_033')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-bitmap-swap-width-height.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.test_screenshot('/html/body/img[2]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_033')

    def test_html_034(self):
        self.LE.init_runner('test_html_034')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-bitmap.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.test_screenshot('/html/body/img[2]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_034')

    def test_html_035(self):
        self.LE.init_runner('test_html_035')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-blob.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvasWithFileBitmap"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="img-element"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_035')

    def test_html_036(self):
        self.LE.init_runner('test_html_036')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-element-orientation-none.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.test_screenshot('/html/body/img[2]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_036')

    def test_html_037(self):
        self.LE.init_runner('test_html_037')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-element-swap-width-height-orientation-none.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.test_screenshot('/html/body/img[2]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_037')

    def test_html_038(self):
        self.LE.init_runner('test_html_038')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-element-swap-width-height.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.test_screenshot('/html/body/img[2]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_038')

    def test_html_039(self):
        self.LE.init_runner('test_html_039')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-from-element.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.test_screenshot('/html/body/img[2]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_039')

    def test_html_040(self):
        self.LE.init_runner('test_html_040')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-images-to-the-canvas/image-orientation/drawImage-with-src-rect.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="img-element"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="img-element"]', "ref")  # reference页面截图
        self.LE.test_screenshot('//*[@id="bitmap-canvas"]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_040')

    def test_html_041(self):
        self.LE.init_runner('test_html_041')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.disconnected.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_041')

    def test_html_042(self):
        self.LE.init_runner('test_html_042')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.condensed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_042')

    def test_html_043(self):
        self.LE.init_runner('test_html_043')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.expanded.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_043')

    def test_html_044(self):
        self.LE.init_runner('test_html_044')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.extra-condensed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_044')

    def test_html_045(self):
        self.LE.init_runner('test_html_045')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.extra-expanded.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_045')

    def test_html_046(self):
        self.LE.init_runner('test_html_046')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.normal.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_046')

    def test_html_047(self):
        self.LE.init_runner('test_html_047')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.semi-condensed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_047')

    def test_html_048(self):
        self.LE.init_runner('test_html_048')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.semi-expanded.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_048')

    def test_html_049(self):
        self.LE.init_runner('test_html_049')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.ultra-condensed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_049')

    def test_html_050(self):
        self.LE.init_runner('test_html_050')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/drawing-text-to-the-canvas/canvas.2d.fontStretch.ultra-expanded.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="c"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_050')

    def test_html_051(self):
        self.LE.init_runner('test_html_051')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/fill-and-stroke-styles/conic-gradient-rotation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="output"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_051')

    def test_html_052(self):
        self.LE.init_runner('test_html_052')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/fill-and-stroke-styles/conic-gradient.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="output"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_052')

    def test_html_053(self):
        self.LE.init_runner('test_html_053')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-fillStyle-opacity.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="sq-8"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_053')

    def test_html_054(self):
        self.LE.init_runner('test_html_054')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-filter-opacity-alpha-and-fillStyle.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="sq-1"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="sq-2"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="sq-3"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="sq-4"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_054')

    def test_html_055(self):
        self.LE.init_runner('test_html_055')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-filter-opacity.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="sq-8"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_055')

    def test_html_056(self):
        self.LE.init_runner('test_html_056')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-filter-shadow-and-properties-blur.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_056')

    def test_html_057(self):
        self.LE.init_runner('test_html_057')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-filter-shadow-and-properties.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_057')

    def test_html_058(self):
        self.LE.init_runner('test_html_058')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-filter-shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_058')

    def test_html_059(self):
        self.LE.init_runner('test_html_059')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-globalAlpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="sq-8"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_059')

    def test_html_060(self):
        self.LE.init_runner('test_html_060')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/canvas-opacity-blend-modes.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas-25"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.test_screenshot('//*[@id="canvas-25"]', "ref")  # test页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_060')

    def test_html_061(self):
        self.LE.init_runner('test_html_061')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/tentative/canvas-filter-object-blur.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_061')

    def test_html_062(self):
        self.LE.init_runner('test_html_062')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/tentative/canvas-filter-object-component-transfer.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_062')

    def test_html_063(self):
        self.LE.init_runner('test_html_063')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/tentative/canvas-filter-object-convolve-matrix.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/canvas[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[4]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[5]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[6]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/canvas[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/canvas[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/canvas[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/canvas[4]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/canvas[5]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/canvas[6]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_063')

    def test_html_064(self):
        self.LE.init_runner('test_html_064')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/tentative/canvas-filter-object-turbulence.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/canvas[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[4]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[5]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[6]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[7]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/canvas[8]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_064')

    def test_html_065(self):
        self.LE.init_runner('test_html_065')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/tentative/idl-conversions/canvas-filter-boolean-conversion.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_065')

    def test_html_066(self):
        self.LE.init_runner('test_html_066')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/filters/tentative/idl-conversions/canvas-filter-long-conversion.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_066')

    def test_html_067(self):
        self.LE.init_runner('test_html_067')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/imagebitmap/imageBitmap-from-imageData-no-image-rotation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="myCanvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="myCanvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_067')

    def test_html_068(self):
        self.LE.init_runner('test_html_068')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/imagebitmap/imageBitmapRendering-transferFromImageBitmap-flipped.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_068')

    def test_html_069(self):
        self.LE.init_runner('test_html_069')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/imagebitmap/imageBitmapRendering-transferFromImageBitmap-webgl.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_069')

    def test_html_070(self):
        self.LE.init_runner('test_html_070')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/imagebitmap/imageBitmapRendering-transferFromImageBitmap.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_070')

    def test_html_071(self):
        self.LE.init_runner('test_html_071')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/line-styles/canvas_linestyles_linecap_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_071')

    def test_html_072(self):
        self.LE.init_runner('test_html_072')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/line-styles/lineto_a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_072')

    def test_html_073(self):
        self.LE.init_runner('test_html_073')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/shadows/canvas_shadows_002.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas1"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_073')

    def test_html_074(self):
        self.LE.init_runner('test_html_074')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/shadows/canvas_shadows_system_colors.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_074')

    def test_html_075(self):
        self.LE.init_runner('test_html_075')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/text-styles/canvas_text_font_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas1"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_075')

    def test_html_076(self):
        self.LE.init_runner('test_html_076')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/the-canvas-state/canvas_state_restore_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_076')

    def test_html_077(self):
        self.LE.init_runner('test_html_077')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/transformations/canvas_transformations_reset_001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_077')

    def test_html_078(self):
        self.LE.init_runner('test_html_078')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/transformations/canvas_transformations_scale_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_078')

    def test_html_079(self):
        self.LE.init_runner('test_html_079')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/transformations/transform_a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/section', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_079')

    def test_html_080(self):
        self.LE.init_runner('test_html_080')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/unclosed-canvas-1.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_080')

    def test_html_081(self):
        self.LE.init_runner('test_html_081')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/unclosed-canvas-2.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/canvas', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/canvas', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_081')

    def test_html_082(self):
        self.LE.init_runner('test_html_082')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/unclosed-canvas-3.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_082')

    def test_html_083(self):
        self.LE.init_runner('test_html_083')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/element/manual/unclosed-canvas-4.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_083')

    def test_html_084(self):
        self.LE.init_runner('test_html_084')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.endlayer.alone.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_084')

    def test_html_085(self):
        self.LE.init_runner('test_html_085')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.endlayer.alone.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_085')

    def test_html_086(self):
        self.LE.init_runner('test_html_086')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.endlayer.unmatched.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_086')

    def test_html_087(self):
        self.LE.init_runner('test_html_087')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.endlayer.unmatched.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_087')

    def test_html_088(self):
        self.LE.init_runner('test_html_088')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.filter.globalcompositeoperation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_088')

    def test_html_089(self):
        self.LE.init_runner('test_html_089')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.filter.globalcompositeoperation.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_089')

    def test_html_090(self):
        self.LE.init_runner('test_html_090')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.filter.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_090')

    def test_html_091(self):
        self.LE.init_runner('test_html_091')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.filter.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_091')

    def test_html_092(self):
        self.LE.init_runner('test_html_092')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.filter.shadow.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_092')

    def test_html_093(self):
        self.LE.init_runner('test_html_093')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.filter.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_093')

    def test_html_094(self):
        self.LE.init_runner('test_html_094')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_094')

    def test_html_095(self):
        self.LE.init_runner('test_html_095')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_095')

    def test_html_096(self):
        self.LE.init_runner('test_html_096')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.shadow.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_096')

    def test_html_097(self):
        self.LE.init_runner('test_html_097')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.alpha.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_097')

    def test_html_098(self):
        self.LE.init_runner('test_html_098')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.filter.globalcompositeoperation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_098')

    def test_html_099(self):
        self.LE.init_runner('test_html_099')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.filter.globalcompositeoperation.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_099')

    def test_html_100(self):
        self.LE.init_runner('test_html_100')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.filter.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_100')

    def test_html_101(self):
        self.LE.init_runner('test_html_101')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.filter.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_101')

    def test_html_102(self):
        self.LE.init_runner('test_html_102')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.filter.shadow.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_102')

    def test_html_103(self):
        self.LE.init_runner('test_html_103')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.filter.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_103')

    def test_html_104(self):
        self.LE.init_runner('test_html_104')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.globalcompositeoperation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_104')

    def test_html_105(self):
        self.LE.init_runner('test_html_105')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.globalcompositeoperation.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_105')

    def test_html_106(self):
        self.LE.init_runner('test_html_106')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.no_global_states.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_106')

    def test_html_107(self):
        self.LE.init_runner('test_html_107')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.no_global_states.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_107')

    def test_html_108(self):
        self.LE.init_runner('test_html_108')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.shadow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_108')

    def test_html_109(self):
        self.LE.init_runner('test_html_109')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.global-states.shadow.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_109')

    def test_html_110(self):
        self.LE.init_runner('test_html_110')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.nested.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_110')

    def test_html_111(self):
        self.LE.init_runner('test_html_111')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.nested.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_111')

    def test_html_112(self):
        self.LE.init_runner('test_html_112')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.restore-style.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_112')

    def test_html_113(self):
        self.LE.init_runner('test_html_113')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.restore-style.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_113')

    def test_html_114(self):
        self.LE.init_runner('test_html_114')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.several-complex.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_114')

    def test_html_115(self):
        self.LE.init_runner('test_html_115')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/canvas/offscreen/layers/2d.layer.several-complex.w.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="canvas"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_115')

    def test_html_116(self):
        self.LE.init_runner('test_html_116')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/directionality/bdi-element-invalid-dir.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="left"]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/bdi/span[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_116')

    def test_html_117(self):
        self.LE.init_runner('test_html_117')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-EN-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_117')

    def test_html_118(self):
        self.LE.init_runner('test_html_118')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-EN-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_118')

    def test_html_119(self):
        self.LE.init_runner('test_html_119')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_119')

    def test_html_120(self):
        self.LE.init_runner('test_html_120')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-N-EN-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_120')

    def test_html_121(self):
        self.LE.init_runner('test_html_121')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-N-EN-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_121')

    def test_html_122(self):
        self.LE.init_runner('test_html_122')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-N-EN-ref.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_122')

    def test_html_123(self):
        self.LE.init_runner('test_html_123')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-N-EN.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_123')

    def test_html_124(self):
        self.LE.init_runner('test_html_124')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-N-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_124')

    def test_html_125(self):
        self.LE.init_runner('test_html_125')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-N-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_125')

    def test_html_126(self):
        self.LE.init_runner('test_html_126')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_126')

    def test_html_127(self):
        self.LE.init_runner('test_html_127')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_127')

    def test_html_128(self):
        self.LE.init_runner('test_html_128')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_128')

    def test_html_129(self):
        self.LE.init_runner('test_html_129')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-bdi-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_129')

    def test_html_130(self):
        self.LE.init_runner('test_html_130')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-bdi-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_130')

    def test_html_131(self):
        self.LE.init_runner('test_html_131')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-dir-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_131')

    def test_html_132(self):
        self.LE.init_runner('test_html_132')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-dir-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_132')

    def test_html_133(self):
        self.LE.init_runner('test_html_133')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-dir_auto-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_133')

    def test_html_134(self):
        self.LE.init_runner('test_html_134')  # 打开runner页面x
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-dir_auto-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_134')

    def test_html_135(self):
        self.LE.init_runner('test_html_135')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-script-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_135')

    def test_html_136(self):
        self.LE.init_runner('test_html_136')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-script-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_136')

    def test_html_137(self):
        self.LE.init_runner('test_html_137')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-style-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_137')

    def test_html_138(self):
        self.LE.init_runner('test_html_138')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-style-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_138')

    def test_html_139(self):
        self.LE.init_runner('test_html_139')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-textarea-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_139')

    def test_html_140(self):
        self.LE.init_runner('test_html_140')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-contained-textarea-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_140')

    def test_html_141(self):
        self.LE.init_runner('test_html_141')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-EN-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_141')

    def test_html_142(self):
        self.LE.init_runner('test_html_142')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-EN-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_142')

    def test_html_143(self):
        self.LE.init_runner('test_html_143')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_143')

    def test_html_144(self):
        self.LE.init_runner('test_html_144')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-N-EN-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_144')

    def test_html_145(self):
        self.LE.init_runner('test_html_145')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-N-EN-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_145')

    def test_html_146(self):
        self.LE.init_runner('test_html_146')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-N-EN.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_146')

    def test_html_147(self):
        self.LE.init_runner('test_html_147')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-N-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_147')

    def test_html_148(self):
        self.LE.init_runner('test_html_148')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-N-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_148')

    def test_html_149(self):
        self.LE.init_runner('test_html_149')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_149')

    def test_html_150(self):
        self.LE.init_runner('test_html_150')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-EN-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_150')

    def test_html_151(self):
        self.LE.init_runner('test_html_151')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-EN-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_151')

    def test_html_152(self):
        self.LE.init_runner('test_html_152')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_152')

    def test_html_153(self):
        self.LE.init_runner('test_html_153')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-N-EN-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_153')

    def test_html_154(self):
        self.LE.init_runner('test_html_154')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-N-EN-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_154')

    def test_html_155(self):
        self.LE.init_runner('test_html_155')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-N-EN.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_155')

    def test_html_156(self):
        self.LE.init_runner('test_html_156')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-N-L.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_156')

    def test_html_157(self):
        self.LE.init_runner('test_html_157')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-N-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_157')

    def test_html_158(self):
        self.LE.init_runner('test_html_158')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-input-script-R.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_158')

    def test_html_159(self):
        self.LE.init_runner('test_html_159')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-isolate.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_159')

    def test_html_160(self):
        self.LE.init_runner('test_html_160')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-pre-N-EN.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_160')

    def test_html_161(self):
        self.LE.init_runner('test_html_161')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-pre-N-between-Rs.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_161')

    def test_html_162(self):
        self.LE.init_runner('test_html_162')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-pre-mixed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_162')

    def test_html_163(self):
        self.LE.init_runner('test_html_163')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-textarea-N-EN.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_163')

    def test_html_164(self):
        self.LE.init_runner('test_html_164')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-textarea-N-between-Rs.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_164')

    def test_html_165(self):
        self.LE.init_runner('test_html_165')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-textarea-mixed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_165')

    def test_html_166(self):
        self.LE.init_runner('test_html_166')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-textarea-script-N-EN.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_166')

    def test_html_167(self):
        self.LE.init_runner('test_html_167')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-textarea-script-N-between-Rs.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_167')

    def test_html_168(self):
        self.LE.init_runner('test_html_168')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/dir_auto-textarea-script-mixed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_168')

    def test_html_169(self):
        self.LE.init_runner('test_html_169')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/lang-xmllang-01.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="g"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="test"]/div[7]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_169')

    def test_html_170(self):
        self.LE.init_runner('test_html_170')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/lang-xyzzy.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="test"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_170')

    def test_html_171(self):
        self.LE.init_runner('test_html_171')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/global-attributes/style-01.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]/p[12]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="test"]/p[12]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_171')

    def test_html_172(self):
        self.LE.init_runner('test_html_172')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-001a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_172')

    def test_html_173(self):
        self.LE.init_runner('test_html_173')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-001b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_173')

    def test_html_174(self):
        self.LE.init_runner('test_html_174')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-001c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_174')

    def test_html_175(self):
        self.LE.init_runner('test_html_175')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-002a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_175')

    def test_html_176(self):
        self.LE.init_runner('test_html_176')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-002b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_176')

    def test_html_177(self):
        self.LE.init_runner('test_html_177')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-002c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_177')

    def test_html_178(self):
        self.LE.init_runner('test_html_178')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-003a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_178')

    def test_html_179(self):
        self.LE.init_runner('test_html_179')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-003b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_179')

    def test_html_180(self):
        self.LE.init_runner('test_html_180')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-003c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_180')

    def test_html_181(self):
        self.LE.init_runner('test_html_181')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-004a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_181')

    def test_html_182(self):
        self.LE.init_runner('test_html_182')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-004b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_182')

    def test_html_183(self):
        self.LE.init_runner('test_html_183')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-004c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_183')

    def test_html_184(self):
        self.LE.init_runner('test_html_184')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-005a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_184')

    def test_html_185(self):
        self.LE.init_runner('test_html_185')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-005b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_185')

    def test_html_186(self):
        self.LE.init_runner('test_html_186')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-005c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_186')

    def test_html_187(self):
        self.LE.init_runner('test_html_187')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-006a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_187')

    def test_html_188(self):
        self.LE.init_runner('test_html_188')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-006b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_188')

    def test_html_189(self):
        self.LE.init_runner('test_html_189')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-006c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_189')

    def test_html_190(self):
        self.LE.init_runner('test_html_190')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-007a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_190')

    def test_html_191(self):
        self.LE.init_runner('test_html_191')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-007b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_191')

    def test_html_192(self):
        self.LE.init_runner('test_html_192')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-007c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_192')

    def test_html_193(self):
        self.LE.init_runner('test_html_193')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-008a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_193')

    def test_html_194(self):
        self.LE.init_runner('test_html_194')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-008b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_194')

    def test_html_195(self):
        self.LE.init_runner('test_html_195')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-008c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_195')

    def test_html_196(self):
        self.LE.init_runner('test_html_196')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-009a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_196')

    def test_html_197(self):
        self.LE.init_runner('test_html_197')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-009b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_197')

    def test_html_198(self):
        self.LE.init_runner('test_html_198')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/dom/elements/requirements-relating-to-bidirectional-algorithm-formatting-characters/dir-isolation-009c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_198')

    def test_html_199(self):
        self.LE.init_runner('test_html_199')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/contenteditable/contenteditable-overflow-height.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_199')

    def test_html_200(self):
        self.LE.init_runner('test_html_200')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/contenteditable/contenteditable-with-empty-block.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_200')

    def test_html_201(self):
        self.LE.init_runner('test_html_201')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_201')

    def test_html_202(self):
        self.LE.init_runner('test_html_202')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_202')

    def test_html_203(self):
        self.LE.init_runner('test_html_203')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_203')

    def test_html_204(self):
        self.LE.init_runner('test_html_204')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-004.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_204')

    def test_html_205(self):
        self.LE.init_runner('test_html_205')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-005.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_205')

    def test_html_206(self):
        self.LE.init_runner('test_html_206')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-006.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_206')

    def test_html_207(self):
        self.LE.init_runner('test_html_207')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-007.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_207')

    def test_html_208(self):
        self.LE.init_runner('test_html_208')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-008.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_208')

    def test_html_209(self):
        self.LE.init_runner('test_html_209')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-009.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_209')

    def test_html_210(self):
        self.LE.init_runner('test_html_210')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/editing-0/spelling-and-grammar-checking/spelling-markers-010.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="test"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_210')

    def test_html_211(self):
        self.LE.init_runner('test_html_211')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-1a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_211')

    def test_html_212(self):
        self.LE.init_runner('test_html_212')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-1b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_212')

    def test_html_213(self):
        self.LE.init_runner('test_html_213')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-1c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_213')

    def test_html_214(self):
        self.LE.init_runner('test_html_214')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-1d.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_214')

    def test_html_215(self):
        self.LE.init_runner('test_html_215')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-1e.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_215')

    def test_html_216(self):
        self.LE.init_runner('test_html_216')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-1f.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_216')

    def test_html_217(self):
        self.LE.init_runner('test_html_217')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-1g.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_217')

    def test_html_218(self):
        self.LE.init_runner('test_html_218')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/editing/the-hidden-attribute/hidden-2.svg')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_218')

    def test_html_219(self):
        self.LE.init_runner('test_html_219')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/infrastructure/common-microsyntaxes/colours/parsing-legacy-colour-value-ascii-case-insensitive.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_219')

    def test_html_220(self):
        self.LE.init_runner('test_html_220')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/obsolete/requirements-for-implementations/the-marquee-element-0/marquee-min-intrinsic-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/marquee', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_220')

    def test_html_221(self):
        self.LE.init_runner('test_html_221')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/bindings/the-button-element/button-type-menu-historical.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/button', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/button', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_221')

    def test_html_222(self):
        self.LE.init_runner('test_html_222')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/bindings/the-input-element-as-a-text-entry-widget/unrecognized-type-should-fallback-as-text-type.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/input[1]', "test")  # test页面截图
        self.LE.test_implicit_expression_screenshot('/html/body/input[2]', "test")  # test页面截图
        self.LE.test_implicit_expression_screenshot('/html/body/input[3]', "test")  # test页面截图
        self.LE.test_implicit_expression_screenshot('/html/body/input[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_222')

    def test_html_223(self):
        self.LE.init_runner('test_html_223')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/bindings/the-select-element-0/option-label.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select'
                                ''
                                '', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_223')

    def test_html_224(self):
        self.LE.init_runner('test_html_224')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/bindings/the-textarea-element-0/cols-default.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_224')

    def test_html_225(self):
        self.LE.init_runner('test_html_225')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/bindings/the-textarea-element-0/cols-zero.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_225')

    def test_html_226(self):
        self.LE.init_runner('test_html_226')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/bindings/the-textarea-element-0/rows-default.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_226')

    def test_html_227(self):
        self.LE.init_runner('test_html_227')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/bindings/the-textarea-element-0/rows-zero.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_227')

    def test_html_228(self):
        self.LE.init_runner('test_html_228')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/flow-content-0/div-align.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[*]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[9]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[*]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[9]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_228')

    def test_html_229(self):
        self.LE.init_runner('test_html_229')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/flow-content-0/figure.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/figure', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_229')

    def test_html_230(self):
        self.LE.init_runner('test_html_230')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/form-controls/datetime-dynamic-type-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_230')

    def test_html_231(self):
        self.LE.init_runner('test_html_231')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/form-controls/input-line-height.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[4]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[5]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[6]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[4]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[5]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[6]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_231')

    def test_html_232(self):
        self.LE.init_runner('test_html_232')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/form-controls/input-placeholder-line-height.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_232')

    def test_html_233(self):
        self.LE.init_runner('test_html_233')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/form-controls/select-sizing-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_233')

    def test_html_234(self):
        self.LE.init_runner('test_html_234')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/form-controls/text-transform.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[4]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[5]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[6]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/button', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[4]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[5]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[6]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/button', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_234')

    def test_html_235(self):
        self.LE.init_runner('test_html_235')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/form-controls/toggle-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="tests"]/textarea[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="tests"]/textarea[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_235')

    def test_html_236(self):
        self.LE.init_runner('test_html_236')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/li-type-supported-xhtml.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_236')

    def test_html_237(self):
        self.LE.init_runner('test_html_237')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/li-type-supported.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ul', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_237')

    def test_html_238(self):
        self.LE.init_runner('test_html_238')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/li-type-unsupported-lower-alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/li[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/ol/li[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/ul/li[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/li[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/ol/li[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/ul/li[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_238')

    def test_html_239(self):
        self.LE.init_runner('test_html_239')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/li-type-unsupported-lower-roman.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/li[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/ol/li[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/ul/li[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/li[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/ol/li[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/ul/li[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_239')

    def test_html_240(self):
        self.LE.init_runner('test_html_240')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/li-type-unsupported-upper-alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ul', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_240')

    def test_html_241(self):
        self.LE.init_runner('test_html_241')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/li-type-unsupported-upper-roman.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ul', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_241')

    def test_html_242(self):
        self.LE.init_runner('test_html_242')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-supported-xhtml.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_242')

    def test_html_243(self):
        self.LE.init_runner('test_html_243')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-supported.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_243')

    def test_html_244(self):
        self.LE.init_runner('test_html_244')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-circle.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_244')

    def test_html_245(self):
        self.LE.init_runner('test_html_245')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-disc.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_245')

    def test_html_246(self):
        self.LE.init_runner('test_html_246')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-invalid.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_246')

    def test_html_247(self):
        self.LE.init_runner('test_html_247')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-lower-alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_247')

    def test_html_248(self):
        self.LE.init_runner('test_html_248')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-lower-roman.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_248')

    def test_html_249(self):
        self.LE.init_runner('test_html_249')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-none.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_249')

    def test_html_250(self):
        self.LE.init_runner('test_html_250')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-round.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_250')

    def test_html_251(self):
        self.LE.init_runner('test_html_251')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-square.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_251')

    def test_html_252(self):
        self.LE.init_runner('test_html_252')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-upper-alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_252')

    def test_html_253(self):
        self.LE.init_runner('test_html_253')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ol-type-unsupported-upper-roman.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol[2]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol[2]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_253')

    def test_html_254(self):
        self.LE.init_runner('test_html_254')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-supported-xhtml.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[4]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_254')

    def test_html_255(self):
        self.LE.init_runner('test_html_255')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-supported.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_255')

    def test_html_256(self):
        self.LE.init_runner('test_html_256')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-unsupported-decimal.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul[3]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[3]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_256')

    def test_html_257(self):
        self.LE.init_runner('test_html_257')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-unsupported-invalid.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul[3]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[3]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_257')

    def test_html_258(self):
        self.LE.init_runner('test_html_258')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-unsupported-lower-alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul[3]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[3]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_258')

    def test_html_259(self):
        self.LE.init_runner('test_html_259')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-unsupported-lower-roman.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul[3]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[3]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_259')

    def test_html_260(self):
        self.LE.init_runner('test_html_260')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-unsupported-upper-alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul[3]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[3]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_260')

    def test_html_261(self):
        self.LE.init_runner('test_html_261')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/lists/ul-type-unsupported-upper-roman.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ul[3]/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ul[3]/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_261')

    def test_html_262(self):
        self.LE.init_runner('test_html_262')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/phrasing-content-0/br-wbr-content/content-property.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_262')

    def test_html_263(self):
        self.LE.init_runner('test_html_263')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/phrasing-content-0/font-element-text-decoration-color/001-a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[13]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[13]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_263')

    def test_html_264(self):
        self.LE.init_runner('test_html_264')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/phrasing-content-0/font-element-text-decoration-color/001-q.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[13]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[13]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_264')

    def test_html_265(self):
        self.LE.init_runner('test_html_265')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/phrasing-content-0/font-element-text-decoration-color/001-s.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[13]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[13]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_265')

    def test_html_266(self):
        self.LE.init_runner('test_html_266')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/phrasing-content-0/font-element-text-decoration-color/001-x.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="uppercase"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[13]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_266')

    def test_html_267(self):
        self.LE.init_runner('test_html_267')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/colgroup_valign_bottom.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_267')

    def test_html_268(self):
        self.LE.init_runner('test_html_268')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/colgroup_valign_top.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_268')

    def test_html_269(self):
        self.LE.init_runner('test_html_269')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-border-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/table[11]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[11]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_269')

    def test_html_270(self):
        self.LE.init_runner('test_html_270')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-border-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/table[9]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[9]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_270')

    def test_html_271(self):
        self.LE.init_runner('test_html_271')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-border-3q.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/table[24]/tbody', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[24]/tbody', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_271')

    def test_html_272(self):
        self.LE.init_runner('test_html_272')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-border-3s.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/table[24]/tbody', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[24]/tbody', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_272')

    def test_html_273(self):
        self.LE.init_runner('test_html_273')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-border-presentational-hints-ascii-case-insensitive.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/table[21]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[21]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_273')

    def test_html_274(self):
        self.LE.init_runner('test_html_274')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-cell-nowrap-with-fixed-width.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_274')

    def test_html_275(self):
        self.LE.init_runner('test_html_275')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-cell-width-s.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_275')

    def test_html_276(self):
        self.LE.init_runner('test_html_276')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-cell-width.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_276')

    def test_html_277(self):
        self.LE.init_runner('test_html_277')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-column-width.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_277')

    def test_html_278(self):
        self.LE.init_runner('test_html_278')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-direction.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/table[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_278')

    def test_html_279(self):
        self.LE.init_runner('test_html_279')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-layout.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/table[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_279')

    def test_html_280(self):
        self.LE.init_runner('test_html_280')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-row-direction.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/table[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_280')

    def test_html_281(self):
        self.LE.init_runner('test_html_281')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-row-group-direction.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/table[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_281')

    def test_html_282(self):
        self.LE.init_runner('test_html_282')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-row-group-height.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/table[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/table[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_282')

    def test_html_283(self):
        self.LE.init_runner('test_html_283')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-row-height.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table/tbody', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_283')

    def test_html_284(self):
        self.LE.init_runner('test_html_284')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-width-150percent.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_284')

    def test_html_285(self):
        self.LE.init_runner('test_html_285')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-width-s.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]/tbody', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]/tbody', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_285')

    def test_html_286(self):
        self.LE.init_runner('test_html_286')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/table-width.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table[1]/tbody', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/table[2]/tbody', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_286')

    def test_html_287(self):
        self.LE.init_runner('test_html_287')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/tr-transform-and-will-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table/tbody', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table/tbody', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_287')

    def test_html_288(self):
        self.LE.init_runner('test_html_288')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/tables/transformed-tbody-tr-collapsed-border.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/table/tbody', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/table/tbody', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_288')

    def test_html_289(self):
        self.LE.init_runner('test_html_289')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/absolute-fixed-in-legend.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_289')

    def test_html_290(self):
        self.LE.init_runner('test_html_290')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/empty-scrollable.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_290')

    def test_html_291(self):
        self.LE.init_runner('test_html_291')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-baseline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_291')

    def test_html_292(self):
        self.LE.init_runner('test_html_292')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-border-gap-negative-margin.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_292')

    def test_html_293(self):
        self.LE.init_runner('test_html_293')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-border-gap-position-relative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset/legend', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_293')

    def test_html_294(self):
        self.LE.init_runner('test_html_294')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-border-radius-with-alpha.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_294')

    def test_html_295(self):
        self.LE.init_runner('test_html_295')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-containing-block.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_295')

    def test_html_296(self):
        self.LE.init_runner('test_html_296')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-content-rtl.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_296')

    def test_html_297(self):
        self.LE.init_runner('test_html_297')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-dynamic-baseline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/fieldset', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_297')

    def test_html_298(self):
        self.LE.init_runner('test_html_298')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-dynamic-pseudo.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/fieldset', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_298')

    def test_html_299(self):
        self.LE.init_runner('test_html_299')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-list-item.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset/legend', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/fieldset/legend', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_299')

    def test_html_300(self):
        self.LE.init_runner('test_html_300')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-max-block-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_300')

    def test_html_301(self):
        self.LE.init_runner('test_html_301')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-overflow-hidden.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset/legend', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_301')

    def test_html_302(self):
        self.LE.init_runner('test_html_302')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-overflow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="f1"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="f2"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="f3"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_302')

    def test_html_303(self):
        self.LE.init_runner('test_html_303')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-painting-order.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset/legend', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="a"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="b"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_303')

    def test_html_304(self):
        self.LE.init_runner('test_html_304')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-transform-translatez.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="outer"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/fieldset', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_304')

    def test_html_305(self):
        self.LE.init_runner('test_html_305')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/fieldset-vertical.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_305')

    def test_html_306(self):
        self.LE.init_runner('test_html_306')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/grid-template-propagation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_306')

    def test_html_307(self):
        self.LE.init_runner('test_html_307')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-auto-margins.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[4]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/fieldset[5]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[5]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_307')

    def test_html_308(self):
        self.LE.init_runner('test_html_308')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-block-margins-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/f[3]/div[8]/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/f[3]/div[8]/span', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_308')

    def test_html_309(self):
        self.LE.init_runner('test_html_309')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-block-margins.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_309')

    def test_html_310(self):
        self.LE.init_runner('test_html_310')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-display-none-rendering.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_310')

    def test_html_311(self):
        self.LE.init_runner('test_html_311')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-display-rendering.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset[24]/legend/span[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[24]/span[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_311')

    def test_html_312(self):
        self.LE.init_runner('test_html_312')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-float.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_312')

    def test_html_313(self):
        self.LE.init_runner('test_html_313')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-in-slot.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="host"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/fieldset', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_313')

    def test_html_314(self):
        self.LE.init_runner('test_html_314')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-list-item-numbering.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_314')

    def test_html_315(self):
        self.LE.init_runner('test_html_315')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-list-item.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset/legend', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_315')

    def test_html_316(self):
        self.LE.init_runner('test_html_316')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-painting-order.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset/legend/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_316')

    def test_html_317(self):
        self.LE.init_runner('test_html_317')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-position-relative-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="fieldset2"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="fieldset2"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_317')

    def test_html_318(self):
        self.LE.init_runner('test_html_318')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-position-relative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_318')

    def test_html_319(self):
        self.LE.init_runner('test_html_319')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/legend-tall.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_319')

    def test_html_320(self):
        self.LE.init_runner('test_html_320')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-fieldset-and-legend-elements/sticky-content.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/fieldset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_320')

    def test_html_321(self):
        self.LE.init_runner('test_html_321')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-frameset-and-frame-elements/different-writing-modes.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/frameset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/frameset', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_321')

    def test_html_322(self):
        self.LE.init_runner('test_html_322')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-frameset-and-frame-elements/frameset-visibility-hidden.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_322')

    def test_html_323(self):
        self.LE.init_runner('test_html_323')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-frameset-and-frame-elements/large-cols-abssize.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/frameset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_323')

    def test_html_324(self):
        self.LE.init_runner('test_html_324')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-frameset-and-frame-elements/large-cols-percentage.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/frameset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_324')

    def test_html_325(self):
        self.LE.init_runner('test_html_325')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-frameset-and-frame-elements/large-rows-abssize.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/frameset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_325')

    def test_html_326(self):
        self.LE.init_runner('test_html_326')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-frameset-and-frame-elements/large-rows-percentage.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/frameset', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_326')

    def test_html_327(self):
        self.LE.init_runner('test_html_327')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-hr-element-0/align.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/hr[10]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[10]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_327')

    def test_html_328(self):
        self.LE.init_runner('test_html_328')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-hr-element-0/color.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/hr[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/hr[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/hr[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/hr[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_328')

    def test_html_329(self):
        self.LE.init_runner('test_html_329')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-hr-element-0/width.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/hr[11]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[11]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_329')

    def test_html_330(self):
        self.LE.init_runner('test_html_330')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_330')

    def test_html_331(self):
        self.LE.init_runner('test_html_331')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_331')

    def test_html_332(self):
        self.LE.init_runner('test_html_332')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_332')

    def test_html_333(self):
        self.LE.init_runner('test_html_333')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1d.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_333')

    def test_html_334(self):
        self.LE.init_runner('test_html_334')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1e.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_334')

    def test_html_335(self):
        self.LE.init_runner('test_html_335')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1f.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_335')

    def test_html_336(self):
        self.LE.init_runner('test_html_336')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1g.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_336')

    def test_html_337(self):
        self.LE.init_runner('test_html_337')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1h.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_337')

    def test_html_338(self):
        self.LE.init_runner('test_html_338')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1i.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_338')

    def test_html_339(self):
        self.LE.init_runner('test_html_339')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1j.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_339')

    def test_html_340(self):
        self.LE.init_runner('test_html_340')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1k.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_340')

    def test_html_341(self):
        self.LE.init_runner('test_html_341')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-1l.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_341')

    def test_html_342(self):
        self.LE.init_runner('test_html_342')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_342')

    def test_html_343(self):
        self.LE.init_runner('test_html_343')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_343')

    def test_html_344(self):
        self.LE.init_runner('test_html_344')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_344')

    def test_html_345(self):
        self.LE.init_runner('test_html_345')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2d.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_345')

    def test_html_346(self):
        self.LE.init_runner('test_html_346')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2e.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_346')

    def test_html_347(self):
        self.LE.init_runner('test_html_347')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2f.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_347')

    def test_html_348(self):
        self.LE.init_runner('test_html_348')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2g.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_348')

    def test_html_349(self):
        self.LE.init_runner('test_html_349')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2h.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_349')

    def test_html_350(self):
        self.LE.init_runner('test_html_350')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2i.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_350')

    def test_html_351(self):
        self.LE.init_runner('test_html_351')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2j.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_351')

    def test_html_352(self):
        self.LE.init_runner('test_html_352')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2k.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_352')

    def test_html_353(self):
        self.LE.init_runner('test_html_353')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body-margin-2l.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_353')

    def test_html_354(self):
        self.LE.init_runner('test_html_354')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/body_text_00ffff.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_354')

    def test_html_355(self):
        self.LE.init_runner('test_html_355')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/iframe-scrolling-attribute-values.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe[11]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe[11]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_355')

    def test_html_356(self):
        self.LE.init_runner('test_html_356')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/non-replaced-elements/the-page/iframe-scrolling-attribute.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/iframe[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/iframe[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_356')

    def test_html_357(self):
        self.LE.init_runner('test_html_357')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/img-dim.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[5]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[5]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_357')

    def test_html_358(self):
        self.LE.init_runner('test_html_358')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/img_border_percent.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_358')

    def test_html_359(self):
        self.LE.init_runner('test_html_359')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/input-align-right-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_359')

    def test_html_360(self):
        self.LE.init_runner('test_html_360')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/input-align-right-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_360')

    def test_html_361(self):
        self.LE.init_runner('test_html_361')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/input-image-inline-alt.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_361')

    def test_html_362(self):
        self.LE.init_runner('test_html_362')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/input-type-change-from-image-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_362')

    def test_html_363(self):
        self.LE.init_runner('test_html_363')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/number-placeholder-right-aligned.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_363')

    def test_html_364(self):
        self.LE.init_runner('test_html_364')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/object_border_perc.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_364')

    def test_html_365(self):
        self.LE.init_runner('test_html_365')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/attributes-for-embedded-content-and-images/object_border_pixel.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_365')

    def test_html_366(self):
        self.LE.init_runner('test_html_366')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content/change-src-while-not-displayed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="embed"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/embed', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_366')

    def test_html_367(self):
        self.LE.init_runner('test_html_367')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content/cross-domain-iframe-in-multicol.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="myframe"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="myframe"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_367')

    def test_html_368(self):
        self.LE.init_runner('test_html_368')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content/cross-domain-iframe.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="myframe"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_368')

    def test_html_369(self):
        self.LE.init_runner('test_html_369')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content/object-fallback-text-decoration.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/object', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/span', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_369')

    def test_html_370(self):
        self.LE.init_runner('test_html_370')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content/tall-cross-domain-iframe-in-scrolled.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="myframe"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="myframe"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_370')

    def test_html_371(self):
        self.LE.init_runner('test_html_371')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content/video-controls-vertical-writing-mode.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/video', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_371')

    def test_html_372(self):
        self.LE.init_runner('test_html_372')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content-rendering-rules/audio-controls-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/audio', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_372')

    def test_html_373(self):
        self.LE.init_runner('test_html_373')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content-rendering-rules/audio-controls-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="target"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_373')

    def test_html_374(self):
        self.LE.init_runner('test_html_374')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content-rendering-rules/audio-without-controls.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_374')

    def test_html_375(self):
        self.LE.init_runner('test_html_375')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content-rendering-rules/canvas-fallback.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_375')

    def test_html_376(self):
        self.LE.init_runner('test_html_376')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content-rendering-rules/canvas-update-with-border-object-fit.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_376')

    def test_html_377(self):
        self.LE.init_runner('test_html_377')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content-rendering-rules/canvas_scale.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/canvas[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[1]/canvas[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]/canvas[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]/canvas[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/span[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[1]/span[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]/span[1]', "ref")  # reference页面截图
        self.LE.ref_implicit_expression_screenshot('/html/body/div[2]/span[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_377')

    def test_html_378(self):
        self.LE.init_runner('test_html_378')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/embedded-content-rendering-rules/canvas_without_context_a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/canvas', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_378')

    def test_html_379(self):
        self.LE.init_runner('test_html_379')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/images/blocked-by-csp.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_379')

    def test_html_380(self):
        self.LE.init_runner('test_html_380')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/images/input-image-content.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_380')

    def test_html_381(self):
        self.LE.init_runner('test_html_381')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/images/space.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/p[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/p[4]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/p[5]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/p[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/p[4]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/p[5]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_381')

    def test_html_382(self):
        self.LE.init_runner('test_html_382')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-option-element/option-with-br.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/pre', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/pre', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_382')

    def test_html_383(self):
        self.LE.init_runner('test_html_383')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-option-element/select-multiple-covered-by-abspos.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_383')

    def test_html_384(self):
        self.LE.init_runner('test_html_384')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-1-block-size-001-ref.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/button[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/button[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_384')

    def test_html_385(self):
        self.LE.init_runner('test_html_385')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-1-block-size-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/button[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/button[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_385')

    def test_html_386(self):
        self.LE.init_runner('test_html_386')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-1-block-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_386')

    def test_html_387(self):
        self.LE.init_runner('test_html_387')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-1-line-height.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_387')

    def test_html_388(self):
        self.LE.init_runner('test_html_388')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-empty.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/table[2]/tbody/tr/td[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/table[2]/tbody/tr/td[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_388')

    def test_html_389(self):
        self.LE.init_runner('test_html_389')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-intrinsic-option-font-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_389')

    def test_html_390(self):
        self.LE.init_runner('test_html_390')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-intrinsic-text-transform.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_390')

    def test_html_391(self):
        self.LE.init_runner('test_html_391')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-select-element/select-multiple-re-add-option-via-document-fragment.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="sel"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_391')

    def test_html_392(self):
        self.LE.init_runner('test_html_392')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-textarea-element/textarea-padding-bend-overlaps-content-001.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/textarea[10]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/textarea[10]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_392')

    def test_html_393(self):
        self.LE.init_runner('test_html_393')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-textarea-element/textarea-padding-bstart-moves-content-001.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/textarea[10]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/textarea[10]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_393')

    def test_html_394(self):
        self.LE.init_runner('test_html_394')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-textarea-element/textarea-padding-iend-overlaps-content-001.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/textarea[10]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/textarea[10]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_394')

    def test_html_395(self):
        self.LE.init_runner('test_html_395')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/replaced-elements/the-textarea-element/textarea-padding-istart-moves-content-001.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/textarea[10]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/textarea[10]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_395')

    def test_html_396(self):
        self.LE.init_runner('test_html_396')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-css-user-agent-style-sheet-and-presentational-hints/body-bgcolor-attribute-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_396')

    def test_html_397(self):
        self.LE.init_runner('test_html_397')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/details-after.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/details', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/details', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_397')

    def test_html_398(self):
        self.LE.init_runner('test_html_398')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/details-before.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/details', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/details', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_398')

    def test_html_399(self):
        self.LE.init_runner('test_html_399')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/details-display-property-is-ignored.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/details', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/details', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_399')

    def test_html_400(self):
        self.LE.init_runner('test_html_400')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/details-revert.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/details[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/details[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/details[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/details[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_400')

    def test_html_401(self):
        self.LE.init_runner('test_html_401')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-display-flex.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/summary[8]/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[7]/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_401')

    def test_html_402(self):
        self.LE.init_runner('test_html_402')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-display-grid.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/summary/div[6]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div/div[6]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_402')

    def test_html_403(self):
        self.LE.init_runner('test_html_403')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-display-inline-flex.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/summary[8]/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[7]/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_403')

    def test_html_404(self):
        self.LE.init_runner('test_html_404')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-display-inline-grid.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/summary/div[6]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div/div[6]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_404')

    def test_html_405(self):
        self.LE.init_runner('test_html_405')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-display-list-item-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/details[1]/summary', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/details[2]/summary', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/details[3]/summary', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/details[4]/summary', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/details[1]/summary', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/details[2]/summary', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/details[3]/summary', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/details[4]/summary', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_405')

    def test_html_406(self):
        self.LE.init_runner('test_html_406')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-display-list-item-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/details/summary', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_406')

    def test_html_407(self):
        self.LE.init_runner('test_html_407')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-in-ol.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol[2]/li[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol[2]/li[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_407')

    def test_html_408(self):
        self.LE.init_runner('test_html_408')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/the-details-element/summary-text-decoration.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/details/summary', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_408')

    def test_html_409(self):
        self.LE.init_runner('test_html_409')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/appearance/appearance-animation-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="input"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_409')

    def test_html_410(self):
        self.LE.init_runner('test_html_410')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/appearance/appearance-animation-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="input"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_410')

    def test_html_411(self):
        self.LE.init_runner('test_html_411')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/appearance/appearance-transition-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="input"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_411')

    def test_html_412(self):
        self.LE.init_runner('test_html_412')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/appearance/appearance-transition-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="input"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_412')

    def test_html_413(self):
        self.LE.init_runner('test_html_413')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/appearance/appearance-transition-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="input"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_413')

    def test_html_414(self):
        self.LE.init_runner('test_html_414')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/button-layout/anonymous-button-content-box.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[3]/button[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[3]/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_414')

    def test_html_415(self):
        self.LE.init_runner('test_html_415')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/button-layout/inline-level.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/p[5]/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[5]/button', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_415')

    def test_html_416(self):
        self.LE.init_runner('test_html_416')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/button-layout/input-type-button-newline-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_416')

    def test_html_417(self):
        self.LE.init_runner('test_html_417')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/button-layout/input-type-button-newline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_417')

    def test_html_418(self):
        self.LE.init_runner('test_html_418')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/button-layout/propagate-text-decoration.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[2]/u/button', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]/u/input', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[4]/u/button', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[4]/u/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[2]/button[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]/button[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[4]/button[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[4]/button[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_418')

    def test_html_419(self):
        self.LE.init_runner('test_html_419')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/input-checkbox-disabled-checked.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_419')

    def test_html_420(self):
        self.LE.init_runner('test_html_420')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/input-date-baseline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_420')

    def test_html_421(self):
        self.LE.init_runner('test_html_421')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/input-date-content-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_421')

    def test_html_422(self):
        self.LE.init_runner('test_html_422')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/input-radio-disabled-checked.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_422')

    def test_html_423(self):
        self.LE.init_runner('test_html_423')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/input-time-content-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/input[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_423')

    def test_html_424(self):
        self.LE.init_runner('test_html_424')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-add-label-quirks.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_424')

    def test_html_425(self):
        self.LE.init_runner('test_html_425')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-add-label.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_425')

    def test_html_426(self):
        self.LE.init_runner('test_html_426')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-checked-styling.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="select"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="select"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_426')

    def test_html_427(self):
        self.LE.init_runner('test_html_427')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-empty-label-to-empty-string.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_427')

    def test_html_428(self):
        self.LE.init_runner('test_html_428')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-empty-label.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_428')

    def test_html_429(self):
        self.LE.init_runner('test_html_429')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-label-and-text.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_429')

    def test_html_430(self):
        self.LE.init_runner('test_html_430')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-only-label.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_430')

    def test_html_431(self):
        self.LE.init_runner('test_html_431')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/option-rm-label.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_431')

    def test_html_432(self):
        self.LE.init_runner('test_html_432')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/select-invalidation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="select"]/option[1]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="select"]/option[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="select"]/option[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="select"]/option[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_432')

    def test_html_433(self):
        self.LE.init_runner('test_html_433')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/select-size-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select/option[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select/option[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select/option[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select/option[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select/option[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select/option[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_433')

    def test_html_434(self):
        self.LE.init_runner('test_html_434')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/rendering/widgets/the-select-element/select-size-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/select/option[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select/option[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/select/option[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select/option[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select/option[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select/option[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_434')

    def test_html_435(self):
        self.LE.init_runner('test_html_435')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-link-element/link-rel-attribute-ascii-case-insensitive.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_435')

    def test_html_436(self):
        self.LE.init_runner('test_html_436')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-link-element/link-type-attribute.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_436')

    def test_html_437(self):
        self.LE.init_runner('test_html_437')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-link-element/stylesheet-change-href.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_437')

    def test_html_438(self):
        self.LE.init_runner('test_html_438')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-link-element/stylesheet-empty-href.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_438')

    def test_html_439(self):
        self.LE.init_runner('test_html_439')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-link-element/stylesheet-media.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_439')

    def test_html_440(self):
        self.LE.init_runner('test_html_440')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-link-element/stylesheet-with-base.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_440')

    def test_html_441(self):
        self.LE.init_runner('test_html_441')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-style-element/html_style_in_comment.xhtml')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_file_screenshot("test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_441')

    def test_html_442(self):
        self.LE.init_runner('test_html_442')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/document-metadata/the-style-element/update-style-block-ascii-case-insensitive.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="c"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_442')

    def test_html_443(self):
        self.LE.init_runner('test_html_443')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/media-elements/track/track-element/track-cue-rendering-after-controls-added.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/video', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_443')

    def test_html_444(self):
        self.LE.init_runner('test_html_444')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/media-elements/track/track-element/track-cue-rendering-after-controls-removed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/video', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_444')

    def test_html_445(self):
        self.LE.init_runner('test_html_445')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/media-elements/track/track-element/track-cue-rendering-line-doesnt-fit.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_445')

    def test_html_446(self):
        self.LE.init_runner('test_html_446')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/media-elements/track/track-element/track-cue-rendering-transformed-video.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_446')

    def test_html_447(self):
        self.LE.init_runner('test_html_447')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/media-elements/track/track-element/track-webvtt-non-snap-to-lines.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_447')

    def test_html_448(self):
        self.LE.init_runner('test_html_448')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/media-elements/track/track-element/track-webvtt-two-cue-layout-after-first-end.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/video', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_448')

    def test_html_449(self):
        self.LE.init_runner('test_html_449')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-audio-element/audio_001.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="testcontent"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="testcontent"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_449')

    def test_html_450(self):
        self.LE.init_runner('test_html_450')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-audio-element/audio_002.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="testcontent"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_450')

    def test_html_451(self):
        self.LE.init_runner('test_html_451')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-embed-element/embed-hidden-attribute.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/embed[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/embed', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_451')

    def test_html_452(self):
        self.LE.init_runner('test_html_452')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-embed-element/embed-represent-nothing-01.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_452')

    def test_html_453(self):
        self.LE.init_runner('test_html_453')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-embed-element/embed-represent-nothing-02.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_453')

    def test_html_454(self):
        self.LE.init_runner('test_html_454')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-embed-element/embed-represent-nothing-03.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_454')

    def test_html_455(self):
        self.LE.init_runner('test_html_455')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-embed-element/embed-represent-nothing-04.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_455')

    def test_html_456(self):
        self.LE.init_runner('test_html_456')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-iframe-element/iframe-initially-empty-is-updated.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_456')

    def test_html_457(self):
        self.LE.init_runner('test_html_457')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-iframe-element/iframe-modify-scrolling-attr-to-yes.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_457')

    def test_html_458(self):
        self.LE.init_runner('test_html_458')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-iframe-element/iframe-with-base.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_458')

    def test_html_459(self):
        self.LE.init_runner('test_html_459')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/adopt-from-image-document.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_459')

    def test_html_460(self):
        self.LE.init_runner('test_html_460')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/available-images.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_460')

    def test_html_461(self):
        self.LE.init_runner('test_html_461')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/document-adopt-base-url.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_461')

    def test_html_462(self):
        self.LE.init_runner('test_html_462')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/document-base-url.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_462')

    def test_html_463(self):
        self.LE.init_runner('test_html_463')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/image-compositing-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="change"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="original"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="change"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_463')

    def test_html_464(self):
        self.LE.init_runner('test_html_464')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/image-compositing-large-scale-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="change"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="placeholder"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="change"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="placeholder"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_464')

    def test_html_465(self):
        self.LE.init_runner('test_html_465')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/image-loading-lazy-clip-path.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="target"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_465')

    def test_html_466(self):
        self.LE.init_runner('test_html_466')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/image-loading-lazy-data-url-to-https.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="image"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_466')

    def test_html_467(self):
        self.LE.init_runner('test_html_467')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/image-loading-lazy-slow-aspect-ratio.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="target"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/span', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_467')

    def test_html_468(self):
        self.LE.init_runner('test_html_468')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/image-loading-lazy-slow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="target"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/span', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_468')

    def test_html_469(self):
        self.LE.init_runner('test_html_469')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/image-loading-subpixel-clip.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[2]/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_469')

    def test_html_470(self):
        self.LE.init_runner('test_html_470')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/img-with-containment-and-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_470')

    def test_html_471(self):
        self.LE.init_runner('test_html_471')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/sizes/sizes-dynamic-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_471')

    def test_html_472(self):
        self.LE.init_runner('test_html_472')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/sizes/sizes-dynamic-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_472')

    def test_html_473(self):
        self.LE.init_runner('test_html_473')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-img-element/svg-img-with-external-stylesheet.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_473')

    def test_html_474(self):
        self.LE.init_runner('test_html_474')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-object-element/object-param-url.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[6]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[6]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_474')

    def test_html_475(self):
        self.LE.init_runner('test_html_475')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-video-element/video-poster-shown-preload-auto.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/video', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_475')

    def test_html_476(self):
        self.LE.init_runner('test_html_476')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-video-element/video_content_image.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="testcontent"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="testcontent"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_476')

    def test_html_477(self):
        self.LE.init_runner('test_html_477')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-video-element/video_content_text.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="testcontent"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="testcontent"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_477')

    def test_html_478(self):
        self.LE.init_runner('test_html_478')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-video-element/video_dynamic_poster_absolute.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="video0"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_478')

    def test_html_479(self):
        self.LE.init_runner('test_html_479')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-video-element/video_dynamic_poster_relative.htm')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="video0"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_479')

    def test_html_480(self):
        self.LE.init_runner('test_html_480')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/embedded-content/the-video-element/video_initially_paused.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="video"]/video', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_480')

    def test_html_481(self):
        self.LE.init_runner('test_html_481')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/image01.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="image"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_481')

    def test_html_482(self):
        self.LE.init_runner('test_html_482')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/multiline-placeholder-cr.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/input[2]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="dynamic"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_482')

    def test_html_483(self):
        self.LE.init_runner('test_html_483')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/multiline-placeholder-crlf.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/input[2]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="dynamic"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_483')

    def test_html_484(self):
        self.LE.init_runner('test_html_484')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/multiline-placeholder.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/input[2]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="dynamic"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/input[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_484')

    def test_html_485(self):
        self.LE.init_runner('test_html_485')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/placeholder-update.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="app"]/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_485')

    def test_html_486(self):
        self.LE.init_runner('test_html_486')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-intrinsic-size.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/input[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/input[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_486')

    def test_html_487(self):
        self.LE.init_runner('test_html_487')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-list-added-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_487')

    def test_html_488(self):
        self.LE.init_runner('test_html_488')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-list-change-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_488')

    def test_html_489(self):
        self.LE.init_runner('test_html_489')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-list-duplicate-id-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_489')

    def test_html_490(self):
        self.LE.init_runner('test_html_490')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-list-nonexistent.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_490')

    def test_html_491(self):
        self.LE.init_runner('test_html_491')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-option-add-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_491')

    def test_html_492(self):
        self.LE.init_runner('test_html_492')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-option-remove-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_492')

    def test_html_493(self):
        self.LE.init_runner('test_html_493')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-option-value-change-repaint.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_493')

    def test_html_494(self):
        self.LE.init_runner('test_html_494')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-setattribute-value.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_494')

    def test_html_495(self):
        self.LE.init_runner('test_html_495')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-tick-marks-01.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_495')

    def test_html_496(self):
        self.LE.init_runner('test_html_496')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-tick-marks-02.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_496')

    def test_html_497(self):
        self.LE.init_runner('test_html_497')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-tick-marks-03.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_497')

    def test_html_498(self):
        self.LE.init_runner('test_html_498')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-tick-marks-04.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_498')

    def test_html_499(self):
        self.LE.init_runner('test_html_499')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-input-element/range-tick-marks-05.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/input', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_499')

    def test_html_500(self):
        self.LE.init_runner('test_html_500')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-meter-element/meter-min-rendering.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/meter', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/meter', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_500')

    def test_html_501(self):
        self.LE.init_runner('test_html_501')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-option-element/dynamic-content-change-rendering.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="dropdown"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="listbox"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/select[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_501')

    def test_html_502(self):
        self.LE.init_runner('test_html_502')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-select-element/reset-algorithm-rendering.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/form/select[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/form/select[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/form/select[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/form/select[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/form/select[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/form/select[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_502')

    def test_html_503(self):
        self.LE.init_runner('test_html_503')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-marker-part.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/selectmenu', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_503')

    def test_html_504(self):
        self.LE.init_runner('test_html_504')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-marker-slot.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/selectmenu', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_504')

    def test_html_505(self):
        self.LE.init_runner('test_html_505')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-option-arbitrary-content-displayed.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="selectMenu0"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="selectMenu0"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="fakelistbox"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_505')

    def test_html_506(self):
        self.LE.init_runner('test_html_506')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-option-arbitrary-content-not-displayed.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_506')

    def test_html_507(self):
        self.LE.init_runner('test_html_507')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-selected-value-behavior.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/selectmenu', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_507')

    def test_html_508(self):
        self.LE.init_runner('test_html_508')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-selected-value-part.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/selectmenu', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/button', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_508')

    def test_html_509(self):
        self.LE.init_runner('test_html_509')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-selected-value-slot.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_509')

    def test_html_510(self):
        self.LE.init_runner('test_html_510')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-writingmode-lr.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/selectmenu', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/selectmenu', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_510')

    def test_html_511(self):
        self.LE.init_runner('test_html_511')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-selectmenu-element/selectmenu-writingmode-rl.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/selectmenu', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/selectmenu', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_511')

    def test_html_512(self):
        self.LE.init_runner('test_html_512')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-textarea-element/multiline-placeholder-cr.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/textarea[2]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="dynamic"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/textarea[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/textarea[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_512')

    def test_html_513(self):
        self.LE.init_runner('test_html_513')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-textarea-element/multiline-placeholder-crlf.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/textarea[2]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="dynamic"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/textarea[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/textarea[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_513')

    def test_html_514(self):
        self.LE.init_runner('test_html_514')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-textarea-element/multiline-placeholder.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/textarea[2]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="dynamic"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/textarea[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/textarea[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_514')

    def test_html_515(self):
        self.LE.init_runner('test_html_515')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-textarea-element/placeholder-white-space.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_515')

    def test_html_516(self):
        self.LE.init_runner('test_html_516')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-textarea-element/textarea-newline-bidi.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[2]/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_516')

    def test_html_517(self):
        self.LE.init_runner('test_html_517')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-textarea-element/wrap-reflect-1a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_517')

    def test_html_518(self):
        self.LE.init_runner('test_html_518')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/forms/the-textarea-element/wrap-reflect-1b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/textarea', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/textarea', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_518')

    def test_html_519(self):
        self.LE.init_runner('test_html_519')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/menu[2]/li[2]/menu/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/menu[2]/li[2]/menu/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_519')

    def test_html_520(self):
        self.LE.init_runner('test_html_520')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/span/ol/li[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/span/span/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_520')

    def test_html_521(self):
        self.LE.init_runner('test_html_521')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="item"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="item"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_521')

    def test_html_522(self):
        self.LE.init_runner('test_html_522')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-004.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[2]/div/li', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[2]/div/li', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_522')

    def test_html_523(self):
        self.LE.init_runner('test_html_523')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-005.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol/div[3]/div/li', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/div[3]/div/li', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_523')

    def test_html_524(self):
        self.LE.init_runner('test_html_524')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-006.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[3]/div/li', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]/div/li', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_524')

    def test_html_525(self):
        self.LE.init_runner('test_html_525')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-007.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol/div[2]/div/li', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[2]/div/li', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_525')

    def test_html_526(self):
        self.LE.init_runner('test_html_526')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-display-list-item.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol/div[5]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol[2]/li[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_526')

    def test_html_527(self):
        self.LE.init_runner('test_html_527')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-list-owner-menu.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/menu/menu/li[2]/menu/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/ol[2]/li[2]/ol/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_527')

    def test_html_528(self):
        self.LE.init_runner('test_html_528')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-list-owner-mixed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ul/ol/li[2]/dir/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/ol[2]/li[2]/dir/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_528')

    def test_html_529(self):
        self.LE.init_runner('test_html_529')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-list-owner-not-dir.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol/dir/li[2]/dir/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/dir[2]/li[2]/dir/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_529')

    def test_html_530(self):
        self.LE.init_runner('test_html_530')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-list-owner-ol.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol/ol/li[2]/ol/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/ol[2]/li[2]/ol/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_530')

    def test_html_531(self):
        self.LE.init_runner('test_html_531')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-list-owner-parent.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div/li[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/li[5]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_531')

    def test_html_532(self):
        self.LE.init_runner('test_html_532')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-list-owner-skip-no-boxes.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol/ol/li[2]/ol/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/li[10]/ol/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_532')

    def test_html_533(self):
        self.LE.init_runner('test_html_533')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-list-owner-ul.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ul/ul/li[2]/ul/li[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol/ol[2]/li[2]/ol/li[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_533')

    def test_html_534(self):
        self.LE.init_runner('test_html_534')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-li-element/grouping-li-reftest-not-being-rendered.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/ol', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_534')

    def test_html_535(self):
        self.LE.init_runner('test_html_535')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/grouping-ol-rev-reftest-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/span/ol[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/span/span[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_535')

    def test_html_536(self):
        self.LE.init_runner('test_html_536')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/grouping-ol-start-reftest-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/span/ol[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/span/span[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_536')

    def test_html_537(self):
        self.LE.init_runner('test_html_537')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/grouping-ol-start-reftest-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/span/ol[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/span/span[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_537')

    def test_html_538(self):
        self.LE.init_runner('test_html_538')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/grouping-ol-type-reftest-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/span/ol[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/span/span[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_538')

    def test_html_539(self):
        self.LE.init_runner('test_html_539')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/grouping-ol-type-reftest-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/span/ol[5]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/span/span[5]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_539')

    def test_html_540(self):
        self.LE.init_runner('test_html_540')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/grouping-ol-type-reftest-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/span/ol[8]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/span/span[8]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_540')

    def test_html_541(self):
        self.LE.init_runner('test_html_541')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/reversed-1a.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_541')

    def test_html_542(self):
        self.LE.init_runner('test_html_542')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/reversed-1b.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="x"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_542')

    def test_html_543(self):
        self.LE.init_runner('test_html_543')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/reversed-1c.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_543')

    def test_html_544(self):
        self.LE.init_runner('test_html_544')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/reversed-1d.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_544')

    def test_html_545(self):
        self.LE.init_runner('test_html_545')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/reversed-1e.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_545')

    def test_html_546(self):
        self.LE.init_runner('test_html_546')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-ol-element/reversed-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/ol', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/ol', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_546')

    def test_html_547(self):
        self.LE.init_runner('test_html_547')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-pre-element/grouping-pre-reftest-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/pre', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/pre', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_547')

    def test_html_548(self):
        self.LE.init_runner('test_html_548')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/grouping-content/the-pre-element/pre-newline-bidi.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_548')

    def test_html_549(self):
        self.LE.init_runner('test_html_549')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-details-element/details-add-summary.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="detailsid"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/details', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_549')

    def test_html_550(self):
        self.LE.init_runner('test_html_550')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/backdrop-descendant-selector.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="backdrop-ancestor"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_550')

    def test_html_551(self):
        self.LE.init_runner('test_html_551')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/backdrop-does-not-inherit.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="backdrop"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_551')

    def test_html_552(self):
        self.LE.init_runner('test_html_552')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/backdrop-dynamic-display-none.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_552')

    def test_html_553(self):
        self.LE.init_runner('test_html_553')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/backdrop-dynamic-style-change.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_553')

    def test_html_554(self):
        self.LE.init_runner('test_html_554')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/backdrop-in-flow.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="backdrop"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_554')

    def test_html_555(self):
        self.LE.init_runner('test_html_555')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/backdrop-stacking-order.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="top"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="middle"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bottom"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="bottom-backdrop"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="bottom"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="middle-backdrop"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="middle"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="top-backdrop"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="top"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_555')

    def test_html_556(self):
        self.LE.init_runner('test_html_556')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/dialogs-with-no-backdrop.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_556')

    def test_html_557(self):
        self.LE.init_runner('test_html_557')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/dont-share-style-to-top-layer.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/dialog[1]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="modal"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="non-modal"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="modal"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_557')

    def test_html_558(self):
        self.LE.init_runner('test_html_558')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/element-removed-from-top-layer-has-original-position.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_558')

    def test_html_559(self):
        self.LE.init_runner('test_html_559')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/fixed-position-child-with-contain-ancestor.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="dialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_559')

    def test_html_560(self):
        self.LE.init_runner('test_html_560')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/fixed-position-child-with-fo-ancestor.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="dialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_560')

    def test_html_561(self):
        self.LE.init_runner('test_html_561')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/fixed-position-child-with-transformed-ancestor.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="dialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_561')

    def test_html_562(self):
        self.LE.init_runner('test_html_562')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/fixed-position-child-with-will-change-ancestor.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="dialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_562')

    def test_html_563(self):
        self.LE.init_runner('test_html_563')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/inert-node-is-not-highlighted.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/dialog', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_563')

    def test_html_564(self):
        self.LE.init_runner('test_html_564')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-backdrop-opacity.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_564')

    def test_html_565(self):
        self.LE.init_runner('test_html_565')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-backdrop.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="dialog"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_565')

    def test_html_566(self):
        self.LE.init_runner('test_html_566')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-display-contents.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/dialog', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_566')

    def test_html_567(self):
        self.LE.init_runner('test_html_567')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-generated-content.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="dialog-backdrop"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_567')

    def test_html_568(self):
        self.LE.init_runner('test_html_568')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-in-iframe.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_568')

    def test_html_569(self):
        self.LE.init_runner('test_html_569')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-in-object.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/object', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/object', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_569')

    def test_html_570(self):
        self.LE.init_runner('test_html_570')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-in-replaced-renderer.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_570')

    def test_html_571(self):
        self.LE.init_runner('test_html_571')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-in-table-column.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_571')

    def test_html_572(self):
        self.LE.init_runner('test_html_572')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/modal-dialog-sibling.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="dialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="dialog"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_572')

    def test_html_573(self):
        self.LE.init_runner('test_html_573')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/removed-element-is-removed-from-top-layer.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="topDialog"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bottomDialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_573')

    def test_html_574(self):
        self.LE.init_runner('test_html_574')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-containing-block.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="bottomDialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_574')

    def test_html_575(self):
        self.LE.init_runner('test_html_575')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-display-none.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="topDialog"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bottomDialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_575')

    def test_html_576(self):
        self.LE.init_runner('test_html_576')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-nesting.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="topDialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_576')

    def test_html_577(self):
        self.LE.init_runner('test_html_577')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-clip.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="parent"]/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_577')

    def test_html_578(self):
        self.LE.init_runner('test_html_578')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-filter.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="parent"]/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_578')

    def test_html_579(self):
        self.LE.init_runner('test_html_579')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-mask.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="parent"]/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_579')

    def test_html_580(self):
        self.LE.init_runner('test_html_580')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-opacity.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_580')

    def test_html_581(self):
        self.LE.init_runner('test_html_581')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-overflow-clip.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="parent"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_581')

    def test_html_582(self):
        self.LE.init_runner('test_html_582')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-overflow-hidden.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="parent"]/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_582')

    def test_html_583(self):
        self.LE.init_runner('test_html_583')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-overflow-scroll.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="parent"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_583')

    def test_html_584(self):
        self.LE.init_runner('test_html_584')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-parent-transform.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="parent"]/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_584')

    def test_html_585(self):
        self.LE.init_runner('test_html_585')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-position-relative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/dialog', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_585')

    def test_html_586(self):
        self.LE.init_runner('test_html_586')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-position-static.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/dialog', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/dialog', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_586')

    def test_html_587(self):
        self.LE.init_runner('test_html_587')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-stacking-correct-order-remove-readd.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="topDialog"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bottomDialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_587')

    def test_html_588(self):
        self.LE.init_runner('test_html_588')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-stacking-dynamic.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="topDialog"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bottomDialog"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_588')

    def test_html_589(self):
        self.LE.init_runner('test_html_589')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/interactive-elements/the-dialog-element/top-layer-stacking.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="bottomDialog"]/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[3]/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_589')

    def test_html_590(self):
        self.LE.init_runner('test_html_590')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/links/linktypes/alternate-css.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_590')

    def test_html_591(self):
        self.LE.init_runner('test_html_591')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/links/linktypes/link-type-stylesheet/process-stylesheet-linked-resource-ascii-case-insensitive.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_591')

    def test_html_592(self):
        self.LE.init_runner('test_html_592')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-anchor-change-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_592')

    def test_html_593(self):
        self.LE.init_runner('test_html_593')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-anchor-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[6]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="ex6"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_593')

    def test_html_594(self):
        self.LE.init_runner('test_html_594')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-anchor-nested-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="nested-menu"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="nested-menu"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_594')

    def test_html_595(self):
        self.LE.init_runner('test_html_595')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-anchor-scroll-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="ex3"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_595')

    def test_html_596(self):
        self.LE.init_runner('test_html_596')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-and-svg.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_596')

    def test_html_597(self):
        self.LE.init_runner('test_html_597')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-appearance.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="blank"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="auto"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="manual"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="invalid"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_597')

    def test_html_598(self):
        self.LE.init_runner('test_html_598')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-backdrop-appearance.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="bottom"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="top"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_598')

    def test_html_599(self):
        self.LE.init_runner('test_html_599')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-dialog-appearance.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="d1"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="d1"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_599')

    def test_html_600(self):
        self.LE.init_runner('test_html_600')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-hidden-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_600')

    def test_html_601(self):
        self.LE.init_runner('test_html_601')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-inside-display-none.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_601')

    def test_html_602(self):
        self.LE.init_runner('test_html_602')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-open-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_602')

    def test_html_603(self):
        self.LE.init_runner('test_html_603')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-open-overflow-display.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="container"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_603')

    def test_html_604(self):
        self.LE.init_runner('test_html_604')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/popovers/popover-stacking-context.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div/div[1]/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div/div[1]/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_604')

    def test_html_605(self):
        self.LE.init_runner('test_html_605')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/scripting-1/the-script-element/module/dynamic-import/microtasks/worklet.https.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_605')

    def test_html_606(self):
        self.LE.init_runner('test_html_606')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/scripting-1/the-template-element/additions-to-the-css-user-agent-style-sheet/css-user-agent-style-sheet-test-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_606')

    def test_html_607(self):
        self.LE.init_runner('test_html_607')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/scripting-1/the-template-element/additions-to-the-css-user-agent-style-sheet/css-user-agent-style-sheet-test-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_607')

    def test_html_608(self):
        self.LE.init_runner('test_html_608')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/scripting-1/the-template-element/additions-to-the-css-user-agent-style-sheet/css-user-agent-style-sheet-test-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_608')

    def test_html_609(self):
        self.LE.init_runner('test_html_609')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-b-element/b-usage.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_609')

    def test_html_610(self):
        self.LE.init_runner('test_html_610')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-auto-dir-default.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_610')

    def test_html_611(self):
        self.LE.init_runner('test_html_611')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-missing-pdf.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_611')

    def test_html_612(self):
        self.LE.init_runner('test_html_612')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-nested.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_612')

    def test_html_613(self):
        self.LE.init_runner('test_html_613')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-number.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_613')

    def test_html_614(self):
        self.LE.init_runner('test_html_614')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-separate.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_614')

    def test_html_615(self):
        self.LE.init_runner('test_html_615')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-another-bdi-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_615')

    def test_html_616(self):
        self.LE.init_runner('test_html_616')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-another-bdi-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_616')

    def test_html_617(self):
        self.LE.init_runner('test_html_617')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-letter-following-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_617')

    def test_html_618(self):
        self.LE.init_runner('test_html_618')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-letter-following-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_618')

    def test_html_619(self):
        self.LE.init_runner('test_html_619')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-letter-preceding-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_619')

    def test_html_620(self):
        self.LE.init_runner('test_html_620')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-letter-preceding-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_620')

    def test_html_621(self):
        self.LE.init_runner('test_html_621')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-number-following-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_621')

    def test_html_622(self):
        self.LE.init_runner('test_html_622')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-number-following-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_622')

    def test_html_623(self):
        self.LE.init_runner('test_html_623')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-to-surrounding-run.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_623')

    def test_html_624(self):
        self.LE.init_runner('test_html_624')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-neutral-wrapped.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_624')

    def test_html_625(self):
        self.LE.init_runner('test_html_625')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdi-element/bdi-paragraph-level-container.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_625')

    def test_html_626(self):
        self.LE.init_runner('test_html_626')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdo-element/bdo-child.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/bdo', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_626')

    def test_html_627(self):
        self.LE.init_runner('test_html_627')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdo-element/bdo-ltr.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/bdo', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_627')

    def test_html_628(self):
        self.LE.init_runner('test_html_628')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdo-element/bdo-override.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_628')

    def test_html_629(self):
        self.LE.init_runner('test_html_629')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-bdo-element/bidi-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/bdo', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_629')

    def test_html_630(self):
        self.LE.init_runner('test_html_630')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-br-element/br-bidi-in-inline-ancestors.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[3]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_630')

    def test_html_631(self):
        self.LE.init_runner('test_html_631')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-br-element/br-bidi.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]/p', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/p', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_631')

    def test_html_632(self):
        self.LE.init_runner('test_html_632')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-ruby-element/ruby-usage.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_632')

    def test_html_633(self):
        self.LE.init_runner('test_html_633')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/semantics/text-level-semantics/the-wbr-element/wbr-element.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_633')

    def test_html_634(self):
        self.LE.init_runner('test_html_634')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/after-1kb.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_634')

    def test_html_635(self):
        self.LE.init_runner('test_html_635')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/after-bogus-after-1kb.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_635')

    def test_html_636(self):
        self.LE.init_runner('test_html_636')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/after-bogus.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_636')

    def test_html_637(self):
        self.LE.init_runner('test_html_637')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/after-head-after-1kb-crlf.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_637')

    def test_html_638(self):
        self.LE.init_runner('test_html_638')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/after-head-after-1kb.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_638')

    def test_html_639(self):
        self.LE.init_runner('test_html_639')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/after-head-in-1kb-crlf.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_639')

    def test_html_640(self):
        self.LE.init_runner('test_html_640')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/after-head-in-1kb.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_implicit_expression_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_640')

    def test_html_641(self):
        self.LE.init_runner('test_html_641')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/baseline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_641')

    def test_html_642(self):
        self.LE.init_runner('test_html_642')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/document-write.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_642')

    def test_html_643(self):
        self.LE.init_runner('test_html_643')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-comment.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_643')

    def test_html_644(self):
        self.LE.init_runner('test_html_644')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-noscript-after-template-after-1kb.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_644')

    def test_html_645(self):
        self.LE.init_runner('test_html_645')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-object.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_645')

    def test_html_646(self):
        self.LE.init_runner('test_html_646')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-script.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_646')

    def test_html_647(self):
        self.LE.init_runner('test_html_647')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-style.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_647')

    def test_html_648(self):
        self.LE.init_runner('test_html_648')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-svg-in-cdata.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_648')

    def test_html_649(self):
        self.LE.init_runner('test_html_649')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-svg.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_649')

    def test_html_650(self):
        self.LE.init_runner('test_html_650')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-template-after-1kb.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_650')

    def test_html_651(self):
        self.LE.init_runner('test_html_651')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-template.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_651')

    def test_html_652(self):
        self.LE.init_runner('test_html_652')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/in-title.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_652')

    def test_html_653(self):
        self.LE.init_runner('test_html_653')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/ncr.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_653')

    def test_html_654(self):
        self.LE.init_runner('test_html_654')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/non-ascii-in-comment-before.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_654')

    def test_html_655(self):
        self.LE.init_runner('test_html_655')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/syntax/charset/non-ascii-in-title-before.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/p[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[2]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/p[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/p[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_655')

    def test_html_656(self):
        self.LE.init_runner('test_html_656')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/the-xhtml-syntax/parsing-xhtml-documents/adopt-while-parsing-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.test_screenshot('/html/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_656')

    def test_html_657(self):
        self.LE.init_runner('test_html_657')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('html/the-xhtml-syntax/parsing-xhtml-documents/data-xhtml-with-dtd.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/iframe', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_html_657')

if __name__ == '__main__':
    suite = unittest.TestSuite()  # 实例化TestSuite
    suite.addTest(Test("test_add_02"))  # 添加测试用例
    suite.addTest(Test("test_add_01"))
    runner = unittest.TextTestRunner()  # 实例化TextTestRunner
    runner.run(suite)  # 传入suite并执行测试用例
