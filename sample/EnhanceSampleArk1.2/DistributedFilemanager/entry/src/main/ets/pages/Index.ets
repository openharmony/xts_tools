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

import {
  Entry,
  Component,
  StorageLink,
  State,
  Watch,
  AppStorage,
  Column,
  Row,
  Image,
  $r,
  Text,
  FlexAlign,
  List,
  ForEach,
  ListItem,
  Blank,
  LongPressGesture,
  GestureEvent,
  Color,
  Button,
  Progress,
  ProgressType,
  ColumnOptions,
  Margin,
  Padding,
  ProgressStyleOptions,
  ClickEvent
} from '@kit.ArkUI';

import common from '@ohos.app.ability.common';
import distributedObject from '@ohos.data.distributedDataObject';
import distributedDeviceManager from '@ohos.distributedDeviceManager';
import router from '@ohos.router';
import { FsManager, createFsManager } from '../model/FsManager';
import { DistributedButton } from '../components/DistributedButton';
import { RemoteDeviceModel } from '../model/RemoteDeviceModel';
import { FileSystem, FileStructure, FileType, Logger } from 'library';
import { UIContext } from '@ohos.arkui.UIContext';
interface RouterParams {
  directoryPath?: string;
  directoryName?: string;
}
class AbilityParameters {
  public directoryName: string;
  public directoryPath:string;

  constructor(directoryName: string,directoryPath:string){
    this.directoryName = directoryName;
    this.directoryPath = directoryPath;
  }
}

@Entry
@Component
export struct Index {
  // 需要移动的文件
  @StorageLink('needMoveFiles') needMoveFiles: Array<FileType> = [];
  // 是否开启选择模式
  @State @Watch('clearTempData') isSelect: boolean = false;
  // 被选中的数组---样式判断
  @State selectedFiles: Array<string> = [];
  // 读取的文件结构
  @State fileData: Array<FileStructure> = [];
  // 目录路径
  @State @Watch('updateFileData') directoryPath: string = '';
  // 目录名称
  @State directoryName: string = '';
  @State deviceId: string = '';
  //拷贝进度信息
  @StorageLink('progress') @Watch('updateProgress') progress: number = 0;
  @StorageLink('isCopying') @Watch('updateCopyStatus') isCopying: boolean = false;
  // 刷新页面
  @StorageLink('flashPage') @Watch('updateFileData') flashPage: boolean = false;
  @StorageLink('g_object') g_object?: distributedObject.DistributedObject|null = null;
  @State isDistributed: boolean = false;
  private remoteDeviceModel: RemoteDeviceModel = new RemoteDeviceModel();
  private context: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext;//获取设备A的UIAbilityContext信息
  @State BASE_PATH:string = '';
  private fsManager!: FsManager;

  // 路由返回后刷新页面
  onPageShow() {
    let currentValue = AppStorage.get('flashPage');
    AppStorage.setOrCreate<boolean>('flashPage', !currentValue);
  }

  aboutToAppear() {
    // 有路由参数就加载当前路由文件路径
    this.BASE_PATH = this.context.filesDir + "/";
    this.directoryPath = this.BASE_PATH;
    const params = this.getUIContext().getRouter().getParams() as RouterParams;

    // 安全访问参数，避免 undefined 错误
    this.directoryPath = (params?.directoryPath || this.BASE_PATH)as string;
    this.directoryName = (params?.directoryName || '')as string;

    const context = this.getUIContext().getHostContext() as common.UIAbilityContext;
    this.fsManager = createFsManager(context);
    this.fsManager.initFiles();
    this.updateFileData();
  }

  // 刷新当前页面数据
  updateFileData() {
    this.fileData = [];
    let subdirectory = FileSystem.getSubdirectory(this.directoryPath);
    // 构建文件结构
    subdirectory.forEach(item => {
      const name = Array.isArray(item.name) ? item.name[0].toString() : item.name.toString();
      this.fileData.push(new FileStructure(name, item.type, item.time, item.childrenNum, item.fileSize));
    })
  }

  updateProgress(){
    this.progress = AppStorage.get<number>('progress') as number;
  }
  updateCopyStatus(){
    this.isCopying = AppStorage.get<boolean>('isCopying') as boolean;
  }
  // 每次退出选择状态就降临时数据清空
  clearTempData() {
    this.selectedFiles = [];
    this.needMoveFiles = [];
  }

  getLocalDeviceId() {
    let dm:distributedDeviceManager.DeviceManager = distributedDeviceManager.createDeviceManager('com.samples.distributedfilemanager');
    this.deviceId = dm.getLocalDeviceId();
    Logger.info('Index', 'getLocalDeviceId: ' + this.deviceId);
 }

  onDestroy() {
    if (this.remoteDeviceModel !== null) {
      this.remoteDeviceModel.unregisterDeviceListCallback();
    }
  }

  handleLongPress() {
    this.isSelect = true;
  }

  build() {
    Column() {
      if (this.directoryPath === this.BASE_PATH) {
        Row(){
          Row(){
            if (this.isSelect) {
              Image($r('app.media.ic_cancel2'))
                .id('cancel')
                .width(20)
                .height(18)
                .margin({ left: 26 } as Margin)
                .onClick((event: ClickEvent) => {
                  this.isSelect = false;
                })
            }
            Text($r('app.string.title'))
              .fontSize(20)
              .fontWeight(700)
              .margin({left: 24}as Margin)
          }.justifyContent(FlexAlign.Start)

          Row(){
            Image($r('app.media.ic_paste'))
              .id('copy')
              .width(24)
              .height(24)
              .onClick((event: ClickEvent) => {
                if (this.deviceId.length === 0) {
                  this.getLocalDeviceId();
                }
                this.fsManager.pasteFromDistributedDir(this.deviceId,this.directoryPath,this.fileData);
              })
            DistributedButton({
              remoteDeviceModel: this.remoteDeviceModel,
              isDistributed: this.isDistributed
            })
          }.margin({ right: 26 }as Margin)
          .justifyContent(FlexAlign.End)
        }.width('100%')
        .height(56)
        .justifyContent(FlexAlign.SpaceBetween)
      } else {
        Row() {
          Row(){
            if (this.isSelect) {
              Image($r('app.media.ic_cancel2'))
                .id('cancel')
                .width(20)
                .height(18)
                .margin({ left: 26 }as Margin)
                .onClick((event: ClickEvent) => {
                  this.isSelect = false;
                })
            } else {
              Image($r('app.media.ic_back'))
                .id('left')
                .width(20)
                .height(18)
                .margin({ left: 26 }as Margin)
                .onClick((event: ClickEvent) => {
                  this.fileData = [];
                  AppStorage.setOrCreate<boolean>('flashPage', !AppStorage.get('flashPage'));
                  this.getUIContext().getRouter().back();
                })
            }
            Text(this.directoryName)
              .fontSize(20)
              .fontWeight(700)
              .margin({left: 18}as Margin)
          }.justifyContent(FlexAlign.Start)

          Row(){
            Image($r('app.media.ic_paste'))
              .id('copy')
              .width(24)
              .height(24)
              .onClick((event: ClickEvent) => {
                if (this.deviceId.length === 0) {
                  this.getLocalDeviceId();
                }
                this.fsManager.pasteFromDistributedDir(this.deviceId,this.directoryPath,this.fileData);
              })
          }.margin({ right: 26 } as Margin)
           .justifyContent(FlexAlign.End)
        }
        .width('100%')
        .height(56)
        .justifyContent(FlexAlign.SpaceBetween)
      }

      if (this.fileData.length > 0) {
        // 目录列表
        List({ space: 12 }) {
          ForEach(this.fileData, (file: FileStructure, index: number) => {
            ListItem() {
              Row() {
                if (this.isSelect) {
                  Image(this.selectedFiles.includes(file.name) ? $r('app.media.ic_checkbox_selected') : $r('app.media.ic_checkbox_enabled'))
                    .width(26)
                    .height(26)
                    .margin({ left: 12 }as Margin)
                }
                if (file.type === 1) {
                  Image($r('app.media.ic_folder'))
                    .width(24)
                    .height(24)
                    .margin({ left: 12 }as Margin)
                } else {
                  Image($r('app.media.ic_docs'))
                    .width(24)
                    .height(24)
                    .margin({ left: 12 }as Margin)
                }
                Text(file.name)
                  .fontSize(16)
                  .margin({ left: 12, right:24 }as Margin)
                  .padding({ right:24 }as Padding)
                Blank()
              }
              .height(56)
              .width('100%')
              .justifyContent(FlexAlign.Start)
              .borderRadius(24)
              .backgroundColor($r('app.color.white'))
              .margin({ right :12 }as Margin)
              .onClick((event: ClickEvent) => {
                // 点击过后判断是否是选中模式
                if (this.isSelect) {
                  // 如果已经存在就删掉
                  if (this.selectedFiles.includes(file.name)) {
                    let index = this.selectedFiles.indexOf(file.name);
                    this.selectedFiles.splice(index, 1);
                    // 复制和移动需要的数据---因为这里的数据跟选中的列表数据一致，所以可以使用相同的index
                    this.needMoveFiles.splice(index, 1);
                  } else {
                    this.selectedFiles.push(file.name);
                    // 需要移动的文件的格式
                    this.needMoveFiles.push({
                      filePath: this.directoryPath + file.name,
                      fileName: file.name,
                      type: file.type
                    })
                  }
                } else {
                  // 如果是目录就跳转页面
                  if ((file.type === 1) && (!this.isCopying)) {
                    let parameters: AbilityParameters = new AbilityParameters(file.name,`${this.directoryPath}${file.name}/`)
                    this.getUIContext().getRouter().pushUrl({
                      url: 'pages/Index',
                      params: parameters
                    })
                  }
                }
              })
            }//list_item
            .id("ListItem"+index)
            .width('100%')
          })
        }//list
        .padding({ left: 12, right: 12 }as Padding)
        .width('100%')
        .flexGrow(1)
        .flexShrink(1)
        .gesture(LongPressGesture({ repeat: true })
          .onAction((event?: GestureEvent) => {
            setTimeout(() => {
              this.handleLongPress();
            }, 0)
          }))
      } else {
        Column({ space: 20 }as ColumnOptions) {
          Image($r('app.media.nothing'))
            .width(60)
            .height(60)
          Text($r('app.string.label_nothing'))
            .id('blank')
            .fontSize(30)
            .fontColor(Color.Gray)
            .opacity(.5)
        }
        .width('100%')
        .flexGrow(1)
        .flexShrink(1)
        .justifyContent(FlexAlign.Center)
      }

      if (this.isSelect) {
        Button($r('app.string.label_copy2disdir'))
          .backgroundColor(0x317aff)
          .fontSize(16)
          .height(40)
          .borderRadius(20)
          .id('pasteBoard')
          .margin({ left: 24, right: 24, bottom: 24 }as Margin)
          .width(436)
          .onClick((event: ClickEvent) => {
            let disPathInSandbox = this.context.distributedFilesDir;
            if (this.deviceId.length === 0) {
              this.getLocalDeviceId();
            }
            this.fsManager.copyFilesToDistributedDir(this.deviceId, this.needMoveFiles, disPathInSandbox);
          })
      }
      if (this.isCopying) {
        Column(){
          Row(){
            Text($r('app.string.label_copying'))
              .id('text_copying')
              .fontSize(14)
              .fontColor(Color.Black)
              .margin({left: 16}as Margin)
            Text(this.progress.toString()+"%")
              .id('text_progress')
              .fontSize(14)
              .fontColor(Color.Grey)
              .margin({right: 16}as Margin)
          }.justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
          .margin({ left: 12, right: 12,top: 29 }as Margin)

          Row(){
          Progress({value: this.progress, total: 100, type:ProgressType.Linear})
            .style({strokeWidth: 4, enableSmoothEffect: true}as ProgressStyleOptions)
            .width('100%')
            .height(24)
          }.margin({ left: 16, right: 16, bottom: 16 }as Margin)
        }
        .margin({ left: 12, right: 12, bottom: 24 }as Margin)
        .height(88)
        .borderRadius(24)
        .backgroundColor(Color.White)
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.background_shallow_grey'))
  }
}
