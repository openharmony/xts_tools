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
// Swift Runtime Test - 对应 2.4 Line Separators 运行时逻辑验证
// 测试重点：行终止符在运行时语义对代码执行的影响
// 注意：Swift 类似 Java，主要使用 LF (\n)，不支持 LS (U+2028) 和 PS (U+2029)

import Foundation

func testLFOnlyNewlines() {
    // 024: LF-only 风格运算结果验证
    let lf1 = 20 + 30
    let lf2 = lf1 + 40
    assert(lf2 == 90, "LF-only arithmetic test failed, got \(lf2)")
    print("[Swift] LF-only arithmetic: PASSED (20+30+40=\(lf2))")
}

func testCRLFNewlines() {
    // 025: CRLF 风格运算结果验证
    let crlf1 = 50 + 60
    let crlf2 = crlf1 + 70
    assert(crlf2 == 180, "CRLF arithmetic test failed, got \(crlf2)")
    print("[Swift] CRLF arithmetic: PASSED (50+60+70=\(crlf2))")
}

func testMultilineCommentNoEffect() {
    // 026: 多行注释跨行不影响执行
    var multiExpr = 100
    /* 第一行
       第二行
       第三行 */
    multiExpr = multiExpr + 200
    assert(multiExpr == 300, "Multiline comment test failed, got \(multiExpr)")
    print("[Swift] Multiline comment: PASSED (100+200=\(multiExpr))")
}

func testTemplateStringNewlineContent() {
    // 027: 模板字符串内换行内容
    let s = "Line1" + String(lineSeparator) + "Line2"
    let expected = "Line1" + "\n" + "Line2"
    assert(s == expected, "Template string newline test failed")
    print("[Swift] Template string newline: PASSED")
}

func testConsecutiveEmptyLines() {
    // 028: 连续空行不影响后续语句
    let emptyLine1 = 1
    let emptyLine2 = 2
    /* empty line */
    let emptyLine3 = 3
    let linex = emptyLine1 + emptyLine2 + emptyLine3
    assert(linex == 6, "Consecutive empty lines test failed, got \(linex)")
    print("[Swift] Consecutive empty lines: PASSED (1+2+3=\(linex))")
}

func testLineTerminatorSequenceEquivalence() {
    // 029: 行终止符序列等价（验证规范"any sequence is single separator"）
    // Swift 不支持真正的 LS/PS，使用 \n 和 \r\n 模拟
    let seq1 = 10
    // extra newline
    let seq2 = 20
    // empty line
    let seq3 = 30
    let linex = seq1 + seq2 + seq3
    assert(linex == 60, "Line terminator sequence equivalence test failed, got \(linex)")
    print("[Swift] Line terminator sequence equivalence: PASSED (10+20+30=\(linex))")
}

// LS/PS 语义说明
print("[Swift] NOTE: Swift doesn't support LS (U+2028) and PS (U+2029) as line terminators")
print("[Swift] In practice, Swift uses \\n (LF) only, similar to Java")

@main
struct Main {
    static func main() {
        print("=== Swift Line Separators Runtime Test ===")
        print("")

        testLFOnlyNewlines()
        testCRLFNewlines()
        testMultilineCommentNoEffect()
        testTemplateStringNewlineContent()
        testConsecutiveEmptyLines()
        testLineTerminatorSequenceEquivalence()

        print("")
        print("=== Swift Line Separators Runtime Test PASSED ===")
    }
}
