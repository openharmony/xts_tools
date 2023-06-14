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

    def test_fetch_001(self):
        self.LE.init_runner('test_fetch_001')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-html-correctly-labeled.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_001')

    def test_fetch_002(self):
        self.LE.init_runner('test_fetch_002')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-png-mislabeled-as-html-nosniff.tentative.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_002')

    def test_fetch_003(self):
        self.LE.init_runner('test_fetch_003')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-png-mislabeled-as-html.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_003')

    def test_fetch_004(self):
        self.LE.init_runner('test_fetch_004')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-svg-doctype-html-mimetype-empty.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_004')

    def test_fetch_005(self):
        self.LE.init_runner('test_fetch_005')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-svg-doctype-html-mimetype-svg.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_005')

    def test_fetch_006(self):
        self.LE.init_runner('test_fetch_006')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-svg-labeled-as-dash.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_006')

    def test_fetch_007(self):
        self.LE.init_runner('test_fetch_007')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-svg-labeled-as-svg-xml.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_007')

    def test_fetch_008(self):
        self.LE.init_runner('test_fetch_008')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/corb/img-svg-xml-decl.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_008')

    def test_fetch_009(self):
        self.LE.init_runner('test_fetch_009')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/http-cache/basic-auth-cache-test.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_009')

    def test_fetch_010(self):
        self.LE.init_runner('test_fetch_010')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/orb/tentative/img-png-mislabeled-as-html.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_010')

    def test_fetch_011(self):
        self.LE.init_runner('test_fetch_011')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('fetch/orb/tentative/img-png-unlabeled.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_fetch_011')

if __name__ == '__main__':
    suite = unittest.TestSuite()  # 实例化TestSuite
    suite.addTest(Test("test_add_02"))  # 添加测试用例
    suite.addTest(Test("test_add_01"))
    runner = unittest.TextTestRunner()  # 实例化TextTestRunner
    runner.run(suite)  # 传入suite并执行测试用例
