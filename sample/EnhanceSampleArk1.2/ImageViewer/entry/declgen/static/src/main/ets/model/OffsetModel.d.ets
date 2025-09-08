'use static'
import { Observed } from "@kit.ArkUI";
export declare function main(): void;
@Observed
export declare class OffsetModel {
    public get currentX(): number;
    public set currentX(value: number);
    public get currentY(): number;
    public set currentY(value: number);
    public get lastX(): number;
    public set lastX(value: number);
    public get lastY(): number;
    public set lastY(value: number);
    public reset(): void;
    public stash(): void;
    public toString(): string;
}
