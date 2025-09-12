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
  Entry,
  Component,
  State,
  Builder,
  Resource,
  InputType,
  Row,
  Image,
  ImageFit,
  TextInput,
  Color,
  Column,
  Text,
  $r,
  Divider,
  Scroll,
  TextAlign,
  ClickEvent,
  Margin,
  ColumnOptions,
} from '@kit.ArkUI';

import { UIContext } from '@ohos.arkui.UIContext';
import data_rdb from '@ohos.data.relationalStore'
import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
import common from '@ohos.app.ability.common'
import Contact, { RouterParams }  from '../model/Contact'
import Logger from '../model/Logger'
import RdbModel from '../model/RdbModel'
import { TitleBar } from '../common/TitleBar'
import { TABLE_NAME, SQL_CREATE_TABLE, COLUMNS } from '../model/RdbConst'

const TAG = 'ContactEdit'

interface paramstype {
  isInsert: boolean,
  contact: Contact
}
@Entry
@Component
struct ContactEdit {
  private params: RouterParams = new RouterParams(new Contact(0, '', 0, '', -1, ''), false);
  private isInsert: boolean = this.params.isInsert
  @State contact: Contact = this.params.contact
  @State rdbModel: RdbModel = new RdbModel(TABLE_NAME, SQL_CREATE_TABLE, COLUMNS, this.getUIContext().getHostContext() as common.UIAbilityContext)

  @Builder InputText(icon: Resource, placeHolder: Resource, key: string, text: string, filter: string, maxLength: number, type: InputType, onChange: (value: string) => void) {
    Row() {
      Image(icon)
        .height(30).width(30)
        .objectFit(ImageFit.Contain)

      TextInput({ placeholder: placeHolder, text: text })
        .key('input' + (key))
        .layoutWeight(1)
        .fontSize(25)
        .placeholderFont({ size: 25 })
        .height(50)
        .inputFilter(filter)
        .maxLength(maxLength)
        .backgroundColor(Color.White)
        .onChange(onChange)
        .type(type)
        .enableKeyboardOnFocus(false)
    }
    .width('95%')
    .padding(16)
    .margin({ top: 16 } as Margin)
    .backgroundColor(Color.White)
    .borderRadius(16)
  }

  @Builder menuBuilder() {
    Column({ space: 2 } as ColumnOptions) {
      Text($r('app.string.male'))
        .fontSize(25)
        .width('100%')
        .padding(5)
        .onClick((event: ClickEvent) => {
          this.contact.gender = 0
        })

      Divider().color(Color.Black).height(1)

      Text($r('app.string.female'))
        .fontSize(25)
        .width('100%')
        .padding(5)
        .onClick((event: ClickEvent) => {
          this.contact.gender = 1
        })
    }
    .width(150)
    .padding(10)
    .backgroundColor(Color.White)
  }

  handleSubmit () {
    if (this.contact.name === '') {
      this.getUIContext().getPromptAction().showToast({ message: $r('app.string.name_validate'), duration: 1000 })
      return
    }
    if (this.contact.phone === '') {
      this.getUIContext().getPromptAction().showToast({ message: $r('app.string.phone_validate'), duration: 1000 })
      return
    }

    if (this.contact.age < 0) {
      this.getUIContext().getPromptAction().showToast({ message: $r('app.string.age_validate'), duration: 1000 })
      return
    }
    this.handleSubmitNext()
  }

  async handleSubmitNext () {
    try {
      if (this.isInsert) {
        let predicates = new data_rdb.RdbPredicates(TABLE_NAME)
        predicates.equalTo('name', this.contact.name)
        let alreadyExist = await this.rdbModel.query(predicates)
        if (alreadyExist.length > 0) {
          Logger.info(TAG, 'already exist, need update')
          this.contact.id = alreadyExist[0].id
          await this.rdbModel.updateData(this.contact)
        } else {
          await this.rdbModel.insertData(this.contact)
          Logger.info(TAG, 'insert success')
        }
      } else {
        await this.rdbModel.updateData(this.contact)
        Logger.info(TAG, 'update success')
      }
    } catch (err) {
      Logger.error(JSON.stringify(err))
    }
    this.getUIContext().getRouter().back()
  }
  aboutToAppear(): void {
    setTimeout(()=>{
      if(this.getUIContext().getRouter().getParams()){
        this.params = this.getUIContext().getRouter().getParams() as RouterParams;
        this.isInsert = this.params.isInsert
        this.contact = this.params.contact
      }
    },1);
  }
  build() {
    Column() {
      TitleBar({
        title: $r("app.string.add_contact"),
        hasBackPress: true,
        rightBtn: $r('app.media.submit'),
        handleRightBtn: this.handleSubmit
      })

      Scroll() {
        Column() {
          Image($r('app.media.contact_photo'))
            .width('30%')
            .aspectRatio(1)
            .objectFit(ImageFit.Fill)

          Row() {
            Text($r('app.string.gender'))
              .fontSize(25)

            Text(this.contact.gender === 0 ? $r('app.string.male') : $r('app.string.female'))
              .fontSize(25)
              .border({ width: 1, color: Color.Black })
              .width('30%')
              .padding(5)
              .margin({ left: 5 } as Margin)
              .textAlign(TextAlign.Center)
              .bindMenu(this.menuBuilder)
          }

          this.InputText($r('app.media.ic_contact'), $r('app.string.contact_name'), 'Name', this.contact.name, '', 20, InputType.Normal, (value: string) => {
            this.contact.name = value;
          });
          this.InputText($r('app.media.ic_telephone'), $r('app.string.phone'), 'Phone', this.contact.phone, '', 11, InputType.PhoneNumber, (value: string) => {
            this.contact.phone = value;
          });
          this.InputText($r('app.media.ic_remark'), $r('app.string.remark'), 'Remark', this.contact.remark, '', 50, InputType.Normal, (value: string) => {
            this.contact.remark = value;
          });
          this.InputText($r('app.media.age'), $r('app.string.age'), 'Age', this.contact.age == -1 ? "" : this.contact.age + "", '', 3,
            InputType.Number, (value: string) => {
              try {
                this.contact.age = Number.parseInt(value);
              } catch (err) {
                Logger.error(JSON.stringify(err));
              }
            });
        }
      }
      .layoutWeight(1)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F9F9F9')
  }
}