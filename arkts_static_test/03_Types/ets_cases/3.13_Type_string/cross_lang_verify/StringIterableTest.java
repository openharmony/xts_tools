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
 * Java 版本 - 字符串可迭代性测试
 * 验证字符串遍历、for-each 循环
 */
public class StringIterableTest {
    public static void main(String[] args) {
        // 1. 字符串转 char 数组遍历
        String s = "hello";
        StringBuilder sb = new StringBuilder();
        for (char c : s.toCharArray()) {
            sb.append(c);
        }
        assert sb.toString().equals("hello") : "char array iteration failed";
        
        // 2. 使用索引遍历
        StringBuilder sb2 = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            sb2.append(s.charAt(i));
        }
        assert sb2.toString().equals("hello") : "index iteration failed";
        
        // 3. 空字符串遍历
        String empty = "";
        int count = 0;
        for (char c : empty.toCharArray()) {
            count++;
        }
        assert count == 0 : "empty string should have no chars";
        
        // 4. 单字符字符串
        String single = "A";
        StringBuilder sb3 = new StringBuilder();
        for (char c : single.toCharArray()) {
            sb3.append(c);
        }
        assert sb3.toString().equals("A") : "single char iteration failed";
        
        // 5. Unicode 字符串
        String unicode = "你好";
        int charCount = 0;
        for (int i = 0; i < unicode.length(); i++) {
            charCount++;
            // 注意: Java 的 char 是 UTF-16，中文字符可能需要两个 char
        }
        // "你好" 在 Java 中 length() 是 2 (两个 UTF-16 code unit)
        assert unicode.length() == 2 : "unicode string length should be 2";
        
        System.out.println("All Java iterable tests passed!");
    }
}
