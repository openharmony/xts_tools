/*
 * Copyright (c) 2023 Hunan OpenValley Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import worker from '@ohos.worker';
import image from '@ohos.multimedia.image';
import emitter from '@ohos.events.emitter';
import Logger from '../utils/Logger';
import QRCode from '../utils/DeCode';

const TAG = '[DeCodeWorker]';
let parent = worker.workerPort;

// 处理来自主线程的消息
parent.onmessage = async function (message): Promise<void> {
  Logger.info(TAG, `mAudioCapturer message from worker: `);
  Logger.info(TAG, `mAudioCapturer message from worker: ` + message.data.h);
  Logger.info(TAG, `mAudioCapturer message from worker: ` + message.data.w);
  let h: number = message.data.h;
  let w: number = message.data.w;
  let buffer: ArrayBuffer = message.data.buffer;
  let imageSourceApi = image.createImageSource(buffer)
  let pixelMap: image.PixelMap = await imageSourceApi.createPixelMap()
  try {
    let qrCode: QRCode = new QRCode();
    Logger.info(TAG, `mAudioCapturer buffer==== from worker: ` + buffer.byteLength);
    let text: string = await qrCode.decode(pixelMap, {
      width: w, height: h
    });
    parent.postMessage({
      'text': text
    })
    Logger.info(TAG, 'text==JSON.stringify===' + JSON.stringify(text))
    Logger.info(TAG, 'text=====' + text)
    let eventDataText = {
      data: {
        'text': text
      }
    };
    let innerEventText = {
      eventId: 1,
      priority: emitter.EventPriority.IMMEDIATE
    };
    Logger.info(TAG, 'emit=====before')
    emitter.emit(innerEventText, eventDataText);
    Logger.info(TAG, 'emit=====after')
  } catch (err) {
    Logger.info(TAG, 'err=====err' + err)
    parent.postMessage({
      'text': ''
    })
  }
};

