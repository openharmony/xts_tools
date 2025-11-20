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

@Entry
@Component
struct UiComponentTextRichEditorLongPress00020 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Column() {
      Text('编辑态或者预览态下长按emoji')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 16 })

      RichEditor(this.options)
        .onReady(() => {
          // 组件内添加多个emoji内容
          this.controller.addTextSpan('😀😁😂🤣😃😄😅😆😉😊😋😎😍😘🥰😗😙😚☺️🙂🤗🤩🤔🤨😐😑😶🙄😏😣😥😮🤐😯😪😫😴😌😛😜😝🤤😒😓😔😕🙃🤑😲☹️🙁😖😞😟😤😢😭😦😧😨😩🤯😬😰😱🥵🥶😳🤪😵😡😠🤬😷🤒🤕🤢🤮🤧😇🤠🤡🥳🥴🥺🤥🤫🤭🤯🤪😵😡😠🤬😷🤒🤕🤢🤮🤧😇🤠🤡🥳🥴🥺🤥🤫🤭', {
            style: {
              fontSize: 16,
              fontColor: Color.Black
            }
          })
        })
        .id("rich_editor_longpress_00020")
        .width('100%')
        .height(200)
        .backgroundColor(Color.White)
        .border({ width: 1, color: Color.Blue })
        .borderRadius(8)
        .padding(8)
        .margin({ bottom: 12 })
    }
    .width('100%').height('100%').padding(16).backgroundColor('#F6F7F9')
  }
}
