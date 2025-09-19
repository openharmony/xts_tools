/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { LengthMetrics } from '@kit.ArkUI';

@Entry
@Component
struct textPickerOnScrollStop07 {
  @State selectedIndex: number = 2;
  @State private eventLog: string = '绛夊緟onScrollStop浜嬩欢瑙﹀彂...';
  private range: string[] = ['閫夐」1', '閫夐」2', '閫夐」3', '閫夐」4', '閫夐」5', '閫夐」6', '閫夐」7', '閫夐」8', '閫夐」9', '閫夐」10'];
  private singleColumnWidths: LengthMetrics[] = [
    LengthMetrics.percent(100)
  ];

  build() {
    Column() {
      Text('鍗曞垪TextPicker寰幆妯″紡閿洏涓婃柟鍚戦敭娴嬭瘯')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })
      
      TextPicker({ range: this.range, selected: this.selectedIndex, value: this.range[this.selectedIndex], columnWidths: this.singleColumnWidths })
        .id('onscrollstop_picker_07')
        .disappearTextStyle({ color: Color.Gray, font: { size: 15, weight: FontWeight.Lighter } })
        .textStyle({ color: Color.Black, font: { size: 18, weight: FontWeight.Normal } })
        .selectedTextStyle({ color: Color.Blue, font: { size: 20, weight: FontWeight.Bold } })
        .defaultPickerItemHeight(50)
        .canLoop(true) // 寰幆妯″紡
        .onChange((value: string | string[], index: number | number[]) => {
          this.selectedIndex = index as number;
          console.info('TextPicker onChange: ' + value + ', index: ' + index);
        })
        .onScrollStop((value: string | string[], index: number | number[]) => {
          console.info('TextPicker onScrollStop: ' + value + ', index: ' + index);
          this.eventLog = `鉁?onScrollStop 瑙﹀彂!\n鍊? ${value}\n绱㈠紩: ${index}`;
        })
        .width('80%')
        .height(200)
        .backgroundColor(Color.White)
        .borderRadius(10)
        .margin({ bottom: 20 })
      
      Text('娴嬭瘯璇存槑: 鍗曞垪TextPicker寰幆妯″紡锛岄敭鐩樹笂鏂瑰悜閿Е鍙憃nScrollStop浜嬩欢')
        .fontSize(14)
        .fontColor(Color.Gray)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 20 })
      
      Text(this.eventLog)
        .fontSize(16)
        .fontColor(Color.Red)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .width('100%')
        .padding(10)
        .backgroundColor(Color.White)
        .borderRadius(8)
        .border({ width: 2, color: Color.Red })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }
}

