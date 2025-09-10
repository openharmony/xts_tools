'use static'
/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import common from '@ohos.app.ability.common';
import distributedDataObject from '@ohos.data.distributedDataObject';
import distributedDeviceManager from '@ohos.distributedDeviceManager';
import fs from '@ohos.file.fs';
import Want from '@ohos.app.ability.Want';
import { BusinessError } from '@ohos.base';
import { Caller } from '@ohos.app.ability.UIAbility';
import { Logger } from 'library';

class SourceObject {
  public from: string;
  public localFileUriList: string[];
  public disFileUriList: string[];
  public disFileList: string[];

  constructor(from: string, localFileUriList: string[], disFileUriList: string[], disFileList: string[]) {
    this.from = from;
    this.localFileUriList = localFileUriList;
    this.disFileUriList = disFileUriList;
    this.disFileList = disFileList;
  }
}

const TAG: string = 'DataObjectModel';
let caller: Caller | null = null;

export class DataObject {
  public distributedObject: distributedDataObject.DataObject;
  private sessionId: string = '';

  createDataObject(context: common.UIAbilityContext, sessionId?: string) {
    if (this.distributedObject) {
      Logger.error(TAG, 'create dataObject already');
      return;
    }

    // 创建分布式数据对象实例
    let source: SourceObject = new SourceObject('', [], [], []);
    this.distributedObject = distributedDataObject.create(context, source);
    // 设置数据变更监听
    this.distributedObject?.on('change', (sessionId: string, fields: Array<string>) => {
      Logger.info(TAG, `change, sessionId: ${sessionId}, fields: ${JSON.stringify(fields)}`);
      for (let index: int = 0; index < fields.length; index++) {
        console.info("changed !" + fields[index]);
      }
    });
    // 设置同步sessionId加入组网
    if (sessionId) {
      this.sessionId = sessionId;
    }
    this.distributedObject?.setSessionId(this.sessionId);
  }

  // 调用端调用startAbilityByCall接口拉起对端Ability
  callRemote(context: common.UIAbilityContext) {
    if (caller) {
      Logger.error(TAG, 'call remote already');
      return;
    }

    // 调用genSessionId接口创建一个sessionId、获取对端设备networkId
    if (!this.sessionId) {
      this.sessionId = distributedDataObject.genSessionId();
    }
    Logger.info(TAG, `gen sessionId: ${this.sessionId}`);
    let deviceId = getRemoteDeviceId();
    if (deviceId == '') {
      Logger.error(TAG, 'no remote device');
      return;
    }
    Logger.info(TAG, `get remote deviceId: ${deviceId}`);

    let want: Want = {
      bundleName: 'com.samples.distributedfilemanager',
      abilityName: 'EntryAbility',
      deviceId: deviceId,
      parameters: {
        'ohos.aafwk.param.callAbilityToForeground': true,
        'distributedSessionId': this.sessionId
      }
    }
    try {
      context.startAbilityByCall(want).then((res) => {
        if (!res) {
          Logger.error(TAG, 'startAbilityByCall failed');
        }
        Logger.info(TAG, 'startAbilityByCall success');
        caller = res;
      })
    } catch (e) {
      let err = e as BusinessError;
      Logger.error(TAG, `get remote deviceId error, error code: ${err.code}, error message: ${err.message}`);
    }
  }

  update(from: string, localFileUriList: (string |undefined)[], disFileUriList: (string |undefined)[],
    disFileList: (string |undefined)[]) {
    Logger.info(TAG, `doUpdate,${from},${localFileUriList},${disFileUriList},${disFileList}`)
    this.distributedObject!.from = from;
    this.distributedObject!.localFileUriList = localFileUriList;
    this.distributedObject!.disFileUriList = disFileUriList;
    this.distributedObject!.disFileList = disFileList;
  }

  clear() {
    try {
      let disFileArray: Array<string> = this.distributedObject!.disFileList;
      disFileArray.forEach(item => {
        //判断uri前缀是否有“file+”，如果有则为文件
        if (item.includes("file+")) {
          item = item.substring(5, item.length);
          fs.unlinkSync(item);
        } else {
          fs.rmdirSync(item);
        }
      })
    } catch (err: BusinessError) {
      Logger.error(TAG, `delete failed, code is ${err.code}, message is ${err.message}`);
    }
    this.distributedObject!.from = '';
    this.distributedObject!.localFileUriList = [];
    this.distributedObject!.disFileUriList = [];
    this.distributedObject!.disFileList = [];
  }
}

// 获取可信组网中的设备
function getRemoteDeviceId() {
  let deviceId = '';
  try {
    let deviceManager = distributedDeviceManager.createDeviceManager('com.samples.distributedfilemanager');
    let devices = deviceManager.getAvailableDeviceListSync();
    devices.forEach(device => {
      if (device?.networkId) {
        deviceId = device.networkId;
      }
    });
  } catch (e) {
    let err = e as BusinessError;
    Logger.error(TAG, `get remote deviceId error, error code: ${err.code}, error message: ${err.message}`);
  }
  return deviceId;
}

export default new DataObject();
