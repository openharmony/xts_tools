/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

@Entry
@Component
struct UIComponentLayoutStack023 {
  @State name: string = 'UIComponentLayoutStack023';
  @State alignContent: Alignment = Alignment.TopStart;
  myXComponentController: XComponentController = new XComponentController();
  @State stackXPosition: number = 0;
  @State stackYPosition: number = 0;

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Start }) {

      Button('获取Stack组件偏移')
        .id(this.name + '_001')
        .onClick(() => {
          let context = this.getUIContext();
          let info = context.getComponentUtils().getRectangleById(this.name + '_003');
          this.stackXPosition = info.localOffset.x;
          this.stackXPosition = context.px2vp(this.stackXPosition);
          this.stackYPosition = info.localOffset.y;
          this.stackYPosition = context.px2vp(this.stackYPosition);
        })
      Text('横向偏移: ' + this.stackXPosition.toString())
      Text('纵向偏移: ' + this.stackYPosition.toString())

      XComponent({
        id: this.name + '_002',
        type: XComponentType.NODE,
        libraryname: 'nativerender',
        controller: this.myXComponentController
      }) {
        Stack({ }) {
          Text('This is a Text component1').width('80%').height('60%').backgroundColor(0xd2cab3)
          Text('This is a Text component2').width('60%').height('40%').backgroundColor(0xd2cab3)
        }
        .position({x: 'pp', y: 'pp'})
        .id(this.name + '_003')
      }
      .width('100%')
      .height('100%')

    }
    .width('100%')
    .height('100%')
  }
}