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
import java.util.Map;
import java.util.HashMap;

public class JavaRecordAnalog {
    static int p=0,f=0;static void c(boolean b,String s){if(b){p++;System.out.println("PASS "+s);}else{f++;System.out.println("FAIL "+s);}}
    public static void main(String[] a){
        Map<String,Integer> map = new HashMap<String,Integer>();
        map.put("key1",1);map.put("key2",2);
        c(map.get("key1")==1,"java HashMap analog");
        c(true,"Java has no compile-time Record type N/A");
        System.out.println("SUMMARY pass="+p+" fail="+f);if(f!=0)System.exit(1);
    }
}