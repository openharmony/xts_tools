'use static'
/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
  Entry,
  Component,
  Margin,
  State,
  CustomDialogController,
  DialogAlignment,
  Column,
  Scroll,
  Row,
  Text,
  $r,
  ItemAlign,
  Blank,
  Toggle,
  ToggleType,
  Divider,
  LineCapStyle,
  ForEach,
  ClickEvent,
  AlertDialogParam,
  UIContext,
  AlertDialogParamWithConfirm,
  AlertDialogParamWithButtons,
  AlertDialogParamWithOptions
} from '@kit.ArkUI';
import common from '@ohos.app.ability.common';
import bluetooth from '@ohos.bluetooth'
import getUIContext from '@ohos.bluetooth'


import logger from '../Model/Logger'
import { TitleBar } from '../Commom/TitleBar'
import { PinDialog } from '../Commom/PinDialog'

const TAG: string = 'Index'
const TIME: Double = 0.0 // 设备可被发现的持续时间

interface  PinRequiredParam {
  deviceId: string;      // 蓝牙设备唯一标识
  pinCode: string;      // 系统建议的默认PIN码（可选）
  //deviceName: string;   // 设备名称（可选）
}
interface BondStateData {
  deviceId: string;  // 设备唯一标识
  bondState: number; // 当前配对状态（0:未配对,1:配对中,2:已配对）
  previousState: number; // 先前状态值
}

@Entry
@Component
struct Index {
  @State isOn: boolean = false
  @State deviceList= [] as string[]
  @State discoveryList= [] as string[]
  private bluetoothState: boolean = false
  private pinDialogController: CustomDialogController | null = null
  private intervalId: number = -1.0
  private context: common.UIAbilityContext | null = null;
  private handlerClickButton = () => {

    this.context= this.getUIContext().getHostContext() as common.UIAbilityContext;
    this.context!.terminateSelf()
  }//未知错误,目前已解决

  foundDevices() {
    bluetooth.on('bluetoothDeviceFind', (data : string) => {
      logger.info(TAG, `enter on bluetoothDeviceFind`)
      if (data !== null && data.length > 0.0) {
        if (this.discoveryList.indexOf(data[0]) === -1.0 && this.deviceList.indexOf(data[0]) === -1.0) {
          this.discoveryList.push(data[0])
        }
        logger.info(TAG, `discoveryList = ${JSON.stringify(this.discoveryList)}`)
      }
      let list = bluetooth.getPairedDevices()
      if (list !== null && list.length > 0.0) {
        this.deviceList = list
        logger.info(TAG, `deviceList =  ${JSON.stringify(this.deviceList)}`)
      }
    })
    bluetooth.startBluetoothDiscovery()
    bluetooth.setBluetoothScanMode(bluetooth.ScanMode.SCAN_MODE_CONNECTABLE_GENERAL_DISCOVERABLE, TIME)
  }

  aboutToAppear() :void {
    let state: number = bluetooth.getState()
    if (state === bluetooth.BluetoothState.STATE_ON) {
      this.isOn = true
      this.foundDevices()
    }
    if (state === bluetooth.BluetoothState.STATE_OFF) {
      this.isOn = false
    }

    bluetooth.on('pinRequired', (data : undefined|PinRequiredParam|null) => {
      logger.info(TAG, `enter pinRequired`)
      this.pinDialogController = new CustomDialogController({
        builder: PinDialog({
          data: {
            deviceId: data!.deviceId,
            pinCode: data!.pinCode || '0000' // 默认PIN码
          }
        }),
        autoCancel: true,
        alignment: DialogAlignment.Bottom
      })
      this.pinDialogController!.open()
      logger.info(TAG, `onPinRequiredData = ${JSON.stringify(data)}`)
    })

    bluetooth.on('bondStateChange', (data : BondStateData) => {
      logger.info(TAG, `enter bondStateChange`)
      logger.info(TAG, `data = ${JSON.stringify(data)}`)
      if (data.bondState === bluetooth.BondState.BOND_STATE_BONDED) {
        logger.info(TAG, `BOND_STATE_BONDED`)
        let index: number = this.discoveryList.indexOf(data.deviceId)
        this.discoveryList.splice(index, 1.0)
        this.deviceList = bluetooth.getPairedDevices()
      }
      if (data.bondState === bluetooth.BondState.BOND_STATE_INVALID) {
        logger.info(TAG, `BOND_STATE_INVALID`)
        this.deviceList = bluetooth.getPairedDevices()
      }
      logger.info(TAG, `bondStateChange,data = ${JSON.stringify(data)}`)
    })

    this.intervalId = setInterval(() => {
      this.discoveryList = []
      this.foundDevices()
    }, 30000)

  }

  initBluetooth() {
    bluetooth.on('stateChange', (data : number) => {
      logger.info(TAG, `enter on stateChange`)
      if (data === bluetooth.BluetoothState.STATE_ON) {
        logger.info(TAG, `enter BluetoothState.STATE_ON`)
        this.foundDevices()
      }
      if (data === bluetooth.BluetoothState.STATE_OFF) {
        logger.info(TAG, `enter BluetoothState.STATE_OFF`)
        bluetooth.off('bluetoothDeviceFind', (data : string) => {
          logger.info(TAG, `offBluetoothDeviceFindData = ${JSON.stringify(data)}`)
        })
        bluetooth.stopBluetoothDiscovery()
        this.discoveryList = []
      }
      logger.info(TAG, `BluetoothState = ${JSON.stringify(data)}`)
    })
    bluetooth.enableBluetooth()
  }

  build() {
    Column() {
      TitleBar({ handlerClickButton: this.handlerClickButton })
      Scroll() {
        Column() {
          Row() {
            Column() {
              Text($r('app.string.bluetooth'))
                .fontSize(30.0)
                .margin({ top: 20.0 }as Margin)
                .alignSelf(ItemAlign.Start)
              if (true === this.isOn) {
                Text($r('app.string.discovery'))
                  .fontSize(20.0)
                  .alignSelf(ItemAlign.Start)
              }
            }

            Blank()

            Column() {
              Toggle({ type: ToggleType.Switch, isOn: this.isOn })
                .selectedColor('#ff2982ea')
                .onChange((isOn: boolean) => {
                  if (isOn) {
                    this.isOn = true
                    this.initBluetooth()
                  } else {
                    this.isOn = false
                    bluetooth.disableBluetooth()
                    this.deviceList = []
                    this.discoveryList = []
                  }
                })
            }
            .id('toggleBtn')
          }
          .width('90%')

          if (this.isOn) {
            Divider()
              .vertical(false)
              .strokeWidth(10.0)
              .color('#ffece7e7')
              .lineCap(LineCapStyle.Butt)
              .margin('1%')

            Text($r('app.string.paired_device'))
              .fontSize(25.0)
              .fontColor('#ff565555')
              .margin({ left: '5%' }as Margin)
              .alignSelf(ItemAlign.Start)

            ForEach(this.deviceList, (item: string, index: number) => {
              Row() {
                Text(item)
                  .fontSize(20.0)
              }
              .alignSelf(ItemAlign.Start)
              .width('100%')
              .height(50.0)
              .margin({ left: '5%', top: '1%' }as Margin)
              .id(`pairedDevice${index}`)
              .onClick((e:ClickEvent) => {
                this.getUIContext().showAlertDialog({
                  title: $r('app.string.disconnect'),
                  message: '此操作将会断开您与以下设备的连接：' + item,
                  primaryButton: {
                    value: $r('app.string.cancel'),
                    action: () => {
                    }
                  },
                  secondaryButton: {
                    value: $r('app.string.confirm'),
                    action: () => {
                      let deleteStatus = bluetooth.cancelPairedDevice(item);
                      logger.info(TAG, `deleteStatus = ${deleteStatus}`)
                      if (deleteStatus === true) {
                        this.deviceList = bluetooth.getPairedDevices()
                        this.discoveryList = []
                        bluetooth.startBluetoothDiscovery()
                      }
                    }
                  }
                 } as AlertDialogParamWithButtons)
              })
            } ,(item:string) => item.toString())

            Divider()
              .vertical(false)
              .strokeWidth(10.0)
              .color('#ffece7e7')
              .lineCap(LineCapStyle.Butt)
              .margin('1%')

            Text($r('app.string.available_device'))
              .fontSize(25.0)
              .fontColor('#ff565555')
              .margin({ left: '5%', bottom: '2%' }as Margin)
              .alignSelf(ItemAlign.Start)

            ForEach(this.discoveryList, (item) => {
              Row() {
                Text(item)
                  .fontSize(20.0)
              }
              .alignSelf(ItemAlign.Start)
              .width('100%')
              .height(50.0)
              .margin({ left: '5%', top: '1%' }as Margin)
              .onClick((e:ClickEvent) => {
                logger.info(TAG, `start bluetooth.pairDevice,item = ${item}`)
                let pairStatus = bluetooth.pairDevice(item)
                logger.info(TAG, `pairStatus = ${pairStatus}`)
              })

              Divider()
                .vertical(false)
                .color('#ffece7e7')
                .lineCap(LineCapStyle.Butt)
                .margin('1%')
            })
          }
        }
      }
      .constraintSize({ maxHeight: '85%' })
    }
  }
}