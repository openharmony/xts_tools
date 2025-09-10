'use static'
/*
 * Copyright (c) 2022-2023 Huawei Device Co., Ltd.
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
  StorageLink,
  Watch,
  State,
  CustomDialogController,
  List,
  ListItem,
  Row,
  Text,
  $r,
  LazyForEach,
  Color,
  Margin,
  Padding,
  ClickEvent,
  IDataSource
} from '@kit.ArkUI';

import prompt from '@ohos.promptAction'
import Logger from '../model/Logger'
import { PswDialog } from '../component/PswDialog'
import { WifiModel } from '../model/WifiModel'
import { WifiView } from '../component/WifiView'
import WifiDataSource from '../component/BasicDataSource'
import wifiManager from '@ohos.wifiManager'
interface WifiScanInfo {
  ssid: string;
  bssid: string;
  securityType: number; // 0: OPEN, 1: WEP, 2: WPA, etc.
  rssi: number;
  frequency: number;
  timestamp: number;
}
interface WifiData {
  ssid: string;        // WiFi名称
  bssid: string;       // BSSID（MAC地址）
  securityType: number; // 安全类型
  rssi: number;        // 信号强度

}

const TAG = 'AvailableWiFi'
let self = null

@Component
export struct AvailableWifi {
  private wifiModel = new WifiModel()
  private linkedInfo: wifiManager.WifiLinkedInfo| null  = null
  private self: AvailableWifi | null = null;
  @StorageLink('wifiList') @Watch('wifiListRefresh') wifiList: Array<wifiManager.WifiScanInfo> = []
  @State wifiDataResource: WifiDataSource = new WifiDataSource(this.wifiList)
  @State scanInfo: wifiManager.WifiScanInfo| undefined = undefined
  private pswDialogController: CustomDialogController = new CustomDialogController({
    builder: PswDialog({ scanInfo: this.scanInfo, action: this.onAccept }),
    autoCancel: true
  })

  build() {
    List() {
      ListItem() {
        Row() {
          Text($r('app.string.available_wlan'))
            .fontSize(22)
            .layoutWeight(1)
        }
        .id('validWlan')
        .width('100%')
      }

      LazyForEach(this.wifiDataResource as IDataSource<wifiManager.WifiScanInfo>, (item:wifiManager.WifiScanInfo, index:number) => {
        ListItem() {
          WifiView({ wifi: item })
        }
        .id(`Wifi${index}`)
        .onClick((e:ClickEvent) => {
          Logger.info(TAG, 'wifi click')
          this.scanInfo = item
          if (this.linkedInfo !== null && item.ssid === this.linkedInfo!.ssid) {
            prompt.openToast({ message: 'this wifi is connected' })
            return
          }
          if (item.securityType === 0 || item.securityType === 1) {
            this.wifiModel.connectNetwork(item, '')
            return
          }
          this.pswDialogController.open()
        })
      }, (item:wifiManager.WifiScanInfo) => JSON.stringify(item ))
    }
    .width('100%')
    .height('100%')
    .padding({ left: 16, right: 16 }as Padding)
    .layoutWeight(1)
    .divider({ strokeWidth: 1, color: Color.Gray, startMargin: 10, endMargin: 10 })
    .margin({ top: 10 }as Margin)
  }

  onAccept(scanInfo: wifiManager.WifiScanInfo, psw: string) {
    Logger.info(TAG, 'connect wifi')
    this.self!.wifiModel.connectNetwork(scanInfo, psw)
  }

  aboutToAppear() {
    this.self = this
  }

  wifiListRefresh() {
    this.wifiDataResource.dataArray = this.wifiList
    this.wifiDataResource.notifyDataReload()
  }
}