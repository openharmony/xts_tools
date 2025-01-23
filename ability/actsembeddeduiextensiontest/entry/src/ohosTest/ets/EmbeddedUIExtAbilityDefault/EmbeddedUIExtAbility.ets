import { EmbeddedUIExtensionAbility, UIExtensionContentSession, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';



const TAG: string = '[ExampleEmbeddedAbility]'

export default class ExampleEmbeddedAbility extends EmbeddedUIExtensionAbility {
  onCreate() {
    console.log(TAG, `onCreate`)
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        data: 'onCreate'
      }
    }
    commonEventManager.publish('EmbeddedAbility_same_Default', commonEventPublishData, async (error) => {
      hilog.info(0x0000, 'testTag1', '%{public}s', `EmbeddedAbilityDefault publish: ${JSON.stringify(error)}`);
    })
  }

  onForeground() {
    console.log(TAG, `onForeground`);
  }

  onBackground() {
    hilog.info(0x0000, 'testTag', `onBackground`)
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        data: '333'
      }
    }
    commonEventManager.publish('OnBackground', commonEventPublishData, async (error) => {
      hilog.info(0x0000, 'testTag1', '%{public}s', `EmbeddedAbility3 publish: ${JSON.stringify(error)}`);
    })
  }

  onDestroy() {
    console.log(TAG, `onDestroy`);
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        data: '222'
      }
    }
    commonEventManager.publish('OnDestroy', commonEventPublishData, async (error) => {
      hilog.info(0x0000, 'testTag1', '%{public}s', `EmbeddedAbility4 publish: ${JSON.stringify(error)}`);
    })
  }

  onSessionCreate(want: Want, session: UIExtensionContentSession) {
    console.log(TAG, `onSessionCreate, want: ${JSON.stringify(want)}`);
    let param: Record<string, UIExtensionContentSession> = {
      'session': session
    };
    let storage: LocalStorage = new LocalStorage(param);
    session.loadContent('pages/DefaultPage', storage);
    session?.terminateSelf()
      .then(() => {
        console.info(`Successed in terminating self.`);
      })
      .catch((err: BusinessError) => {
        console.error(`Failed to terminate self, code: ${err.code}, msg: ${err.message}`);
      });
  }

  onSessionDestroy(session: UIExtensionContentSession) {
    console.log(TAG, `onSessionDestroy`);
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        data: '111'
      }
    }
    commonEventManager.publish('OnSessionDestroy', commonEventPublishData, async (error) => {
      hilog.info(0x0000, 'testTag1', '%{public}s', `EmbeddedAbility5 publish: ${JSON.stringify(error)}`);
    })
  }
}