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
public class JavaDefaults {
    static int defaultInt;
    static boolean defaultBool;
    static Object defaultObj;
    static int pass=0,fail=0;
    static void c(boolean b,String s){if(b){pass++;System.out.println("PASS "+s);}else{fail++;System.out.println("FAIL "+s);}}
    public static void main(String[]a){
        c(defaultInt==0,"java int field default 0");
        c(defaultBool==false,"java boolean field default false");
        c(defaultObj==null,"java Object field default null");
        System.out.println("SUMMARY pass="+pass+" fail="+fail);if(fail!=0)System.exit(1);
    }
}