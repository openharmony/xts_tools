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

    def test_content_dpr_001(self):
       self.LE.init_runner('test_content_dpr_001')  # 打开runner页面
       self.LE.click_js()  # 取消勾选js
       self.LE.click_manual()  # 取消勾选manual
       self.LE.send_path('content-dpr/content-dpr-various-elements.html')  # 是否进入指定路径 默认是/ 即全部路径
       self.LE.start_test()  # 点击start test 按钮
       self.LE.click_show_test()  # 点击show test按钮
       self.LE.test_screenshot('/html/body/div/div[1]/img', "test")  # test页面截图
       self.LE.test_screenshot('/html/body/div/video', "test")  # test页面截图
       self.LE.test_screenshot('/html/body/div/div[2]/input', "test")  # test页面截图
       self.LE.test_screenshot('/html/body/div/div[2]', "test")  # test页面截图
       self.LE.test_screenshot('//*[@id="canvas"]', "test")  # test页面截图
       self.LE.click_show_ref()  # 点击show reference按钮
       self.LE.ref_screenshot('/html/body/div/div[1]/img', "ref")  # reference页面截图
       self.LE.ref_screenshot('/html/body/div/div[2]/video', "ref")  # reference页面截图
       self.LE.ref_screenshot('/html/body/div/div[3]/input', "ref")  # reference页面截图
       self.LE.ref_screenshot('/html/body/div/canvas', "ref")  # reference页面截图
       self.LE.test_assert("test", "ref")  # 断言
       self.LE.runner_end('test_content_dpr_001')

    def test_content_dpr_002(self):
       self.LE.init_runner('test_content_dpr_002')  # 打开runner页面
       self.LE.click_js()  # 取消勾选js
       self.LE.click_manual()  # 取消勾选manual
       self.LE.send_path('content-dpr/image-pseudo-element-content-dpr.html')  # 是否进入指定路径 默认是/ 即全部路径
       self.LE.start_test()  # 点击start test 按钮
       self.LE.click_show_test()  # 点击show test按钮
       self.LE.test_screenshot('/html/body/img', "test")  # test页面截图
       self.LE.click_show_ref()  # 点击show reference按钮
       self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
       self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
       self.LE.test_assert("test", "ref")  # 断言
       self.LE.runner_end('test_content_dpr_002')

    def test_content_dpr_003(self):
       self.LE.init_runner('test_content_dpr_003')  # 打开runner页面
       self.LE.click_js()  # 取消勾选js
       self.LE.click_manual()  # 取消勾选manual
       self.LE.send_path('content-dpr/image-with-content-dpr-and-explicit-dimensions.html')  # 是否进入指定路径 默认是/ 即全部路径
       self.LE.start_test()  # 点击start test 按钮
       self.LE.click_show_test()  # 点击show test按钮
       self.LE.test_screenshot('/html/body/img[1]', "test")  # test页面截图
       self.LE.test_screenshot('/html/body/img[2]', "test")  # test页面截图
       self.LE.click_show_ref()  # 点击show reference按钮
       self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
       self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
       self.LE.test_assert("test", "ref")  # 断言
       self.LE.runner_end('test_content_dpr_003')

    def test_content_dpr_004(self):
       self.LE.init_runner('test_content_dpr_004')  # 打开runner页面
       self.LE.click_js()  # 取消勾选js
       self.LE.click_manual()  # 取消勾选manual
       self.LE.send_path('content-dpr/tiled-background-image-with-content-dpr.html')  # 是否进入指定路径 默认是/ 即全部路径
       self.LE.start_test()  # 点击start test 按钮
       self.LE.click_show_test()  # 点击show test按钮
       self.LE.test_screenshot('//*[@id="bg"]', "test")  # test页面截图
       self.LE.test_screenshot('//*[@id="bg2"]', "test")  # test页面截图
       self.LE.click_show_ref()  # 点击show reference按钮
       self.LE.ref_screenshot('//*[@id="bg"]', "ref")  # reference页面截图
       self.LE.ref_screenshot('//*[@id="bg2"]', "ref")  # reference页面截图
       self.LE.test_assert("test", "ref")  # 断言
       self.LE.runner_end('test_content_dpr_004')

    def test_content_dpr_005(self):
       self.LE.init_runner('test_content_dpr_005')  # 打开runner页面
       self.LE.click_js()  # 取消勾选js
       self.LE.click_manual()  # 取消勾选manual
       self.LE.send_path('content-dpr/tiled-background-svg-image-with-content-dpr.html')  # 是否进入指定路径 默认是/ 即全部路径
       self.LE.start_test()  # 点击start test 按钮
       self.LE.click_show_test()  # 点击show test按钮
       self.LE.test_screenshot('//*[@id="bg"]', "test")  # test页面截图
       self.LE.test_screenshot('//*[@id="bg2"]', "test")  # test页面截图
       self.LE.click_show_ref()  # 点击show reference按钮
       self.LE.ref_screenshot('//*[@id="bg"]', "ref")  # reference页面截图
       self.LE.ref_screenshot('//*[@id="bg2"]', "ref")  # reference页面截图
       self.LE.test_assert("test", "ref")  # 断言
       self.LE.runner_end('test_content_dpr_005')

if __name__ == '__main__':
    suite = unittest.TestSuite()  # 实例化TestSuite
    suite.addTest(Test("test_add_02"))  # 添加测试用例
    suite.addTest(Test("test_add_01"))
    runner = unittest.TextTestRunner()  # 实例化TextTestRunner
    runner.run(suite)  # 传入suite并执行测试用例
