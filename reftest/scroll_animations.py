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
        super().setUpClass()
        self.LE = WebView()
        self.LE.init_webview(test_package='com.example.myapplication')  # 运行chromeDriver

    def test_scroll_animations_001(self):
        self.LE.init_runner('test_scroll_animations_001')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/css/scroll-timeline-default-iframe.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="target"]',"test")  # 隐式等待
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/iframe',"ref")  # 隐式等待
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_001')

    def test_scroll_animations_002(self):
        self.LE.init_runner('test_scroll_animations_002')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/css/scroll-timeline-default-quirks-mode.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="covered"]',"test")  # 隐式等待
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_002')

    def test_scroll_animations_003(self):
        self.LE.init_runner('test_scroll_animations_003')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/css/scroll-timeline-default-writing-mode-rl.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="covered"]',"test")  # 隐式等待
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_003')

    def test_scroll_animations_004(self):
        self.LE.init_runner('test_scroll_animations_004')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/css/scroll-timeline-default.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="covered"]',"test")  # 隐式等待
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_004')

    def test_scroll_animations_005(self):
        self.LE.init_runner('test_scroll_animations_005')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/css/scroll-timeline-frame-size-changed.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="covered"]',"test")  # 隐式等待
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_005')

    def test_scroll_animations_006(self):
        self.LE.init_runner('test_scroll_animations_006')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/css/scroll-timeline-inline-orientation.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="covered"]',"test")  # 隐式等待
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_006')

    def test_scroll_animations_007(self):
        self.LE.init_runner('test_scroll_animations_007')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/animation-with-animatable-interface.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_007')

    def test_scroll_animations_008(self):
        self.LE.init_runner('test_scroll_animations_008')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/animation-with-display-none.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_008')

    def test_scroll_animations_009(self):
        self.LE.init_runner('test_scroll_animations_009')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/animation-with-overflow-hidden.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_009')

    def test_scroll_animations_010(self):
        self.LE.init_runner('test_scroll_animations_010')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/animation-with-root-scroller.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_010')

    def test_scroll_animations_011(self):
        self.LE.init_runner('test_scroll_animations_011')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/animation-with-transform.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_011')

    def test_scroll_animations_012(self):
        self.LE.init_runner('test_scroll_animations_012')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/layout-changes-on-percentage-based-timeline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_012')

    def test_scroll_animations_013(self):
        self.LE.init_runner('test_scroll_animations_013')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/progress-based-effect-delay.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_013')

    def test_scroll_animations_014(self):
        self.LE.init_runner('test_scroll_animations_014')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/set-current-time-before-play.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_014')

    def test_scroll_animations_015(self):
        self.LE.init_runner('test_scroll_animations_015')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/two-animations-attach-to-same-scroll-timeline-cancel-one.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_015')

    def test_scroll_animations_016(self):
        self.LE.init_runner('test_scroll_animations_016')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('scroll-animations/scroll-timelines/two-animations-attach-to-same-scroll-timeline.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="box"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="covered"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="scroller"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="box"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="covered"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('//*[@id="scroller"]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_scroll_animations_016')

if __name__ == '__main__':
    suite = unittest.TestSuite()  # 实例化TestSuite
    suite.addTest(Test("test_add_02"))  # 添加测试用例
    suite.addTest(Test("test_add_01"))
    runner = unittest.TextTestRunner()  # 实例化TextTestRunner
    runner.run(suite)  # 传入suite并执行测试用例
