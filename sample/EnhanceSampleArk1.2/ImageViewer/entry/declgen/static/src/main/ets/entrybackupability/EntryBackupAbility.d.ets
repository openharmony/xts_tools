'use static'
import { BackupExtensionAbility, BundleVersion } from "@kit.CoreFileKit";
export declare function main(): void;
export declare const DOMAIN: number;
declare class EntryBackupAbility extends BackupExtensionAbility {
    public onBackup(): Promise<void>;
    public onRestore(bundleVersion: BundleVersion): Promise<void>;
    constructor();
}
export default EntryBackupAbility;
