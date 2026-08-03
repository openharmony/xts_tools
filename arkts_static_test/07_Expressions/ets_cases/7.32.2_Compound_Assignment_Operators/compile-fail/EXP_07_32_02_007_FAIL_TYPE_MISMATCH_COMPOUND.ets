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
 * @id EXP_07_32_02_007_FAIL_TYPE_MISMATCH_COMPOUND
 * @expect compile-fail
 * @section 7.32.2
 * @design 楠岃瘉澶嶅悎璧嬪€艰繍绠楃鍦ㄧ被鍨嬩笉鍖归厤鏃剁殑缂栬瘧閿欒锛歴tring 涓嶆敮鎸?-= *= /= %= 绛夐潪鎷兼帴杩愮畻绗︼紱boolean 涓嶆敮鎸佺畻鏈鍚堬紱涓嶅悓绫诲埆绫诲瀷闂寸殑澶嶅悎
 * @note 鍙嶅悜鐢ㄤ緥锛氬鍚堣祴鍊兼湰璐ㄦ槸 lhs = ((lhs) op (rhs)) as T锛屽綋浜屽厓杩愮畻绗?op 涓嶆敮鎸佹搷浣滄暟绫诲瀷鏃讹紝搴斾骇鐢熺紪璇戦敊璇?
 */
function main(): void {
  // === string 涓嶆敮鎸侀潪 += 澶嶅悎杩愮畻绗?===

  // string -= string (string 涓嶆敮鎸?- 杩愮畻绗?
  let s1: string = 'hello';
  s1 -= 'o';

  // string *= int (string 涓嶆敮鎸?* 杩愮畻绗?
  let s2: string = 'hello';
  s2 *= 2;

  // string /= int (string 涓嶆敮鎸?/ 杩愮畻绗?
  let s3: string = 'hello';
  s3 /= 2;

  // string %= int (string 涓嶆敮鎸?% 杩愮畻绗?
  let s4: string = 'hello';
  s4 %= 2;

  // string <<= int (string 涓嶆敮鎸?<<)
  let s5: string = 'hello';
  s5 <<= 1;

  // string &= int (string 涓嶆敮鎸?&)
  let s6: string = 'hello';
  s6 &= 0xFF;

  // === boolean 涓嶆敮鎸佺畻鏈?绉讳綅澶嶅悎 ===

  // boolean += boolean (boolean 涓嶆敮鎸?+)
  let b1: boolean = true;
  b1 += false;

  // boolean -= boolean (boolean 涓嶆敮鎸?-)
  let b2: boolean = true;
  b2 -= false;

  // boolean *= boolean (boolean 涓嶆敮鎸?*)
  let b3: boolean = true;
  b3 *= false;

  // boolean /= boolean (boolean 涓嶆敮鎸?/)
  let b4: boolean = true;
  b4 /= false;

  // boolean <<= int (boolean 涓嶆敮鎸佺Щ浣?
  let b5: boolean = true;
  b5 <<= 1;

  // === 涓嶅悓绫诲瀷闂寸殑涓嶅吋瀹瑰鍚?===

  // int += string (int + string 鏃犲畾涔?
  let i1: int = 10;
  i1 += 'hello';

  // int -= string
  let i2: int = 10;
  i2 -= 'hello';

  // int &= string
  let i3: int = 10;
  i3 &= 'hello';

  // string |= int
  let str1: string = 'hello';
  str1 |= 0xFF;

  // long += boolean
  let l1: long = 100;
  l1 += true;

  // double &= int (double 涓嶆敮鎸佷綅杩愮畻)
  let d1: double = 3.14;
  d1 &= 0xFF;
}
