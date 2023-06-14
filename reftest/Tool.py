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
from selenium import webdriver
from selenium.webdriver.common.by import By
import os
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import hashlib
import time
class WebView:
    def __init__(self):
        self.driver = None
        self.host = "http://localhost:9515"
        self.option_name = "androidPackage"
        self.driver_path = 'C:\\Users\\qianwangdq\\Desktop\\chromedriver.exe'
    def init_webview(self, test_package):
        try:
            print("init_webview")
            # 启动chromedriver.exe驱动
            self.init_chromedriver()
            try:
                options = webdriver.ChromeOptions()
                options.add_experimental_option(name=self.option_name,
                                                value=test_package)
                self.driver = webdriver.Remote(
                    command_executor=self.host,
                    options=options)
                print("Init_webview Success.{}".format(self.driver))
            except Exception as error:
                print(
                    "connect {} failed {},try again!".format(error, self.host))
                self.driver = webdriver.Remote(
                    command_executor=self.host,
                    options=options)
        except Exception as error:
            raise TypeError("Init_webview failed") from error

        return self.driver

    def init_chromedriver(self):
        chrome_tool_path = self.driver_path
        if not os.path.isfile(chrome_tool_path):
            raise FileExistsError("{} not exists!".format(chrome_tool_path))
        os.startfile(chrome_tool_path)

    def click_by_id(self, value):

        return self.click(key=By.ID, value=value)

    def click_by_name(self, value):

        return self.click(key=By.NAME, value=value)

    def click_by_calss_name(self, value):

        return self.click(key=By.CLASS_NAME, value=value)

    def click_by_tag_name(self, value):

        return self.click(key=By.TAG_NAME, value=value)

    def click_by_link_text(self, value):

        return self.click(key=By.LINK_TEXT, value=value)

    def click_by_partial_link_text(self, value):

        return self.click(key=By.PARTIAL_LINK_TEXT, value=value)

    def click_by_xpath(self, value):

        return self.click(key=By.XPATH, value=value)

    def click_by_css_selector(self, value):

        return self.click(key=By.CSS_SELECTOR, value=value)

    def get(self, url):

        return self.driver.get(url=url)

    def click(self, key, value):
        driver = self.driver.find_element(by=key, value=value)
        return driver.click()

    def find_element(self, key, value):
        return self.driver.find_element(by=key, value=value)

    def send_keys(self, key, value, text):

        return self.driver.find_element(by=key, value=value).send_keys(text)

    def input_text_by_id(self, value, text):

        return self.driver.find_element(by=By.ID, value=value).send_keys(text)

    def input_text_by_name(self, name, text):

        return self.driver.find_element(by=By.NAME, value=name).send_keys(text)

    def input_text_by_xpath(self, xpath, text):

        return self.driver.find_element(by=By.XPATH, value=xpath).send_keys(text)

    def clear(self, key, value):
        return self.driver.find_element(by=key, value=value).clear()

    def clear_text_by_id(self, value):
        return self.driver.find_element(by=By.ID, value=value).clear()

    def clear_text_by_name(self, name):
        return self.driver.find_element(by=By.NAME, value=name).clear()

    def clear_text_by_xpath(self, xpath):
        return self.driver.find_element(by=By.XPATH, value=xpath).clear()

    def close(self):
        return self.driver.close()

    def init_runner(self, case_name):
        self.driver.get('http://web-platform.test:8000/tools/runner/index.html')
        print('----------' + case_name + 'start' + '----------')

    @staticmethod
    def runner_end(case_name):
        print('----------' + case_name + 'end' + '----------')

    def click_js(self):
        ele = self.driver.find_element(By.ID, 'th')  # 去掉自动化复选框
        ele.click()

    def click_manual(self):
        ele1 = self.driver.find_element(By.ID, 'man')  # 去掉手工复选框
        ele1.click()

    def click_reft(self):
        ele2 = self.driver.find_element(By.ID, 'ref')  # 去掉refttest
        ele2.click()

    def send_path(self, file_path):
        input_path = self.driver.find_element(By.ID, 'path')  # 找到路径输入框
        input_path.send_keys(file_path)  # 发送路径

    def start_test(self):
        WebDriverWait(self.driver, 10).until(EC.visibility_of(self.driver.find_element(By.ID, 'testcount')))
        # 显示等待至testcount出现
        ele2 = self.driver.find_element(By.XPATH, '/html/body/div/div[2]/div/form/div[6]/div/button[1]')  # 点击开始
        time.sleep(5)
        ele3 = self.driver.find_element(By.XPATH, '//*[@id="options"]/div[4]')  # 点击
        ele3.click()
        time.sleep(3)
        self.driver.execute_script("arguments[0].click();",  ele2)

    def click_show_test(self):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        print("全部窗口的句柄", handles)
        self.driver.switch_to.window(handles[0])  # 切句柄回原窗口
        WebDriverWait(self.driver, 3000).until(EC.visibility_of(self.driver.find_element(By.XPATH,
        '//*[@id="manualUI"]/div/div[2]/p[2]/button[1]')))  # 显示等待至showttest出现
        showTest = self.driver.find_element(By.XPATH, '//*[@id="manualUI"]/div/div[2]/p[2]/button[1]')  # 找到show test
        # showTest.click()  # 点击show Test
        self.driver.execute_script("arguments[0].click();", showTest)

    def test_screenshot(self, ele_path, file_name):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        print("全部窗口的句柄", handles)
        self.driver.switch_to.window(handles[-1])  # 切句柄到新窗口
        WebDriverWait(self.driver, 3000).until(
            EC.visibility_of(self.driver.find_element(By.XPATH, ele_path)))  # 显示等待方块出现  '//*[@id="fileDisplay"]'
        self.driver.get_screenshot_as_file("D:\\share\\" + file_name + ".png")  # 截图

    def test_implicit_expression_screenshot(self, ele_path, file_name):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        print("全部窗口的句柄", handles)
        self.driver.switch_to.window(handles[-1])  # 切句柄到新窗口
        self.driver.implicitly_wait(20)  # 设置隐式等待
        WebDriverWait(self.driver, 3000).until(
            EC.visibility_of(self.driver.find_element(By.XPATH, ele_path)))  # 显示等待方块出现
        self.driver.get_screenshot_as_file("D:\\share\\" + file_name + ".png")  # 截图

    def test_file_screenshot(self,file_name):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        print("全部窗口的句柄", handles)
        self.driver.switch_to.window(handles[-1])  # 切句柄到新窗口
        self.driver.implicitly_wait(20)  # 设置隐式等待
        self.driver.get_screenshot_as_file("D:\\share\\" + file_name + ".png")  # 截图

    def implicit_waiting(self, file_name):
        self.driver.implicitly_wait(20)  # 设置隐式等待
        self.driver.maximize_window()  # 最大化浏览器
        self.driver.get_screenshot_as_file("D:\\share\\" + file_name + ".png")  # 截图

    def click_show_ref(self):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        print("全部窗口的句柄", handles)
        self.driver.switch_to.window(handles[0])  # 切句柄回原窗口
        showReference = self.driver.find_element(By.XPATH,'//*[@id="manualUI"]/div/div[2]/p[2]/button[2]')  # 找到 show reference
        # showReference.click()  # 点击show reference
        self.driver.execute_script("arguments[0].click();", showReference)

    def ref_screenshot(self, ele_path, file_name):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        self.driver.switch_to.window(handles[-1])  # 切句柄到新窗口
        WebDriverWait(self.driver, 3000).until(
            EC.visibility_of(self.driver.find_element(By.XPATH, ele_path)))  # 显示等待方块出现
        self.driver.get_screenshot_as_file("D:\\share\\" + file_name + ".png")  # 截图

    def ref_implicit_expression_screenshot(self, ele_path, file_name):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        self.driver.switch_to.window(handles[-1])  # 切句柄到新窗口
        self.driver.implicitly_wait(20)  # 设置隐式等待
        self.driver.maximize_window()  # 最大化浏览器
        WebDriverWait(self.driver, 3000).until(
            EC.visibility_of(self.driver.find_element(By.XPATH, ele_path)))  # 显示等待方块出现
        self.driver.get_screenshot_as_file("D:\\share\\" + file_name + ".png")  # 截图

    def ref_file_screenshot(self, file_name):
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        print("全部窗口的句柄", handles)
        self.driver.switch_to.window(handles[-1])  # 切句柄到新窗口
        self.driver.implicitly_wait(20)  # 设置隐式等待
        self.driver.get_screenshot_as_file("D:\\share\\" + file_name + ".png")  # 截图

    def test_assert(self, file_name1, file_name2):
        file1 = open("D:\\share\\" + file_name1 + ".png", "rb")
        file2 = open("D:\\share\\" + file_name2 + ".png", "rb")
        md = hashlib.md5()
        md.update(file1.read())
        res1 = md.hexdigest()
        md = hashlib.md5()
        md.update(file2.read())
        res2 = md.hexdigest()
        self.driver.close()
        handles = self.driver.window_handles  # 获取所有窗口的句柄
        print("全部窗口的句柄", handles)
        self.driver.switch_to.window(handles[0])  # 切句柄回原窗口
        time.sleep(2)
        zoom_out = "document.body.style.zoom='0.5'"
        self.driver.execute_script(zoom_out)
        time.sleep(5)
        if res1 == res2:
            clickPass = self.driver.find_element(By.XPATH, '//*[@id="manualUI"]/div/div[3]/button[1]')  # 点击pass
            # clickPass.click()
            self.driver.execute_script("arguments[0].click();", clickPass)
        else:
            clickFalse = self.driver.find_element(By.XPATH, '//*[@id="manualUI"]/div/div[3]/button[3]')  # 点击fail
            # clickFalse.click()
            self.driver.execute_script("arguments[0].click();", clickFalse)

