'use static'
import { Observed } from "@kit.ArkUI";
export declare function main(): void;
@Observed
export declare class RotateModel {
    public get currentRotate(): number;
    public set currentRotate(value: number);
    public get lastRotate(): number;
    public set lastRotate(value: number);
    public get startAngle(): number;
    public set startAngle(value: number);
    public reset(): void;
    public stash(): void;
}
