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

    def test_density_size_correction_001(self):
        self.LE.init_runner('test_density_size_correction_001')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-image-svg-aspect-ratio-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_001')

    def test_density_size_correction_002(self):
        self.LE.init_runner('test_density_size_correction_002')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-image-svg-aspect-ratio.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_002')

    def test_density_size_correction_003(self):
        self.LE.init_runner('test_density_size_correction_003')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-image-svg-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_003')

    def test_density_size_correction_004(self):
        self.LE.init_runner('test_density_size_correction_004')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-image-svg.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_004')

    def test_density_size_correction_005(self):
        self.LE.init_runner('test_density_size_correction_005')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-size-bg-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[7]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[7]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_005')

    def test_density_size_correction_006(self):
        self.LE.init_runner('test_density_size_correction_006')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-size-bg-with-radius.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[7]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[7]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_006')

    def test_density_size_correction_007(self):
        self.LE.init_runner('test_density_size_correction_007')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-size-bg.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/div[7]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/div[7]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_007')

    def test_density_size_correction_008(self):
        self.LE.init_runner('test_density_size_correction_008')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-size-img-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/img[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/img[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_008')

    def test_density_size_correction_009(self):
        self.LE.init_runner('test_density_size_correction_009')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-size-img.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_implicit_expression_screenshot('/html/body/img[4]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_implicit_expression_screenshot('/html/body/img[4]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_009')

    def test_density_size_correction_010(self):
        self.LE.init_runner('test_density_size_correction_010')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-size-pseudo-elements-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/img', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_010')

    def test_density_size_correction_011(self):
        self.LE.init_runner('test_density_size_correction_011')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-size-pseudo-elements.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div[1]/img', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div[2]/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_011')

    def test_density_size_correction_012(self):
        self.LE.init_runner('test_density_size_correction_012')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-various-elements-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/div[1]/img', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/video', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/div[2]/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/div[1]/img', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[2]/img', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[3]/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_012')

    def test_density_size_correction_013(self):
        self.LE.init_runner('test_density_size_correction_013')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/density-corrected-various-elements.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div/div[1]/img', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/video', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/div/div[2]/input', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div/div[1]/img', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[2]/img', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/div/div[3]/img', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_013')

    def test_density_size_correction_014(self):
        self.LE.init_runner('test_density_size_correction_014')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/image-set-001-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_014')

    def test_density_size_correction_015(self):
        self.LE.init_runner('test_density_size_correction_015')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/image-set-001.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_015')

    def test_density_size_correction_016(self):
        self.LE.init_runner('test_density_size_correction_016')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/image-set-002-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_016')

    def test_density_size_correction_017(self):
        self.LE.init_runner('test_density_size_correction_017')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/image-set-002.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_017')

    def test_density_size_correction_018(self):
        self.LE.init_runner('test_density_size_correction_018')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/image-set-003.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/div', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/div', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_018')

    def test_density_size_correction_019(self):
        self.LE.init_runner('test_density_size_correction_019')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/srcset-cross-origin.sub.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/img[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_019')

    def test_density_size_correction_020(self):
        self.LE.init_runner('test_density_size_correction_020')  # 打开runner页面
        self.LE.click_js()  # 取消勾选js
        self.LE.click_manual()  # 取消勾选manual
        self.LE.send_path('density-size-correction/srcset.html')  # 是否进入指定路径 默认是/ 即全部路径
        self.LE.start_test()  # 点击start test 按钮
        self.LE.click_show_test()  # 点击show test按钮
        self.LE.test_screenshot('/html/body/img[1]', "test")  # test页面截图
        self.LE.test_screenshot('/html/body/img[2]', "test")  # test页面截图
        self.LE.click_show_ref()  # 点击show reference按钮
        self.LE.ref_screenshot('/html/body/img[1]', "ref")  # reference页面截图
        self.LE.ref_screenshot('/html/body/img[2]', "ref")  # reference页面截图
        self.LE.test_assert("test", "ref")  # 断言
        self.LE.runner_end('test_density_size_correction_020')

if __name__ == '__main__':
    suite = unittest.TestSuite()  # 实例化TestSuite
    suite.addTest(Test("test_add_02"))  # 添加测试用例
    suite.addTest(Test("test_add_01"))
    runner = unittest.TextTestRunner()  # 实例化TextTestRunner
    runner.run(suite)  # 传入suite并执行测试用例
