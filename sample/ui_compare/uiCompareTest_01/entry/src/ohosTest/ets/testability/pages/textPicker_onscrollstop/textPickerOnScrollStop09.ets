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
struct textPickerOnScrollStop09 {
  @State selectedIndex: number = 2;
  @State private eventLog: string = '绛夊緟onScrollStop浜嬩欢瑙﹀彂...';
  private range1: string[] = ['閫夐」1', '閫夐」2', '閫夐」3', '閫夐」4', '閫夐」5'];
  private range2: string[] = ['閫夐」A', '閫夐」B', '閫夐」C', '閫夐」D', '閫夐」E'];
  private range3: string[] = ['閫夐」X', '閫夐」Y', '閫夐」Z', '閫夐」W', '閫夐」V'];
  private multiRange: string[][] = [this.range1, this.range2, this.range3];
  private multipleColumnWidths: LengthMetrics[] = [
    LengthMetrics.percent(33),
    LengthMetrics.percent(33),
    LengthMetrics.percent(34)
  ];

  build() {
    Column() {
      Text('澶氬垪TextPicker闈炲惊鐜ā寮忓崟涓€夐」婊戝姩鍥炲脊娴嬭瘯')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })
      
      TextPicker({ range: this.multiRange, columnWidths: this.multipleColumnWidths })
        .id('onscrollstop_picker_09')
        .disappearTextStyle({ color: Color.Gray, font: { size: 15, weight: FontWeight.Lighter } })
        .textStyle({ color: Color.Black, font: { size: 18, weight: FontWeight.Normal } })
        .selectedTextStyle({ color: Color.Blue, font: { size: 20, weight: FontWeight.Bold } })
        .defaultPickerItemHeight(50)
        .canLoop(false) // 闈炲惊鐜ā寮?
        .onChange((value: string | string[], index: number | number[]) => {
          console.info('TextPicker onChange: ' + JSON.stringify(value) + ', index: ' + JSON.stringify(index));
        })
        .onScrollStop((value: string | string[], index: number | number[]) => {
          console.info('TextPicker onScrollStop: ' + JSON.stringify(value) + ', index: ' + JSON.stringify(index));
          this.eventLog = `鉁?onScrollStop 瑙﹀彂!\n鍊? ${JSON.stringify(value)}\n绱㈠紩: ${JSON.stringify(index)}`;
        })
        .width('90%')
        .height(200)
        .backgroundColor(Color.White)
        .borderRadius(10)
        .margin({ bottom: 20 })
      
      Text('娴嬭瘯璇存槑: 澶氬垪TextPicker闈炲惊鐜ā寮忥紝鍗曚釜閫夐」婊戝姩鍥炲脊瑙﹀彂onScrollStop浜嬩欢')
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

