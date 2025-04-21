import { common, Want } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { expect } from '@ohos/hypium';

@Entry
@Component
struct Index {
  build() {
    Column() {
     Text('MainAbility2_pages')
       .fontColor(Color.Red)
       .fontSize(20)
    }
  }
}