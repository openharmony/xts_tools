'use static'
/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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

import {
  Component,
  State,
  Column,
  Text,
  Button,
  Row,
  Image,
  TextAlign,
  TextArea,
  Scroll,
  Alignment,
  GridRow,
  GridRowDirection,
  GridCol,
  FlexAlign,
  Padding,
  Margin,
  $r
} from '@kit.ArkUI';
import { Position } from '@ohos.arkui.component';


import stack from '@ohos.util.Stack';
import { BusinessError } from '@ohos.base';
import { SendableClass, a } from './SendableTest';
import { TestA, TestB } from './test'

import hilog from '@ohos.hilog'

@Component
export struct TaskPoolTab {
  @State taskPoolOutPutStr: string = '';
  @State taskPoolInPutStr: string = '';
  taskPoolInPutArr: string[] = [''];
  isTaskGroup : boolean = false;
  gStack: stack<taskpool.Task> = new stack<taskpool.Task>();
  taskGroup: taskpool.TaskGroup = new taskpool.TaskGroup();


  build() {
    Column() {
      Text($r('app.string.Text_desc'))
        .width("100%")
        .height("48vp")
        .position({ x: "7%", y: "0" } as Position)
        .fontFamily("HarmonyHeiTi-Medium")
        .fontSize("16fp")
        .fontColor("#182431")
        .lineHeight(22.0)
        .fontWeight(500.0)

      Button('') {
        Row() {
          Image($r('app.media.public_add'))
            .width('20.0')
            .height('20.0')
            .margin({ left: '4.0' } as Margin)
          Text($r('app.string.Add_task'))
            .width("75%")
            .height("22")
            .fontFamily("HarmonyHeiTi-Medium")
            .fontSize("14fp")
            .fontColor("#182431")
            .textAlign(TextAlign.Center)
            .lineHeight(22.0)
            .fontWeight(500.0)
        }
      }
      .id("addButton")
      .height("10vp")
      .borderRadius("10vp")
      .backgroundColor("#00000000")
      .position({ x: "67%", y: "1.5%" } as Position)
      .width('135.0')
      .height('35.0')
      .onClick((): void => {
        this.taskAdd();
      })

      Button('') {
        Row() {
          Image($r('app.media.empties'))
            .width('20.0')
            .height('20.0')
            .margin({ left: '4.0' } as Margin)
          Text($r('app.string.Clear_desc'))
            .width("35%")
            .height("22")
            .fontFamily("HarmonyHeiTi-Medium")
            .fontSize("14fp")
            .fontColor("#182431")
            .textAlign(TextAlign.Center)
            .lineHeight(22.0)
            .fontWeight(500.0)
        }
      }
      .id("taskPoolClearButton")
      .height("10vp")
      .borderRadius("10vp")
      .backgroundColor("#00000000")
      .position({ x: "71%", y: "31.5%" } as Position)
      .width('135.0')
      .height('35.0')
      .onClick((): void => {
        this.Clear();
      })

      TextArea({placeholder:$r('app.string.Default_desc'), text:this.taskPoolInPutStr})
        .id("taskPoolInPutTextArea")
        .width("93.3%")
        .height("139vp")
        .position({ x: "3.3%", y: "48vp" } as Position)
        .textAlign(TextAlign.Start)
        .borderRadius("24vp")
        .backgroundColor("#ffffff")
        .fontFamily("HarmonyHeiTi")
        .fontSize("16fp")
        .fontColor("#182431")
        .fontWeight(400.0)
        .padding({ top: "8vp" , left: "16vp", right: "16vp", bottom: "21vp" } as Padding)
        .onChange((value: string): void => {
          this.taskPoolInPutStr = value;
          this.taskPoolInPutArr = this.taskPoolInPutStr.trim().split(',');
          this.taskPoolOutPutStr = '';
        })

      Text($r('app.string.Result_desc'))
        .width("50%")
        .height("48")
        .position({ x: "7%", y: "187vp" } as Position)
        .fontFamily("HarmonyHeiTi-Medium")
        .fontSize("16fp")
        .fontColor("#182431")
        .lineHeight(22.0)
        .fontWeight(500.0)

      Scroll() {
        Text(this.taskPoolOutPutStr)
          .id("taskPoolOutPutText")
          .fontFamily("HarmonyHeiTi")
          .fontSize("16fp")
          .fontColor("#182431")
          .fontWeight(400.0)
          .padding({ top: "8vp" , left: "16vp", right: "16vp", bottom: "21vp" } as Padding)
      }
      .id("taskPoolOutPutScroll")
      .width("93.3%")
      .height("139vp")
      .position({ x: "3.3%", y: "235vp" } as Position)
      .borderRadius("24vp")
      .backgroundColor("#ffffff")
      .align(Alignment.TopStart)

      GridRow({columns: 4.0,
        gutter: { x: '12.0', y: '12.0' },
        breakpoints: { value: ["360vp", "480vp"]},
        direction: GridRowDirection.Row}) {
        GridCol ({ span: 2.0, offset: 0.0 }) {
          Button('') {
            Text($r('app.string.Execute_After_3s_desc'))
              .width("100%")
              .height("22")
              .fontFamily("HarmonyHeiTi-Medium")
              .fontSize("16fp")
              .fontColor("#007DFF")
              .textAlign(TextAlign.Center)
              .lineHeight(22.0)
              .fontWeight(500.0)
          }
          .id("exeDelayButton")
          .height("40vp")
          .borderRadius("20vp")
          .backgroundColor("rgba(24,36,49,0.05)")
          .onClick((): void=>{
            this.executeDelay();
          })
        }

        GridCol ({ span: 2.0, offset: 0.0 }) {
          Button('') {
            Text($r('app.string.Execute_Immediately_desc'))
              .width("100%")
              .height("22")
              .fontFamily("HarmonyHeiTi-Medium")
              .fontSize("16fp")
              .fontColor("#FFFFFF")
              .textAlign(TextAlign.Center)
              .lineHeight(22.0)
              .fontWeight(500.0)
          }
          .id("exeImmButton")
          .height("40vp")
          .borderRadius("20vp")
          .backgroundColor("#007DFF")
          .onClick((): void=>{
            if(this.isTaskGroup == true) {
              this.TaskGroupExec();
            } else {
              this.executeImmediately();
            }
          })
        }

        GridCol ({ span: 2.0, offset: 0.0 }) {
          Button('') {
            Text($r('app.string.Function_Task_desc'))
              .width("100%")
              .height("22")
              .fontFamily("HarmonyHeiTi-Medium")
              .fontSize("16fp")
              .fontColor("#007DFF")
              .textAlign(TextAlign.Center)
              .lineHeight(22.0)
              .fontWeight(500.0)
          }
          .id("exeFunctionButton")
          .height("40vp")
          .borderRadius("20vp")
          .backgroundColor("rgba(24,36,49,0.05)")
          .onClick((): void=>{
            this.executeFunc();
          })
        }

        GridCol ({ span: 2.0, offset: 0.0 }) {
          Button('') {
            Text($r('app.string.Cancel_Task_desc'))
              .width("100%")
              .height("22")
              .fontFamily("HarmonyHeiTi-Medium")
              .fontSize("16fp")
              .fontColor("#FFFFFF")
              .textAlign(TextAlign.Center)
              .lineHeight(22.0)
              .fontWeight(500.0)
          }
          .id("exeCancelButton")
          .height("40vp")
          .borderRadius("20vp")
          .backgroundColor("#007DFF")
          .onClick((): void=>{
            this.cancelTask();
          })
        }

        GridCol ({ span: 4.0, offset: 0.0 }) {
          Button('') {
            Text($r('app.string.transferSendableClass'))
              .width("100%")
              .height("22")
              .fontFamily("HarmonyHeiTi-Medium")
              .fontSize("16fp")
              .fontColor("#007DFF")
              .textAlign(TextAlign.Center)
              .lineHeight(22.0)
              .fontWeight(500.0)
          }
          .id("sendableButton")
          .height("40vp")
          .borderRadius("20vp")
          .backgroundColor("rgba(24,36,49,0.05)")
          .onClick((): void=>{
            this.sendableTask();
          })
        }
      }
      .width("100%")
      .height("168vp")
      .position({ x: "0", y: "73%" } as Position)
      .padding({ left: "25vp", right: "25vp" } as Padding)
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
  }

  async executeImmediately(): Promise<void> {
    if (!this.taskPoolInPutStr.length) {
      this.taskPoolOutPutStr = "No input for the string to be sorted.\n";
      return;
    }
    let task = new taskpool.Task(strSort,this.taskPoolInPutArr);
    this.gStack.push(task);
    try {
      let result: string[] = await taskpool.execute(task) as string[];
      this.taskPoolOutPutStr += "Task executed successfully: "+ result.toString()+ "\n";
    } catch(e) {
      this.taskPoolOutPutStr += "Task executed failed: "+ (e as BusinessError).toString()+ "\n";
    }
    this.gStack.pop();
  }

  async executeDelay(): Promise<void> {
    if (!this.taskPoolInPutStr.length) {
      this.taskPoolOutPutStr = "No input for the string to be sorted.\n";
      return;
    }
    let task = new taskpool.Task(strSortDelay,this.taskPoolInPutArr);
    this.gStack.push(task);
    try {
      let result: string[] = await taskpool.execute(task) as string[];
      this.taskPoolOutPutStr += "Task executed successfully: "+ result.toString()+ "\n";
    } catch(e) {
      this.taskPoolOutPutStr += "Task executed failed: "+  (e as BusinessError).toString() + "\n";
    }
    this.gStack.pop();
  }

  async executeFunc(): Promise<void> {
    if (!this.taskPoolInPutStr.length) {
      this.taskPoolOutPutStr = "No input for the string to be sorted.\n";
      return;
    }
    try {
      let result: string[] = await taskpool.execute(strSort,this.taskPoolInPutArr) as string[];
      this.taskPoolOutPutStr += "Task executed successfully: "+ result.toString()+ "\n";
    } catch(e) {
      this.taskPoolOutPutStr += "Task executed failed: "+ (e as BusinessError).toString()+ "\n";
    }
  }

  async taskAdd(): Promise<void> {
    if (!this.taskPoolInPutStr.length) {
      this.taskPoolOutPutStr = "No input for the string to be sorted.\n";
      return;
    }
    try {
      let task: taskpool.Task = new taskpool.Task(strSort, this.taskPoolInPutArr);
      this.taskGroup.addTask(task);
      this.isTaskGroup = true;
      this.taskPoolOutPutStr += "TaskGroup addTask successfully.\n";
    } catch (e) {
      this.taskPoolOutPutStr += "TaskGroup addTask failed: "+ (e as BusinessError).toString()+ "\n";
    }
  }

  Clear(): void {
    this.taskPoolInPutStr = '';
    this.taskPoolInPutArr = this.taskPoolInPutStr.trim().split(',');
    this.taskPoolOutPutStr = '';
  }

  async TaskGroupExec(): Promise<void> {
    try {
      let res = await taskpool.execute(this.taskGroup);
      this.taskPoolOutPutStr += "TaskGroup executed successfully: "+ res.toString()+ "\n";
    } catch(e) {
      this.taskPoolOutPutStr += "TaskGroup executed failed: "+ (e as BusinessError).toString()+ "\n";
    }
    this.isTaskGroup = false;
  }

  async cancelTask(): Promise<void> {
    if (this.gStack.isEmpty()) {
      this.taskPoolOutPutStr += "The current task queue has no cancellable tasks."+ "\n";
    } else {
      let task: taskpool.Task = this.gStack.peek() as taskpool.Task;
      try {
        taskpool.cancel(task);
        this.taskPoolOutPutStr += "Task canceled successfully."+ "\n";
        this.gStack.pop();
      } catch(e) {
        this.taskPoolOutPutStr += "Task canceled failed: "+ (e as BusinessError).toString()+ "\n";
      }
    }
  }

  async sendableTask(): Promise<void> {
    // 定义主线程异步锁sendableTask_lock
    let lock: AsyncLock = AsyncLock.request("sendableTask_lock");
    let count: number = 0.0;
    lock.lockAsync(async () => {
      // 主线程调用实例a.data1的方法setCount、getCount
      a.data1.setCount(111.0);
      count = await a.data1.getCount();
      console.info("this data1 count is: " + await a.data1.getCount());
    })
    let task: taskpool.Task = new taskpool.Task(createSendableData, a);
    try {
      await taskpool.execute(task);
      this.taskPoolOutPutStr += "sendableTask execute successfully."+ "\n";
      // 访问子线程返回的实例a中的各个属性
      this.taskPoolOutPutStr += "Sendable data TestA v1 is: " + a.data1.v1 + "\n";
      this.taskPoolOutPutStr += "Sendable data TestA v2 is: " + a.data1.v2 + "\n";
      this.taskPoolOutPutStr += "Sendable data TestA v3 is: " + a.data1.v3 + "\n";
      this.taskPoolOutPutStr += "Sendable data TestA count is: " + count + "\n";
      this.taskPoolOutPutStr += "Sendable data TestB v1 length is: " + a.data2.v1.length + "\n";
      this.taskPoolOutPutStr += "Sendable data TestB v2 has key: " + a.data2.v2.has(100.0) + "\n";
      this.taskPoolOutPutStr += "Sendable data TestB v3 size is: " + a.data2.v3.size + "\n";
    } catch(e) {
      this.taskPoolOutPutStr += "Task execute failed: "+ (e as BusinessError).toString()+ "\n";
    }
  }
}


function strSort(inPutArr: string[]) : string[] {
  let newArr: string[] = inPutArr.sort();
  return newArr;
}


function strSortDelay(inPutArr: string[]) : string[] {
  let start: number= new Date().getTime();
  while (new Date().getTime() - start < 3000.0) {
    continue;
  }
  let newArr: string[] = inPutArr.sort();
  return newArr;
}


async function createSendableData(data: SendableClass): Promise<void> {
  // 定义taskpool子线程异步锁sendableTask_lock
  let lock: AsyncLock = AsyncLock.request("sendableTask_lock");

  // 构造TestA、TestB实例，组装SendableClass实例
  let d1: TestA = new TestA();
  d1.v1 = 1010.0;
  d1.v2 = "aaa";
  d1.v3 = true;
  let d2: TestB = new TestB();
  d2.v2.set(100.0, "aaa");
  for(let i: number = 0.0;i < 1000.0;i++) {
    d2.v1.push(i);
  }
  d2.v3.add("hello");

  lock.lockAsync(async () => {
    // 子线程调用实例方法setCount、getCount
    await d1.setCount(10.0);
    console.info("taskpool: this data1 count is: " + await d1.getCount());
  })

  data.data1 = d1;
  data.data2 = d2;
}