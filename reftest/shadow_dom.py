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

    def test_shadow_dom_001(self):
        self.LE.init_runner('test_shadow_dom_001')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/directionality-001.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="host2"]/span', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[3]/span', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_001')

    def test_shadow_dom_002(self):
        self.LE.init_runner('test_shadow_dom_002')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/directionality-002.tentative.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_002')

    def test_shadow_dom_003(self):
        self.LE.init_runner('test_shadow_dom_003')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/focus/focus-pseudo-on-shadow-host-1.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_003')

    def test_shadow_dom_004(self):
        self.LE.init_runner('test_shadow_dom_004')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/focus/focus-pseudo-on-shadow-host-2.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="host"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="host"]/span', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_004')

    def test_shadow_dom_005(self):
        self.LE.init_runner('test_shadow_dom_005')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/focus/focus-pseudo-on-shadow-host-3.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="host"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_file_screenshot("ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_005')

    def test_shadow_dom_006(self):
        self.LE.init_runner('test_shadow_dom_006')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/imperative-slot-layout-invalidation-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/span', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_006')

    def test_shadow_dom_007(self):
        self.LE.init_runner('test_shadow_dom_007')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/invalidate-sibling-different-slots.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="a"]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/details/summary[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('//*[@id="a"]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/details/summary[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_007')

    def test_shadow_dom_008(self):
        self.LE.init_runner('test_shadow_dom_008')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/layout-slot-no-longer-assigned.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_008')

    def test_shadow_dom_009(self):
        self.LE.init_runner('test_shadow_dom_009')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/layout-slot-no-longer-fallback.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_009')

    def test_shadow_dom_010(self):
        self.LE.init_runner('test_shadow_dom_010')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/shadow-style-invalidation-vw-units.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/iframe', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_010')

    def test_shadow_dom_011(self):
        self.LE.init_runner('test_shadow_dom_011')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_011')

    def test_shadow_dom_012(self):
        self.LE.init_runner('test_shadow_dom_012')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_012')

    def test_shadow_dom_013(self):
        self.LE.init_runner('test_shadow_dom_013')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_013')

    def test_shadow_dom_014(self):
        self.LE.init_runner('test_shadow_dom_014')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-004.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="host1"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="host3"]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="host4"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/div', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]/div', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_014')

    def test_shadow_dom_015(self):
        self.LE.init_runner('test_shadow_dom_015')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-005.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="host"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/p', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_015')

    def test_shadow_dom_016(self):
        self.LE.init_runner('test_shadow_dom_016')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-006.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[5]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[5]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_016')

    def test_shadow_dom_017(self):
        self.LE.init_runner('test_shadow_dom_017')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-007.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div/div[3]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_017')

    def test_shadow_dom_018(self):
        self.LE.init_runner('test_shadow_dom_018')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/slot-fallback-content-008.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/div[1]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_018')

    def test_shadow_dom_019(self):
        self.LE.init_runner('test_shadow_dom_019')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/untriaged/shadow-trees/nested-shadow-trees/nested_tree_reftest.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div//div//div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_019')

    def test_shadow_dom_020(self):
        self.LE.init_runner('test_shadow_dom_020')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/untriaged/shadow-trees/reprojection/reprojection-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('//*[@id="host"]/div[1]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('//*[@id="host2"]/div[2]/div[3]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_020')

    def test_shadow_dom_021(self):
        self.LE.init_runner('test_shadow_dom_021')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/untriaged/shadow-trees/shadow-root-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_021')

    def test_shadow_dom_022(self):
        self.LE.init_runner('test_shadow_dom_022')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/untriaged/shadow-trees/shadow-root-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div//div[1]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="host"]//div[2]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="host"]/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('//*[@id="host"]/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[3]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_022')

    def test_shadow_dom_023(self):
        self.LE.init_runner('test_shadow_dom_023')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('shadow-dom/untriaged/styles/not-apply-in-shadow-root-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('//*[@id="shadow-host"]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_shadow_dom_023')

if __name__ == '__main__':
    suite = unittest.TestSuite()  # 实例化TestSuite
    suite.addTest(Test("test_add_02"))  # 添加测试用例
    suite.addTest(Test("test_add_01"))
    runner = unittest.TextTestRunner()  # 实例化TextTestRunner
    runner.run(suite)  # 传入suite并执行测试用例
