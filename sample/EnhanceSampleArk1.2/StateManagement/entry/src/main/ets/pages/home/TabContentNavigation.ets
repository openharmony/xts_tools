'use static'
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License")
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
  ColumnAttribute,
  Color,
  Component,
  Column,
  List,
  ForEach,
  ListItem,
  Text,
  TextAlign,
  Blank,
  Divider,
  ItemAlign,
  State,
  Row,
  Image,
  Alignment,
  Padding,
  ClickEvent,
  Margin,
  $r,
  ColumnOptions,
} from '@kit.ArkUI';

import router from '@ohos.router';
import { SecondLevelCategory, ThirdLevelCategory, FourthLevelCategory } from './model/CategoricalDataType';
import { UIContext } from '@ohos.arkui.UIContext';

function ColumnStyle(this: ColumnAttribute): ColumnAttribute {
  this.width('100%');
  this.borderRadius(24.0);
  this.backgroundColor(Color.White);
  this.padding({
    left: 12.0,
    right: 12.0,
    bottom: 4.0,
    top: 4.0
  } as Padding);
  return this;
}

@Component
export struct TabContentNavigation {
  private categories: Array<ThirdLevelCategory | SecondLevelCategory> =
    new Array<ThirdLevelCategory | SecondLevelCategory>();

  hasSecondLevelCategory(category: ThirdLevelCategory | SecondLevelCategory): boolean {
    return (category as SecondLevelCategory).tag !== undefined;
  }

  build() {
    Column() {
      List() {
        if (this.categories.length > 0 && this.hasSecondLevelCategory(this.categories[0])) {
          ForEach(this.categories, (item: ThirdLevelCategory | SecondLevelCategory, index: number) => {
            if (this.hasSecondLevelCategory(item)) {
              const secondLevelCategory = item as SecondLevelCategory;
              ListItem() {
                Column() {
                  Text(secondLevelCategory.title)
                    .height(48.0)
                    .fontSize(14.0)
                    .width('100%')
                    .textAlign(TextAlign.Start)
                    .fontFamily('HarmonyHeiTi-Medium')
                    .fontColor($r('app.color.font_color_shallow'))
                    .padding({ bottom: 4.0, top: 4.0, left: 24.0 } as Padding)

                  Column() {
                    ForEach(secondLevelCategory.childNodes, (thirdLevelCategory: ThirdLevelCategory,
                      thirdLevelCategoryIndex: number) => {
                      ThirdLevelNavigation({
                        thirdLevelCategory: thirdLevelCategory,
                        secondLevelCategoryIndex: index,
                        ThirdLevelNavigationIndex: thirdLevelCategoryIndex
                      })
                    })
                  }
                  .ColumnStyle()
                }
              }
            }
          }, (item: ThirdLevelCategory | SecondLevelCategory) => item.toString()) // 添加key生成函数
        } else {
          ForEach(this.categories, (item: ThirdLevelCategory | SecondLevelCategory, index: number) => {
            if (!this.hasSecondLevelCategory(item)) {
              const thirdLevelCategory = item as ThirdLevelCategory;
              ListItem() {
                Column() {
                  ThirdLevelNavigation({
                    thirdLevelCategory: thirdLevelCategory,
                    secondLevelCategoryIndex: -1, // 标记为没有二级分类
                    ThirdLevelNavigationIndex: index
                  })
                }
                .ColumnStyle()
              }
              .margin({ top: 4.0, bottom: 4.0 } as Margin)
            }
          }, (item: ThirdLevelCategory | SecondLevelCategory) => item.toString()) // 添加key生成函数
        }
      }
      .width('100%')
      .layoutWeight(1.0)
      .padding({ left: 16.0, right: 16.0, top: 4.0 } as Padding)

      Blank()

      Divider()
        .height(0.75)
        .width('100%')
        .alignSelf(ItemAlign.Baseline)
        .color($r('app.color.tab_bar_divider'))
    }
    .height('100%')
    .padding({ top: 12.0 } as Padding)
  }
}

@Component
struct ThirdLevelNavigation {
  @State isUnfold: boolean = false;
  private thirdLevelCategory?: ThirdLevelCategory;
  private ThirdLevelNavigationIndex: number;
  private secondLevelCategoryIndex: number;

  build() {
    Column() {
      Row() {
        Text(this.thirdLevelCategory?.title)
          .fontSize(16.0)
          .margin({ left: 16.0 } as Margin)
          .fontFamily('HarmonyHeiTi-Medium')
          .fontColor($r('app.color.font_color_dark'))

        Blank()

        if (this.thirdLevelCategory?.childNodes) {
          Image(this.isUnfold ? $r('app.media.ic_down_arrow') : $r('app.media.ic_right_arrow'))
            .width(this.isUnfold ? 24.0 : 12.0)
            .height(this.isUnfold ? 12.0 : 24.0)
            .margin({ right: this.isUnfold ? 0.0 : 6.0 } as Margin)
        }
      }
      .height(56.0)
      .width('100%')
      .onClick((event: ClickEvent) => {
        if (!this.thirdLevelCategory?.childNodes) {
          this.getUIContext().getRouter().pushUrl({
            url: this.thirdLevelCategory?.url as string
          });
        } else {
          this.isUnfold = !this.isUnfold;
        }
      })

      if (this.isUnfold) {
        ForEach(this.thirdLevelCategory?.childNodes!, (fourthLevelCategory: FourthLevelCategory, index: number) => {
          Column() {
            Divider()
              .height(1.0)
              .opacity(0.2)
              .margin({ left: 42.0, right: 8.0 } as Margin)
              .color($r('app.color.font_color_dark'))

            FourthLevelNavigation({ fourthLevelCategory: fourthLevelCategory })
          }
        }, (item: FourthLevelCategory) => item.title.toString()) // 添加key生成函数
      }
    }
    .id(`secondLevelMenu${this.secondLevelCategoryIndex}${this.secondLevelCategoryIndex === 1 ? 0 :
      this.ThirdLevelNavigationIndex}`)
  }
}

@Component
struct FourthLevelNavigation {
  private fourthLevelCategory?: FourthLevelCategory;

  build() {
    Row() {
      Text(this.fourthLevelCategory?.title)
        .fontSize(16.0)
        .layoutWeight(1.0)
        .margin({ left: 42.0 } as Margin)
        .align(Alignment.Start)
        .fontFamily('HarmonyHeiTi-Medium')
        .fontColor($r('app.color.font_color_dark'))
      Blank()
    }
    .height(48.0)
    .width('100%')
    .onClick((event: ClickEvent) => {
      // Click to jump to the corresponding page
      this.getUIContext().getRouter().pushUrl({
        url: this.fourthLevelCategory?.url as string
      });
    })
  }
}