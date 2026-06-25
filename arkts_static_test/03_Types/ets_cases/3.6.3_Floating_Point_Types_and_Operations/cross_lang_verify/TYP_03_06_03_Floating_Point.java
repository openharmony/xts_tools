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
 * Java cross-language verification for 3.6.3 Floating-Point Types and Operations
 */
class TYP_03_06_03_Floating_Point {
    public static void main(String[] args) {
        double nan = Double.NaN;
        double inf = Double.POSITIVE_INFINITY;
        System.out.println("3.6.3: NaN != NaN = " + (nan != nan));
        System.out.println("3.6.3: Infinity > 1e308 = " + (inf > 1e308));
    }
}
