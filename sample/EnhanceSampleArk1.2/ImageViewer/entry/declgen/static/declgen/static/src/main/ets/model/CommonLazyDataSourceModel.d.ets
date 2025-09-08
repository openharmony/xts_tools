'use static'
import { Observed } from "@kit.ArkUI";
import { IDataSource, DataChangeListener } from "@kit.ArkUI";
export declare function main(): void;
@Observed
export declare class BasicDataSource<T> implements IDataSource {
    public totalCount(): number;
    public getData(index: number): T;
    public registerDataChangeListener(listener: DataChangeListener): void;
    public unregisterDataChangeListener(listener: DataChangeListener): void;
    public notifyDataReload(): void;
    public notifyDataAdd(index: number): void;
    public notifyDataChange(index: number): void;
    public notifyDataDelete(index: number): void;
    public notifyDataMove(from: number, to: number): void;
    public constructor();
}
@Observed
export declare class CommonLazyDataSourceModel<T> extends BasicDataSource<T> {
    public totalCount(): number;
    public getData(index: number): T;
    public addData(index: number, data: T): void;
    public pushData(data: T): void;
    public clearAndPushAll(data: Array<T>): void;
    public constructor();
}
