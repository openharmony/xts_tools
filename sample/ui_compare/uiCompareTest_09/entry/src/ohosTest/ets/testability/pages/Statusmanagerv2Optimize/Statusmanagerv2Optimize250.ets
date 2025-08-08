/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
//使用以下ets
@ObservedV2
class User_250 {
  @Trace name: string;
  @Trace age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }
}
@Entry
@ComponentV2
struct Parent_250 {

  @Provider('data1') users1: User_250 = new User_250('XIAOL',18);

  build() {
    Column() {
      Text(`name: ${this.users1.age}`).fontSize(30)

      Divider()
      Child_250()

    }
  }
}

@ComponentV2
struct Child_250 {
  @Consumer('data1') users1: User_250= new User_250('XIAOL',18);

  build() {
    Column() {
      Text(`name: ${this.users1.name}`).fontSize(30)
      Button('add new user')
        .onClick(() => {
          this.users1= new User_250('Molly', 19);//Provider
        })
        .id('btn1')

      Button('change name')
        .onClick(() => {
          this.users1.name = 'Shelly';//Trace
        })
        .id('btn2')
    }
  }
}