'use static'
import { AbilityConstant, UIAbility, Want } from "@kit.AbilityKit";
import { window } from "@kit.ArkUI";
export declare function main(): void;
export declare const DOMAIN: number = 0.0;
declare class EntryAbility extends UIAbility {
    public onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void;
    public onDestroy(): void;
    public onWindowStageCreate(windowStage: window.WindowStage): void;
    public onWindowStageDestroy(): void;
    public onForeground(): void;
    public onBackground(): void;
    public constructor();
}
export default EntryAbility;
