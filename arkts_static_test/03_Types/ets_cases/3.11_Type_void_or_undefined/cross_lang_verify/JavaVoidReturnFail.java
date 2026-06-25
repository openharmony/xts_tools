/*
* Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/
/**
 * Java 版本 - void 函数返回值测试
 * 此文件用于验证 void 函数不能返回值
 * 
 * 编译命令: javac JavaVoidReturnFail.java
 * 预期结果: 编译失败
 */
public class JavaVoidReturnFail {
    // void 函数不能返回值
    static void test() {
        return 42;  // 编译错误: incompatible types: unexpected return value
    }
    
    public static void main(String[] args) {
        test();
    }
}
