'use static'
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
  CustomDialogController,
  State,
  Link,
  Row,
  Image,
  $r,
  ImageFit,
  Button,
  ClickEvent,
  Padding
} from '@kit.ArkUI';

import { DeviceDialog } from './Dialog';
import { DeviceDataModel } from '../model/DeviceDataModel';
// import { Logger } from 'library';
import Logger from '../../../../../Library/src/main/ets/utils/Logger';
import { RemoteDeviceModel } from '../model/RemoteDeviceModel';
import common from '@ohos.app.ability.common';
import {Context, UIContext} from '@ohos.arkui.UIContext';
import deviceManager from '@ohos.distributedDeviceManager';
import { RecordData } from '@ohos.base';

const TAG: string = '[DistributedButton]';
const DEVICE_DISCOVERY_RANGE: int = 1000;

class AbilityParameter {
  public isStage: string;
  constructor(isStage: string){
    this.isStage = isStage;
  }
}

@Component
export struct DistributedButton {
  private selectedIndex: number = 0;
  private remoteDeviceModel: RemoteDeviceModel | null = null;
  private dialogController: CustomDialogController | null = null;
  @State deviceList: DeviceDataModel[] = [];
  @Link isDistributed: boolean;
  @State dialogShow: boolean = false;

  clearSelectState() {
    this.deviceList = [];
    this.dialogShow = false;
    this.dialogController!.close();
  }

  selectDevice() {
    Logger.info(TAG, 'start ability ......');
    this.isDistributed = true;
    if (this.remoteDeviceModel === null || (this.remoteDeviceModel?.discoverList?.length ?? 0) <= 0){
      Logger.info(TAG, `continue unauthed device:${JSON.stringify(this.deviceList)}`);
      this.startAbility(this.deviceList[this.selectedIndex as int].networkId!);
      this.clearSelectState();
      return;
    }
    Logger.info(TAG, 'start ability1, needAuth：');

    this.remoteDeviceModel?.authenticateDevice(this.deviceList[this.selectedIndex as int],
      () => {
      Logger.info(TAG, 'auth and online finished');
      for (let i: int = 0; i < this.remoteDeviceModel!.deviceList.length; i++) {
        if (this.remoteDeviceModel!.deviceList[i].deviceName ===
        this.deviceList[this.selectedIndex as int].deviceName) {
          this.startAbility(this.remoteDeviceModel!.deviceList[i].networkId as string);
        }
      }
    })
    Logger.info(TAG, 'start ability2 ......');
    this.clearSelectState();
  }

  handleSelectDevice (index: number) {
    Logger.info(TAG, 'selectedIndexChange');
    this.selectedIndex = index;
    if (this.selectedIndex === 0) {
      Logger.info(TAG, 'stop ability');
      this.dialogController!.close();
      this.isDistributed = false;
      this.deviceList = [];
      this.dialogShow = false;
      return;
    }
    this.selectDevice();
  }

  startAbility(deviceId: string) {
    Logger.info(TAG, `startAbility deviceId:${deviceId}`);

    let context = UIContext.getFocusedUIContext()?.getHostContext() as common.UIAbilityContext;
    let wantParameters :Record<string, RecordData>={
      'isStage': 'Stage'
    }
    context.startAbility({
      bundleName: 'com.samples.distributedfilemanager',
      abilityName: 'EntryAbility',
      deviceId: deviceId,
      parameters: wantParameters
    }).then((data) => {
      Logger.info(TAG, `start ability finished:${JSON.stringify(data)}`);
    });
  }

  showDialog() {
    this.dialogShow = true;
    this.remoteDeviceModel!.registerDeviceListCallback(() => {
      this.deviceList = [];
      Logger.info(TAG, 'registerDeviceListCallback, callback entered');
      this.deviceList.push(new DeviceDataModel('0', 'Local device', '0', false, '', DEVICE_DISCOVERY_RANGE));
      let deviceTempList = this.remoteDeviceModel!.discoverList.length > 0 ? this.remoteDeviceModel!.discoverList :
      this.remoteDeviceModel!.deviceList;
      for (let i = 0; i < deviceTempList.length; i++) {
        Logger.info(TAG, `device ${i}/${deviceTempList.length} deviceId=${deviceTempList[i].deviceId}
        deviceName=${deviceTempList[i].deviceName} deviceType=${deviceTempList[i].deviceType}`);
        this.deviceList.push(new DeviceDataModel(deviceTempList[i].deviceId, deviceTempList[i].deviceName,
          deviceTempList[i].deviceType, (this.selectedIndex === i), deviceTempList[i].networkId as string,
          DEVICE_DISCOVERY_RANGE));
      }
      if (this.dialogShow) {
        this.dialogController!.close();
        this.dialogController = new CustomDialogController({
          builder: DeviceDialog({
            deviceList: this.deviceList,
            selectedIndex: this.selectedIndex,
            handleSelectDevice: this.handleSelectDevice
          }),
          autoCancel: true
        });
        this.dialogController!.open();
      }
    })
    if (!this.dialogController) {
      this.dialogController = new CustomDialogController({
        builder: DeviceDialog({
          deviceList: this.deviceList,
          selectedIndex: this.selectedIndex,
          handleSelectDevice: this.handleSelectDevice
        }),
        autoCancel: true
      });
      this.dialogController?.open();
    }
  }

  build() {
    Row() {
      Image($r('app.media.ic_hop_normal'))
        .width(24)
        .height(24)
        .objectFit(ImageFit.Contain)
        .onClick((event:ClickEvent) => {
          Logger.info(TAG, 'showDialog start');
          this.showDialog();
        })
    }
    .constraintSize({ minHeight: 70 })
    .padding({ left: 15, right: 15 } as Padding)
  }
}