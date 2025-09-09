'use static'
/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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
  TextArea,
  TextAlign,
  Scroll,
  Alignment,
  GridRow,
  GridRowDirection,
  Row,
  GridCol,
  Button,
  FlexAlign,
  Padding,
  $r,
  EAWorker,
} from '@kit.ArkUI';
import { Position } from '@ohos.arkui.component';

class MessageObjectIn {
  e: string[]

  constructor(e: string[]) {
    this.e = e;
  }
}
class MessageObjectOut {
  e: string

  constructor(e: string) {
    this.e = e;
  }
}

@Component
export struct WorkerTab {
  @State jsWorkerOutPutStr: string = '';
  @State jsWorkerInPutStr: string = '';
  jsWorkerInPutArr: string[] = [''];
  isDone: boolean = false;
  // myWorker: worker.ThreadWorker = new worker.ThreadWorker("entry/ets/workers/Worker.ts");

  build() {
    Column() {
      Text($r('app.string.Text_desc'))
        .width("100%")
        .height("48vp")
        .position({ x: "7%", y: "0vp" } as Position)
        .fontFamily("HarmonyHeiTi-Medium")
        .fontSize("16fp")
        .fontColor("#182431")
        .lineHeight(22.0)
        .fontWeight(500.0)

      TextArea({text:this.jsWorkerInPutStr})
        .id("jsWorkerInPutTextArea")
        .width("93.3%")
        .height("139vp")
        .position({ x: "3.3%", y: "48vp" } as Position)
        .textAlign(TextAlign.Start)
        .fontFamily("HarmonyHeiTi")
        .fontSize("16fp")
        .fontColor("#182431")
        .fontWeight(400.0)
        .padding({ top: "8vp" , left: "16vp", right: "16vp", bottom: "21vp" } as Padding)
        .borderRadius("24vp")
        .backgroundColor("#ffffff")
        .onChange((value: string): void => {
          this.jsWorkerInPutStr = value;
          this.jsWorkerInPutArr = value.trim().split(',');
          this.jsWorkerOutPutStr = '';
        })

      Text($r('app.string.Result_desc'))
        .width("100%")
        .height("48")
        .position({ x: "7%", y: "187vp" } as Position)
        .fontFamily("HarmonyHeiTi-Medium")
        .fontSize("16fp")
        .fontColor("#182431")
        .lineHeight(22.0)
        .fontWeight(500.0)

      Scroll() {
        Text(this.jsWorkerOutPutStr)
          .id("jsWorkerOutPutText")
          .fontFamily("HarmonyHeiTi")
          .fontSize("16fp")
          .fontColor("#182431")
          .fontWeight(400.0)
          .padding({ top: "8vp" , left: "16vp", right: "16vp", bottom: "21vp" } as Padding)
      }
      .id("jsWorkerOutPutScroll")
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
            Text($r('app.string.Clear_desc'))
              .width("100%")
              .height("22")
              .fontFamily("HarmonyHeiTi-Medium")
              .fontSize("16fp")
              .fontColor("#007DFF")
              .textAlign(TextAlign.Center)
              .lineHeight(22.0)
              .fontWeight(500.0)
          }
          .id("workerClearButton")
          .height("40vp")
          .borderRadius("20vp")
          .backgroundColor("rgba(24,36,49,0.05)")
          .onClick((): void=>{
            this.jsWorkerInPutStr = '';
            this.jsWorkerOutPutStr = '';
          })
        }

        GridCol ({ span: 2.0, offset: 0.0 }) {
          Button('') {
            Text($r('app.string.SortString_desc'))
              .width("100%")
              .height("22")
              .fontFamily("HarmonyHeiTi-Medium")
              .fontSize("16fp")
              .fontColor("#FFFFFF")
              .textAlign(TextAlign.Center)
              .lineHeight(22.0)
              .fontWeight(500.0)
          }
          .id("workerStrSort")
          .height("40vp")
          .borderRadius("20vp")
          .backgroundColor("#007DFF")
          .onClick((): void=>{
            this.executeWorkerFunc(this.jsWorkerInPutArr);
          })
        }
      }
      .width("100%")
      .height("40vp")
      .position({ x: "0", y: "555vp" } as Position)
      .padding({ left: "24vp", right: "24vp" } as Padding)
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
  }

  async executeWorkerFunc(inPutArr: string[]): Promise<void> {
    if (!this.jsWorkerInPutStr.length) {
      this.jsWorkerOutPutStr = "No input for the string to be sorted.\n";
      return;
    }

    let currentworker = EAWorker.current();
    let myWorker = new EAWorker();
    myWorker.start();

    let strFlag: boolean = false;
    let outPutStr: string = '';
    const currentCB = (msg: concurrency.Message) => {
      outPutStr = (msg.getObject() as MessageObjectOut).e;
      strFlag = true;
      this.jsWorkerOutPutStr = outPutStr;
    }
    let currentHandler = new concurrency.MessageHandler(currentCB, currentworker);
    const workerCB = (msg: concurrency.Message) => {
      let oldArr = (msg.getObject() as MessageObjectIn).e;
      let newArr: string = strSort(oldArr);
      let messageObjNew = new MessageObjectOut(newArr);
      let msg2 = new concurrency.Message(1, messageObjNew, currentHandler);
      currentHandler.sendMessage(msg2);
    }
    let workerHandler = new concurrency.MessageHandler(workerCB, myWorker);
    let messageObjIn = new MessageObjectIn(inPutArr);
    let workerMessage = new concurrency.Message(1, messageObjIn, workerHandler);
    workerMessage.sendToTarget();

    // while (!strFlag) {
    //   // await promiseCase();
    // }
    const end = Date.now() + 500;
    while (Date.now() < end) {
    }
    this.jsWorkerOutPutStr = outPutStr;
  }
}

function promiseCase() : Promise<void> {
  let p: Promise<void> = new Promise<void>((resolve: (value: PromiseLike<void>) => void, reject: (value: Error) => void) => {
    setTimeout(() => {
      reject(new Error('execute timeout ' + 100 + 'ms'));
    }, 10);
  })
  return p;
}

function strSort(inPutArr: string[]) : string {
  let newArr = inPutArr.sort();
  return newArr.toString();
}