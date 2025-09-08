'use static'
import { Observed } from "@kit.ArkUI";
export declare function main(): void;
@Observed
export declare class ScaleModel {
    public get scaleValue(): number;
    public set scaleValue(value: number);
    public get lastValue(): number;
    public set lastValue(value: number);
    public get maxScaleValue(): number;
    public set maxScaleValue(value: number);
    public get extraScaleValue(): number;
    public set extraScaleValue(value: number);
    public get defaultScaleValue(): number;
    public reset(): void;
    public stash(): void;
    public toString(): string;
    constructor();
}
