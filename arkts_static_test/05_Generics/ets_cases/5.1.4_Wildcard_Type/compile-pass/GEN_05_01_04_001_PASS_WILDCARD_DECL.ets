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
 * @id GEN_05_01_04_001_PASS_WILDCARD_DECL
 * @expect compile-pass
 * @section 5.1.4
 * @design 通配符类型声明通过编译
 * @note 正向用例：验证通配符在有效位置声明通过编译
 */
class MyContainer<T> {}
let c: MyContainer<Object> = new MyContainer<Object>();
