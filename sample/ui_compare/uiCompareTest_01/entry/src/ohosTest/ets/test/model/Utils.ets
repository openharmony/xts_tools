/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import {Driver , ON} from '@ohos.UiTest'

export default class Utils {

  static  async  sleep(time : number) :Promise<void> {
    const result:string = await new Promise((resolve:Function)=>{
      setTimeout(()=> {
        resolve('sleep ok')
      },time)
    });
    console.info(result);
  }
  static  async waitAsync (ms:number):Promise<void>{
     return new Promise<void>((resolve)=>{
       setTimeout(resolve,ms)
     })

  }

  static  async clickComponentByKey (componentKey :string){
     let driver = Driver.create();
     let component = await driver.waitForComponent(ON.id(componentKey), 1000)
     await component.click();

  }


}




