'use static'
/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
  Resource,
  StorageLink,
  Scroller,
  AppStorage,
  Scroll,
  Row,
  Column,
  Image,
  Alignment,
  Text,
  TextAlign,
  Flex,
  FlexDirection,
  List,
  ForEach,
  ListItem,
  Checkbox,
  ListItemAlign,
  BarState,
  Button,
  Margin,
  $r,
  RowOptions
} from '@kit.ArkUI';

import MyWorker from '../fileFs/MyWorker';
import common from '@ohos.app.ability.common';
import fs from '@ohos.file.fs';
import router from '@ohos.router';
import { Logger } from '../common/Common';

const TAG: string = '[ConcurrentModule].[CopyFile]';
@Entry
@Component
struct Watcher {
  @State message: Resource = $r('app.string.copyFileText');
  // @State myContext: common.UIAbilityContext = getContext(this) as common.UIAbilityContext;
  @State myContext: common.UIAbilityContext = this.getUIContext()?.getHostContext() as common.UIAbilityContext;
  @State filePathSize: Array<number> = [0.0];
  @State showFilePath: Array<string> = [''];
  @State eventFilePath: Array<string> = [''];
  @State fileListNames: Array<string> = [''];
  @StorageLink('fileNumber') fileNum: string = '0';
  @StorageLink('fileListName1') fileListName1: string = '';
  @StorageLink('fileListName2') fileListName2: string = '';
  @StorageLink('copyFileLog1') copyFileLog1: string = '';
  @StorageLink('copyFileLog2') copyFileLog2: string = '';
  @StorageLink('copyFileLog3') copyFileLog3: string = '';
  @StorageLink('copyFileLog4') copyFileLog4: string = '';
  @StorageLink('copyFileShowLog') copyFileShowLog: string = '';
  myWorker: MyWorker = new MyWorker();
  scroller: Scroller = new Scroller();
  public dirPath: string = '';
  public baseDir: string | undefined = AppStorage.get<string>('sanBoxFileDir');

  onPageShow() {
    this.myWorker.readyFilesToWorker();
    let filePathDir = this.baseDir + '/workerDir';

    let filenames: string[] = fs.listFileSync(filePathDir);
    Logger.info(TAG, 'listFile succeed');
    for (let i: number = 0.0; i < filenames.length; i++) {
      Logger.info(TAG, 'filename: %s', filenames[i as int]);
      if(i == 0) {
        this.showFilePath[i as int] = filenames[i as int];
        let filePath0 = filePathDir + '/' + filenames[i as int]
        this.filePathSize[i as int] = fs.statSync(filePath0).size;
      } else {
        this.showFilePath.push(filenames[i as int]);
        let filePath = filePathDir + '/' + filenames[i as int]
        this.filePathSize.push(fs.statSync(filePath).size);
      }
    }
    this.dirPath = this.baseDir + '/workerCopy';

    if (!fs.accessSync(this.dirPath)) {
      fs.mkdirSync(this.dirPath);
    }
  }

  onPageHide() {
    this.dirPath = this.baseDir + '/workerCopy';
    let isDirectory = fs.statSync(this.dirPath).isDirectory();
    if (isDirectory) {
      fs.rmdirSync(this.dirPath);
      AppStorage.setOrCreate<string>('fileNumber', '0');
      AppStorage.setOrCreate<string>('fileListName1', '');
      AppStorage.setOrCreate<string>('fileListName2', '');
      AppStorage.setOrCreate<string>('copyFileShowLog', '');
    }
    let filePathDir = this.baseDir + '/workerDir';
    let isDir = fs.statSync(filePathDir).isDirectory();
    if (isDir) {
      fs.rmdirSync(filePathDir);
    }
  }

  build() {
    Scroll(this.scroller) {
      Row() {
        Column() {
          Row() {
            Image($r('app.media.ic_back'))
              .id('backIndex2')
              .width('20.0')
              .height('18.0')
              .align(Alignment.Start)
              .margin({ top: '13.0', bottom: '15.0', left: '26.0', right: '18.0' } as Margin)
              .onClick((): void => {
                this.getUIContext().getRouter().back();
              })
            Text(this.message)
              .fontSize(20.0)
              .fontColor('#182431')
              .textAlign(TextAlign.Start)
              .lineHeight(28.0)
              .fontWeight(700.0)
              .margin({ top: '13.0', bottom: '15.0' } as Margin)
          }
          .width('100%')
          .height('56.0')
          .backgroundColor('#f1f3f5')
          .align(Alignment.Start)

          Flex({ direction: FlexDirection.Column }) {

            Column() {
              Row() {
                Row() {
                  Text($r('app.string.workerTitleText'))
                    .fontSize(14.0)
                    .margin({ top: '19.5', bottom: '9.5' } as Margin)
                    .lineHeight(19.0)
                    .width('176.0')
                    .fontColor('#182431')
                    .fontWeight(500.0)
                    .textAlign(TextAlign.Start)
                }
                .width('100%')
                .backgroundColor('#f1f3f5')
              }
              .margin({ left: '24.0', right: '52.0' } as Margin)
              .height('48.0')
              .backgroundColor('#f1f3f5')

              Column() {
                List({ space: 12.0, initialIndex: 0.0 }) {
                  ForEach(this.showFilePath, (item: string, index: number) => {
                    ListItem() {
                      Row() {
                        Text(item)
                          .fontSize(16.0)
                          .fontColor('#182431')
                          .width('86%')
                          .lineHeight(22.0)
                          .textAlign(TextAlign.Start)
                          .fontWeight(500.0)
                          .margin({ left: '12.0' } as Margin)
                          .borderRadius('10.0')
                          .backgroundColor(0xFFFFFF)
                        Row() {
                          Checkbox()
                            .select(false)
                            .id('checkbox' + index)
                            .width('20.0')
                            .height('20.0')
                            .margin({ right: '12.0' } as Margin)
                            .selectedColor('#007DFF')
                            .borderRadius('4.0')
                            .onChange((value: boolean) => {
                              Logger.info(TAG, 'Checkbox1 change is' + value);
                              if (value) {
                                Logger.info(TAG, 'Workerets Checkbox1 index ' + index + ' is true');
                                if(this.eventFilePath[0] == '') {
                                  this.eventFilePath[0] = this.showFilePath[index as int];
                                } else {
                                  this.eventFilePath.push(this.showFilePath[index as int]);
                                }
                              } else {
                                for (let i: number = 0.0; i < this.eventFilePath.length; i++) {
                                  if (this.eventFilePath[i as int] === this.showFilePath[index as int]) {
                                    this.eventFilePath[i as int] = 'deletedTag';
                                  }
                                }
                              }
                            })
                        }
                        .id('row' + index)
                        .width('9%')
                      }
                      .borderRadius('20.0')
                      .margin({ left: '12.0', right: '12.0' } as Margin)
                      .height('56.0')
                      .backgroundColor(0xFFFFFF)
                    }
                    .id('listItem')
                  }, (item: string) => item)
                }
                .id('listWorkerFile')
                .alignListItem(ListItemAlign.Center)
                .scrollBar(BarState.Auto)
              }
              .backgroundColor('#f1f3f5')
              .height('436.0')
              .align(Alignment.Center)

              Column() {
                Row() {
                  Text($r('app.string.logTitle'))
                    .fontSize(14.0)
                    .fontColor('#182431')
                    .textAlign(TextAlign.Start)
                    .lineHeight(19.0)
                    .fontWeight(500.0)
                    .margin({ top: '19.5', left: '24.0' } as Margin)
                    .width('176.0')
                }
                .width('100%')
                .align(Alignment.Start)

                Column() {
                  Column() {
                    Text(this.copyFileLog1 + this.fileNum + this.copyFileLog2)
                      .fontSize(16.0)
                      .fontColor('#182431')
                      .fontWeight(400.0)
                      .width('100%')
                    Text(this.copyFileShowLog)
                      .fontSize(16.0)
                      .id("copyFileLog")
                      .fontColor('#182431')
                      .fontWeight(400.0)
                      .width('100%')
                  }
                  .margin({ top: '8.0', left: '12.0', right: '12.0', bottom: '8.0' } as Margin)
                  .height('64.0')
                }
                .borderRadius('20.0')
                .height('80.0')
                .margin({ top: '9.5', left: '16.0', right: '16.0' } as Margin)
                .backgroundColor('#ffffff')

                Row({ space: 1.0 } as RowOptions) {
                  Column() {
                    Button($r('app.string.copyFileText'))
                      .fontSize('16.0')
                      .width('312.0')
                      .height('40.0')
                      .fontColor('#FFFFFF')
                      .fontWeight(500.0)
                      .id('copyFile')
                      .onClick((): void => {
                        this.myWorker.deleteCopyFile(this.dirPath);
                        await this.myWorker.workToCopyFiles(this.eventFilePath, this.dirPath);
                      })
                  }
                  .width('100%')
                  .align(Alignment.End)
                }
                .align(Alignment.Center)
                .width('100%')
                .margin({ top: '24.0', left: '24.0', right: '24.0', bottom: '24.0' } as Margin)
              }
              .backgroundColor('#f1f3f5')
              .width('100%')
              .height('216.0')
            }
            .backgroundColor('#f1f3f5')
            .width('100%')
          }
          .width('100%')
        }
        .height('100%')
      }
    }
  }
}