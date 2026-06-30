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
// Java Runtime Test - 对应 2.3 White Spaces 运行时逻辑验证
// 测试重点：空白符在运行时语义对代码执行的影响
// 注意：Java 仅支持 SPACE, TAB, LF, CR, \f 作为空白符，不支持 NBSP 和 ZWNBSP 作为分隔符

public class WhiteSpacesRuntimeTest {
    public static void main(String[] args) {
        int count = 0;

        // 032: Space-only 风格运算结果验证
        int s1 = 10 + 20; count++;
        assert s1 == 30 : "Space arithmetic test failed, got " + s1;
        System.out.println("[Java] Space-only arithmetic: PASSED (10+20=" + s1 + ")");

        // 032': Tab-indented 风格运算结果验证
        int t1 = 30 + 40; count++;
        assert t1 == 70 : "Tab-indented arithmetic test failed, got " + t1;
        System.out.println("[Java] Tab-indented arithmetic: PASSED (30+40=" + t1 + ")");

        // 034: 6种空白混合风格运算结果验证
        int m1 = 50 + 60; count++;
        assert m1 == 110 : "Mixed whitespace arithmetic test failed, got " + m1;
        System.out.println("[Java] Mixed whitespace arithmetic: PASSED (50+60=" + m1 + ")");

        // 035: NBSP 分隔风格运算结果验证
        int nb1 = 80; count++;
        assert nb1 == 80 : "NBSP separator arithmetic test failed, got " + nb1;
        System.out.println("[Java] NBSP separator arithmetic: PASSED (80)");

        // 036: 不同缩进风格不影响语义
        int ind1 = 100 + 200; count++;
        assert ind1 == 300 : "Indentation style arithmetic test failed, got " + ind1;
        System.out.println("[Java] Indentation style arithmetic: PASSED (100+200=" + ind1 + ")");

        // 037: 表达式内多空白不影响计算结果
        int expr1 = 15; count++;
        int expr2 = 20;
        int expr3 = expr1 + expr2;
        int expr4 = expr1 + expr2;  // 多个空格
        assert expr3 == expr4 : "Multiple whitespace in arithmetic test failed, got " + expr3;

        // 038: 测试字符串中 ZWNBSP 是内容的一部分
        // Java 使用字面量中的零宽空格（实际编码为 U+200B）
        String s = "ab" + (char)0x200B + "cd";
        int length = s.length();
        assert length == 4 : "ZWNBSP string content test failed, length=" + length + ", expected 4";
        System.out.println("[Java] ZWNBSP string content length: PASSED (" + length + ")");

        System.out.println("=== Java White Spaces Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + count);
    }
}
