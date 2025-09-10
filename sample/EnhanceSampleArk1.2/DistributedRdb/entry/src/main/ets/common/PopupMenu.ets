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
  Resource,
  Component,
  $r,
  CustomDialogController,
  Link,
  Stack,
  Alignment,
  Column,
  ForEach,
  Row,
  Image,
  ImageFit,
  Text,
  Color,
  Divider,
  Padding,
  Margin,
  ClickEvent,
} from '@kit.ArkUI';

import deviceManager from '@ohos.distributedDeviceManager';
import common from '@ohos.app.ability.common'
import router from '@ohos.router'
import { RecordData } from '@ohos.base'

import Logger from '../model/Logger'
import RemoteDeviceModel from '../model/RemoteDeviceModel'
import { BUNDLE, ABILITY } from '../model/RdbConst'
import { DeviceDialog } from '../common/DeviceDialog'
import { StateType } from '../pages/Index';
import { UIContext } from '@ohos.arkui.UIContext';
import { WantParameters } from '../model/Contact'
import { SyncState } from '../model/LiteStore'

const TAG: string = 'PopupMenu'

interface menuResourceItem {
  text: Resource,
  icon: Resource
}
@Component
export struct PopupMenu {
  private menuResource: Array<menuResourceItem> = new Array<menuResourceItem>();
  private handleStartAbility: () => void = () => {};
  private deviceList: Array<deviceManager.DeviceBasicInfo> = new Array<deviceManager.DeviceBasicInfo>();
  private dialogController: CustomDialogController | null = null;
  @Link state: StateType =new StateType(false,false,false,0,SyncState.ManualSync,'',1);
  aboutToAppear() {
    this.menuResource.push(
      { icon: $r('app.media.setting'), text: $r('app.string.setting') },
      { icon: $r('app.media.connect'), text: $r('app.string.connect') })
  }
  selectDevice() {
    Logger.info(TAG, 'start ability ......')
    if (RemoteDeviceModel === null || RemoteDeviceModel.discoverList.length <= 0) {
      Logger.info(TAG, `start ability device:${JSON.stringify(this.deviceList)}`)
      if (this.deviceList[this.state.selectedIndex as int].networkId != undefined) {
        this.startAbility(this.deviceList[this.state.selectedIndex as int].networkId as string)
        this.clearSelectState()
      }
      return
    }
    Logger.info(TAG, 'start ability, needAuth')
    RemoteDeviceModel.authenticateDevice(this.deviceList[this.state.selectedIndex as int], (device: deviceManager.DeviceBasicInfo) => {
      Logger.info(TAG, 'auth and online finished')
      if (device.networkId != undefined) {
        this.startAbility(device.networkId as string)
      }
    })
    Logger.info(TAG, 'start ability2 ......')
    this.clearSelectState()
    this.state.popupMenu = false;
    this.state.opacityValue = 1;
  }

  onSelectedIndexChange(selectedIndex: number) {
    Logger.info(TAG, `selectedIndexChange,selectedIndex=${selectedIndex}`)
    if (selectedIndex === 0) {
      Logger.info(TAG, 'stop sync')
      let context = this.getUIContext().getHostContext() as common.UIAbilityContext
      let wantParameters :Record<string, RecordData>={
        'isStage': 'EXIT'
      }
      context.startAbility({
        bundleName: BUNDLE,
        abilityName: ABILITY,
        deviceId: this.deviceList[this.state.selectedIndex as int].deviceId,
        parameters: wantParameters
      })
      this.state.isDistributed = false
      this.state.selectedIndex = 0
      this.state.distributedDevice = ''
      if(this.dialogController != undefined) {
        this.dialogController?.close()
      }
      this.deviceList = new Array<deviceManager.DeviceBasicInfo>();
      return
    }
    this.state.selectedIndex = selectedIndex
    this.selectDevice()
  }

  async startAbility(deviceId: string) {
    Logger.info(TAG, `startAbility deviceId:${deviceId}`)
    let localDevice = RemoteDeviceModel.getLocalDevice()
    Logger.info(TAG, `startAbility localDevice:${localDevice}`)
    let context = this.getUIContext().getHostContext() as common.UIAbilityContext
    // todo
    let wantParameters :Record<string, RecordData>={
      'isStage': 'Stage',
      'dmsSrcNetworkId': localDevice

    }
    await context.startAbility({
      bundleName: BUNDLE,
      abilityName: ABILITY,
      deviceId: deviceId,
      parameters: wantParameters
    })
    setTimeout(() => {
      this.state.isDistributed = true
      this.state.distributedDevice = deviceId
      this.handleStartAbility()
    }, 1500)
  }

  showDialog () {
    RemoteDeviceModel.registerDeviceListCallback(() => {
      Logger.info(TAG, 'registerDeviceListCallback, callback entered' + JSON.stringify(RemoteDeviceModel.discoverList));
      this.deviceList = new Array<deviceManager.DeviceBasicInfo>();
      this.deviceList.push({
        deviceId: '0',
        deviceName: 'Local device',
        deviceType: '0',
        networkId: '0'
      })
      let deviceTempList = RemoteDeviceModel.discoverList.length > 0 ? RemoteDeviceModel.discoverList : RemoteDeviceModel.deviceList
      for (let i: int = 0; i < deviceTempList.length; i++) {
        Logger.info(TAG, `device[${i}]=${JSON.stringify(deviceTempList[i])}`)
        this.deviceList.push(deviceTempList[i])
      }

      if (this.dialogController !== null) {
        this.dialogController?.close()
        this.dialogController = null
      }
      this.dialogController = new CustomDialogController({
        builder: DeviceDialog({
          deviceList: this.deviceList,
          selectedIndex: this.state.selectedIndex,
          onSelectedIndexChange: this.onSelectedIndexChange
        }),
        autoCancel: true
      })
      this.dialogController?.open()
    })
  }

  clearSelectState() {
    this.deviceList = new Array<deviceManager.DeviceBasicInfo>();
    if (this.dialogController !== null) {
      this.dialogController?.close()
      this.dialogController = null
    }
  }

  build() {
    Stack({ alignContent: Alignment.TopEnd }) {
      Column() {
        ForEach(this.menuResource, (item: menuResourceItem, index: number) => {
          Row() {
            Image(item.icon)
              .size({ width: 40, height: 40 })
              .objectFit(ImageFit.Contain)

            Text(item.text)
              .fontSize(20)
              .fontColor(Color.Black)
              .margin({ left: 10 } as Margin)
          }
          .width('100%')
          .margin({ top: 6, bottom: 6 } as Margin)
          .onClick((event: ClickEvent) => {
            if (index === 0) {
              this.state.popupMenu = false;
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/Settings'
              })
            } else {
              this.state.opacityValue = 0;
              this.showDialog()
            }
          })

          if (index === 0) {
            Divider().color(Color.Black).height(1)
          }
        }, (item: menuResourceItem) => JSON.stringify(item))
      }
      .width('40%')
      .border({ width: 1, color: Color.Black, radius: 10 })
      .margin({ right: 16 } as Margin)
      .backgroundColor(Color.White)
      .padding(6)
      .opacity(this.state.opacityValue)
    }
    .size({ width: '100%', height: '92%' })
    .margin({ right: 16 } as Margin)
    .onClick((event: ClickEvent) => {
      if (this.state.popupMenu) {
        this.state.popupMenu = false
      }
    })
  }
}