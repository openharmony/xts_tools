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
 * Java equivalent of EXP2_17_08_011/012_FAIL_BREAK_OUTSIDE_LOOP / CONTINUE_OUTSIDE_LOOP
 * Tests: break/continue outside loop — Java also produces compile errors
 */
public class JavaBreakContinueFail {
    public static void main(String[] args) {
        // These are commented out because Java would also reject them at compile time.
        // In Java, "break outside loop" and "continue outside loop" are compile errors
        // just like in ArkTS.

        // break outside loop:
        // int x = 10;
        // if (x > 5) { break; }  // Error: break outside switch or loop

        // continue outside loop:
        // int y = 0;
        // continue;  // Error: continue outside of loop
    }
}
