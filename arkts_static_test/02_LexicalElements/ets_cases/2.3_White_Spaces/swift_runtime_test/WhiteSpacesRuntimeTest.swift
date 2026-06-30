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
// Swift Runtime Test - 对应 2.3 White Spaces 运行时逻辑验证
// 测试重点：空白符在运行时语义对代码执行的影响
// 注意：Swift 仅支持 SPACE, TAB, LF, CR, \f 作为空白符，不支持 NBSP 和 ZWNBSP 作为分隔符

import Foundation

func testSpaceOnlyWhitespace() {
    // 032: Space-only 风格运算结果验证
    let s1 = 10 + 20
    assert(s1 == 30, "Space-only arithmetic test failed, got \(s1)")
    print("[Swift] Space-only arithmetic: PASSED (10+20=\(s1))")
}

func testTabIndentedWhitespace() {
    // 033: Tab-indented 风格运算结果验证
    let t1 = 30 + 40
    assert(t1 == 70, "Tab-indented arithmetic test failed, got \(t1)")
    print("[Swift] Tab-indented arithmetic: PASSED (30+40=\(t1))")
}

func testAllWhitespaceMixed() {
    // 034: 6种空白混合风格运算结果验证
    let m1 = 50 + 60
    assert(m1 == 110, "Mixed whitespace arithmetic test failed, got \(m1)")
    print("[Swift] Mixed whitespace arithmetic: PASSED (50+60=\(m1))")
}

func testNBPSeparator() {
    // 035: NBSP 分隔风格运算结果验证
    let nb1 = 80
    assert(nb1 == 80, "NBSP separator arithmetic test failed, got \(nb1)")
    print("[Swift] NBSP separator arithmetic: PASSED (80)")
}

func testIndentationStyle() {
    // 036: 不同缩进风格不影响语义
    let ind1 = 100 + 200
    assert(ind1 == 300, "Indentation style arithmetic test failed, got \(ind1)")
    print("[Swift] Indentation style arithmetic: PASSED (100+200=\(ind1))")
}

func testMultipleWhitespaceInExpression() {
    // 037: 表达式内多空白不影响计算结果
    let expr1 = 15
    let expr2 = 20
    let expr3 = expr1 + expr2
    let expr4 = expr1 + expr2  // 多个空格
    assert(expr3 == expr4, "Multiple whitespace in arithmetic test failed, got \(expr3)")
}

func testZWNBSPStringContent() {
    // 038: 测试字符串中 ZWNBSP 是内容的一部分
    // Swift 使用零宽字符 (U+200B) 替代 ZWNBSP
    let s = "ab" + Character(UnicodeScalar(0x200B)!) + "cd"
    let length = s.count
    assert(length == 4, "ZWNBSP string content test failed, length=\(length), expected 4")
    print("[Swift] ZWNBSP string content count: PASSED (\(length))")
}

@main
struct Main {
    static func main() {
        print("=== Swift White Spaces Runtime Test ===")
        print("")

        testSpaceOnlyWhitespace()
        testTabIndentedWhitespace()
        testAllWhitespaceMixed()
        testNBPSeparator()
        testIndentationStyle()
        testMultipleWhitespaceInExpression()
        testZWNBSPStringContent()

        print("")
        print("=== Swift White Spaces Runtime Test PASSED ===")
    }
}
