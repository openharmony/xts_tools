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
  Observed
  Entry,
  Component,
  CustomDialogController,
  State,
  AppStorage,
  $r,
  Color,
  Stack,
  Alignment,
  Column,
  Row,
  Blank,
  Image,
  List,
  LazyForEach,
  ListItem,
  Button,
  ImageFit,
  ButtonType,
  Circle,
  Padding,
  Margin,
  ClickEvent,
  AlertDialogParamWithButtons,
  Text
} from '@kit.ArkUI';
import { UIContext } from '@ohos.arkui.UIContext';
import data_rdb from '@ohos.data.relationalStore'
import common from '@ohos.app.ability.common'
import Want from '@ohos.app.ability.Want'
import router from '@ohos.router'
import { RecordData } from '@ohos.base'
import Contact, { RouterParams, WantParameters } from '../model/Contact'
import ContactDataSource from '../common/BasicDataSource'
import LiteStore from '../model/LiteStore'
import Logger from '../model/Logger'
import RdbModel from '../model/RdbModel'
import { BottomBtn } from '../common/BottomBtn'
import { ContactItem } from '../common/ContactItem'
import { PopupMenu } from '../common/PopupMenu'
import { SyncState } from '../model/LiteStore'
import { SearchBar } from '../common/SearchBar'
import { TitleBar } from '../common/TitleBar'
import { TABLE_NAME, BUNDLE, ABILITY, SQL_CREATE_TABLE, COLUMNS } from '../model/RdbConst'
import { DataChangeDetailDialog } from '../common/DataChangeDetailDialog';

const TAG: string = 'Index'

export interface stateType {
  popupMenu: boolean,
  isDistributed: boolean,
  isStage: boolean,
  selectedIndex: number,
  syncState: string,
  distributedDevice: string,
  opacityValue: number
}
@Observed
export class StateType implements stateType {
  popupMenu: boolean;
  isDistributed: boolean;
  isStage: boolean;
  selectedIndex: number;
  syncState: string;
  distributedDevice: string;
  opacityValue: number;
  constructor(popupMenu: boolean, isDistributed: boolean, isStage: boolean, selectedIndex: number, syncState: string, distributedDevice: string, opacityValue: number) {
    this.popupMenu = popupMenu;
    this.isDistributed = isDistributed;
    this.isStage = isStage;
    this.selectedIndex = selectedIndex;
    this.syncState = syncState;
    this.distributedDevice = distributedDevice;
    this.opacityValue = opacityValue;
  }
}
@Entry
@Component
struct Index {
  private liteStore: LiteStore = new LiteStore("sync_state", this.getUIContext().getHostContext() as common.UIAbilityContext)
  private rdbModel: RdbModel = new RdbModel(TABLE_NAME, SQL_CREATE_TABLE, COLUMNS, this.getUIContext().getHostContext() as common.UIAbilityContext)
  private intervalId: int = 0
  private dialogController: CustomDialogController | null = null;
  @State contacts: ContactDataSource = new ContactDataSource([new Contact(0, '', 0, '', -1, '')])
  @State isMultiCheck: boolean = false
  @State popupMenu: boolean = false
  @State isSelectedAll: boolean = false

  @State state: StateType = new StateType(false,false,false,0,SyncState.ManualSync,'',1)

  aboutToAppear() {
    Logger.info(TAG, 'aboutToAppear')
    this.init()
  }
  async init() {
    await this.rdbModel.getRdbStore();
    await this.getData();
    this.rdbModel.onDataChangeDetail(this.state.distributedDevice, (result: Array<Contact>) => {
      this.showDataChangeDialog(result)
    })
  }

  aboutToDisappear(): void {
    this.rdbModel.offDataChangeDetail()
  }

  // 拉起应用后读取数据，暂定为分布式功能
  getWant() {
      let want = AppStorage.get<Want>('want') as Want;
      if (want.parameters != undefined) {
        const params= want.parameters as Record<string, RecordData>
        if (this.state.isDistributed && params['isStage'] === 'EXIT') {
          Logger.info(TAG, 'isStage = EXIT')
          this.state.isStage = false
          this.state.isDistributed = false
          this.state.selectedIndex = 0
          this.state.distributedDevice = ''
          this.rdbModel.offDataChange()
        }
        if (!this.state.isDistributed && params['isStage'] === 'Stage') {
          Logger.info(TAG, 'isStage = Stage')
          this.state.isStage = true
          this.state.isDistributed = true
          this.state.distributedDevice = params['dmsSrcNetworkId'] as string;
          let context = this.getUIContext().getHostContext() as common.UIAbilityContext
          let wantParameters :Record<string, RecordData>={
            'isStage': 'CONNECT'
          }
          context.startAbility({
            bundleName: BUNDLE,
            abilityName: ABILITY,
            deviceId: this.state.distributedDevice,
            parameters: wantParameters
          })
          Logger.info(TAG, 'onDataChange')
          this.rdbModel.onDataChange(this.state.distributedDevice, (result: Array<Contact>) => {
            this.contacts.dataArray = result
            this.contacts.notifyDataReload()
          })
        }
      }
  }

  onPageShow() {
    this.onPageShowInit()
  }
  async onPageShowInit() {
    try {
      // 初始化分部署数据库
      await this.rdbModel.getRdbStore()
      this.intervalId = setInterval(() => {
        // 手动侦听应用被拉起的动作
        this.getWant()
      }, 1000)
      // 读取数据库数据
      await this.getData()
    } catch (err) {
      Logger.error('onPageShow:' + JSON.stringify(err))
    }
  }

  async getData() {
    Logger.info(TAG, 'getData')
    // 初始化数据库的表，表名为contact
    let predicates = new data_rdb.RdbPredicates(TABLE_NAME)
    // 读取表中的数据
    this.contacts.replaceDataArray(await this.rdbModel.query(predicates));
    // 通知懒加载数据变更
    this.contacts.notifyDataReload()
    Logger.info(TAG, 'getData contacts count' + this.contacts.dataArray.length)
    // 读取Preferences中的数据
    let syncState = await this.liteStore.getValue()
    this.state.syncState = `${syncState}`
    if (!this.state.isStage && this.state.isDistributed && syncState === SyncState.AutomaticSync) {
      this.syncData()
    }
  }
  async showDeleteDialogAction(deleteContacts:Contact[]){
    await this.rdbModel.deleteContacts(deleteContacts)
    await this.getData()
    this.quitMultiCheck()
  }
  showDeleteDialog() {
    let deleteContacts: Contact[] = []
    this.contacts.dataArray.forEach((contact) => {
      if (contact.isSelected) {
        deleteContacts.push(contact)
      }
    })
    if (deleteContacts.length == 0) {
      return
    }
    this.getUIContext().showAlertDialog({
      message: $r('app.string.delete_contact'),
      primaryButton: {
        value: $r('app.string.sure'),
        fontColor: Color.Red,
        action: () => {
          this.showDeleteDialogAction(deleteContacts)
        }
      },
      secondaryButton: {
        value: $r('app.string.cancel'),
        fontColor: Color.Blue,
        action: () => {
        }
      }
    } as AlertDialogParamWithButtons)
  }

  showDataChangeDialog(result: Array<Contact>) {
    Logger.info(TAG, `showDataChangeDialog:` + JSON.stringify(result))
    if (this.dialogController !== null) {
      this.dialogController?.close()
      this.dialogController = null
    }
    this.dialogController = new CustomDialogController({
      builder: DataChangeDetailDialog({
        detailList: result,
      }),
      autoCancel: true
    })
    this.dialogController?.open()
  }

  handleClickContact(item: Contact, index: number) {
    Logger.info(TAG, `handleClickContact, item = ${JSON.stringify(item)}`)
    if (this.isMultiCheck) {
      let tempContacts = this.contacts.dataArray
      this.contacts.dataArray = []
      tempContacts[index as int].isSelected = !item.isSelected
      this.contacts.dataArray = tempContacts
      this.contacts.notifyDataReload()
    } else {
      let params:RouterParams = new RouterParams(item, false);
      let options: router.RouterOptions = {
        url: 'pages/ContactEdit',
        params: params as RouterParams
      } as router.RouterOptions;
      this.getUIContext().getRouter().pushUrl(options)
    }
  }

  refreshSelectState(isSelect: boolean) {
    this.contacts.dataArray.forEach((contact) => {
      contact.isSelected = isSelect
    })
    this.contacts.notifyDataReload()
  }

  quitMultiCheck() {
    this.isSelectedAll = false
    this.refreshSelectState(this.isSelectedAll)
    this.isMultiCheck = false
  }

  handleBottomBtnClick(index: number) {
    switch (index as int) {
      case 0:
        this.isSelectedAll = !this.isSelectedAll
        this.refreshSelectState(this.isSelectedAll)
        break
      case 1:
        this.showDeleteDialog()
        break
      case 2:
        this.quitMultiCheck()
        break
      default:
        break
    }
  }
  handleRightBtn() {
    this.popupMenu = true;
    this.state.popupMenu = true;
    this.state.opacityValue = 1;

  }
  syncData() {
    Logger.info(TAG, 'sync data')
    let predicates = new data_rdb.RdbPredicates(TABLE_NAME)
    // todo
    // predicates.inAllDevices()
    this.rdbModel.syncData(predicates)
  }

  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      Column() {
        Stack() {
          if (this.state.isStage) {
            TitleBar()
          } else {
            TitleBar({ rightBtn: $r('app.media.more'), handleRightBtn: this.handleRightBtn })
          }
          if (this.state.isDistributed && !this.state.isStage && this.state.syncState === (SyncState.ManualSync as string)) {
            Row() {
              Blank()

              Image($r('app.media.ic_syncto'))
                .size({ width: 50, height: 60 })
                .onClick(this.syncData)
            }.width('80%')
          }
        }.width('100%')

        SearchBar()
        List() {
          LazyForEach(this.contacts, (item: Contact, index: number) => {
            ListItem() {
              ContactItem({ contact: item, isMultiCheck: this.isMultiCheck })
            }
            .onClick((event: ClickEvent) => {
              this.handleClickContact(item, index)
            })
          }, (item: Contact) => JSON.stringify(item))
        }
        .width('100%')
        .layoutWeight(1)
        .padding({ left: 10, right: 10 } as Padding)
        .divider({ strokeWidth: 1, color: Color.Gray, startMargin: 16, endMargin: 16 })
      }
      .width('100%')
      .height('100%')

      if (this.state.popupMenu) {
        PopupMenu({ state: this.state, handleStartAbility: this.syncData })
      }

      BottomBtn({
        isMultiCheck: this.isMultiCheck,
        isSelectedAll: this.isSelectedAll,
        handleBottomBtnClick: this.handleBottomBtnClick
      })

      if (!this.isMultiCheck && !this.state.isStage) {
        Button('') {
          Image($r('app.media.add'))
            .height('100%')
            .width('100%')
            .objectFit(ImageFit.Contain)
            .align(Alignment.End)
        }
        .id('btnAdd')
        .width(80)
        .height(80)
        .margin({ right: 20, bottom: 50 } as Margin)
        .type(ButtonType.Circle)
        .backgroundColor('#0D9FFB')
        .onClick((event: ClickEvent) => {
          Logger.info(TAG, 'onClick')
          let params:RouterParams = new RouterParams(new Contact(0, '', 0, '', -1, ''), true);
          let options: router.RouterOptions = {
            url: 'pages/ContactEdit',
            params: params as RouterParams
          } as router.RouterOptions;
          this.getUIContext().getRouter().pushUrl(options)
        })
      }
    }
    .width('100%')
    .height('100%')
  }


  onBackPress():boolean  {
    Logger.info(TAG, 'onBackPress')
    let context = this.getUIContext().getHostContext() as common.UIAbilityContext
    let wantParameters :Record<string, RecordData>={
      'isStage': 'EXIT'
    }
    context.startAbility({
      bundleName: BUNDLE,
      abilityName: ABILITY,
      deviceId: this.state.distributedDevice,
      parameters: wantParameters
    })
    this.rdbModel.offDataChange()
    return false;
  }

  onPageHide() {
    Logger.info(TAG, 'onBackPress')
    clearInterval(this.intervalId as int)
  }
}