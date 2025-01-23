import { AbilityConstant, UIAbility, Want, common, AbilityLifecycleCallback, wantConstant } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';


export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    console.log('p1test')
    let funcAbilityWant = want;
    let info = funcAbilityWant?.parameters?.key;
    console.log('===111==='+JSON.stringify(want))
    console.log('===222==='+JSON.stringify(info))
    console.log(`onCreate, want parameters: ${want.parameters?.developerParameters}`);
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        'callerInfo':want,
      }
    }
    commonEventManager.publish('ability_onCreat', commonEventPublishData, async (error) =>{
      hilog.info(0x0000, 'testTag1', '%{public}s',
        `onCreat publish: ${JSON.stringify(error)} data: ${JSON.stringify(commonEventPublishData)}`);
    })

    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        date:'111'
      }
    }
    commonEventManager.publish('ability_onForegroundCallBack', commonEventPublishData, async (error) =>{
      hilog.info(0x0000, 'testTag1', '%{public}s',
        `onForeground publish: ${JSON.stringify(error)} data: ${JSON.stringify(commonEventPublishData)}`);
    })
    let want: Want = {
      'deviceId': '',
      'bundleName': '',
      'abilityName': '',
      'type': '',
      'action': '111',
      'entities':[]
    }
    try{
      this.context.startAbility(want,(err:BusinessError) => {
        if(err.code){
          console.log('error====75===:' + JSON.stringify(err));
        } else {
          console.log('start ability successfully')
        }
      })
    } catch (err){
      let code = (err as BusinessError).code;
      let message = (err as BusinessError).message;
      console.error(`startAbilityForResult failed, code is ${code}, message is ${message}`);
    }
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');

  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }

  onNewWant(want: Want, launchParam: AbilityConstant.LaunchParam) {
    let funcAbilityWant = want;
    let info = funcAbilityWant?.parameters?.key;
    console.log('===333==='+JSON.stringify(want))
    console.log('===444==='+JSON.stringify(info))
    console.log(`onCreate, want parameters: ${want.parameters?.developerParameters}`);
    console.log('AbilityLifecycleCallback onNewWant');
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        'callerInfo':want,
      }
    }
    commonEventManager.publish('ability_onNewWant', commonEventPublishData, async (error) =>{
      hilog.info(0x0000, 'testTag1', '%{public}s',
        `onNewWant publish: ${JSON.stringify(error)} data: ${JSON.stringify(commonEventPublishData)}`);
    })
  }
}