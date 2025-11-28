'use static'
/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { AppStorage, $r } from '@kit.ArkUI';
import { EAWorker } from '@ohos.arkui.component';
import fs from '@ohos.file.fs';
import { Logger, sleep } from '../common/Common';
import { BusinessError } from '@ohos.base';

const CONTENT = 'hello world';
const TAG: string = '[ConcurrentModule].[MyWorker]';
const FILE_NUM: number = 200.0; // 预制200 1m以下的小文件
const FILE_NUMBER: number = 9.0; // 文件1-9命名时加上0
const LIST_FILE_TWO: number = 2.0; // 显示拷贝成功后的第二个文件名
const SLEEP_TIME: number = 100.0; // 睡眠时间

let fileFlag: boolean = false;

class MessageObjectCopy {
  count: number
  strFlag: boolean
  listFileNames:string[]

  constructor(count: number, strFlag: boolean, listFileNames:string[]) {
    this.count = count;
    this.strFlag = strFlag;
    this.listFileNames = listFileNames;
  }
}

class MessageObject {
  srcDir: string
  destDir: string
  fileNames: Array<string>

  constructor(srcDir: string, destDir: string, fileNames: Array<string>) {
    this.srcDir = srcDir;
    this.destDir = destDir;
    this.fileNames = fileNames;
  }
}

export default class MyFile {
  public baseDir: string | undefined = '';
  public filesCount: number = 0.0;
  private flag: boolean = false;
  public realFileNames: Array<string> = [];

  public fileListName1: string = '';
  public fileListName2: string = '';
  public copyFileShowLog: string = '';

  constructor() {
    this.baseDir = AppStorage.get<string>('sanBoxFileDir');
  }

  readyFileToFileFs(): void {
    let fileFsDir = this.baseDir + '/fileFs';
    try {
      if (!fs.accessSync(fileFsDir)) {
        fs.mkdirSync(fileFsDir);
      }
      Logger.info(TAG, 'readyFileToFileFs successful');
    } catch (e) {
      Logger.error(TAG, `readyFileToFileFs has failed for: {message: ${(e as BusinessError).message}, code: ${(e as BusinessError).code}}`);
    }
  }

  // worker file
  readyFilesToWorker(): void {
    let content = CONTENT + CONTENT + new Date() + '\n';
    let workerDir = this.baseDir + '/workerDir';
    try {
      if (!fs.accessSync(workerDir)) {
        fs.mkdirSync(workerDir);
      }
      Logger.info(TAG, 'readyFilesToWorker dpath = ' + workerDir);
      for (let i: int = 0; i < FILE_NUM; i++) {
        let myFile = '';
        if (i < FILE_NUMBER) {
          myFile = workerDir + `/TestFile0${i + 1}.txt`;
        } else {
          myFile = workerDir + `/TestFile${i + 1}.txt`;
        }
        Logger.info(TAG, 'readyFilesToWorker myFile = ' + myFile);
        let file = fs.openSync(myFile, fs.OpenMode.CREATE | fs.OpenMode.READ_WRITE);
        fs.writeSync(file.fd, content);
        fs.closeSync(file);
      }
      Logger.info(TAG, 'readyFilesToWorker successful');
    } catch (e) {
      Logger.error(TAG, `readyFilesToWorker has failed for: {message: ${(e as BusinessError).message}, code: ${(e as BusinessError).code}}`);
    }
  }

  async workToCopyFiles(files: Array<string>, filePath: string): Promise<void> {
    try {
      fileFlag = false;
      Logger.info(TAG, 'WorkCreator start to create worker');
      let destPath = filePath;
      Logger.info(TAG, 'Workerets destPath ' + destPath);
      if (!fs.accessSync(destPath)) {
        fs.mkdirSync(destPath);
      }
      if (fs.accessSync(destPath)) {
        fs.listFile(destPath).then((filenames :string[]) => {
          Logger.info(TAG, 'listFile succeed');
          for (let i: int = 0; i < filenames.length.toInt(); i++) {
            Logger.info(TAG, 'Workerets fileName: ' + filenames[i]);
          }
        }).catch((err: Error) => {
          Logger.info(TAG, 'list file failed with error message: ' + err.message + ', error code: ' + err.code);
        });
      }
      if (files !== null) {
        this.realFileNames.length = 0;
        for (let i: number = 0.0; i < files.length; i++) {
          if (files[i as int] === 'deletedTag') {
            continue;
          }
          this.realFileNames.push(files[i as int]);
        }
      }
      let count: number = this.realFileNames.length;
      for (let j: number = 0.0; j < count; j++) {
        Logger.info(TAG, 'workToCopyFiles this.realFileNames = ' + this.realFileNames[j as int]);
      }

      //TODO: worker
      let currentworker = EAWorker.current();
      let workerInstance = new EAWorker();
      workerInstance.start();

      let currentCB = (msg: concurrency.Message) => {
        Logger.info(TAG, `workerInstance::onmessage receive data: ${JSON.stringify((msg.getObject() as MessageObjectCopy) as String)}`);
        if ((msg.getObject() as MessageObjectCopy).hasOwnProperty('count')) {
          Logger.info(TAG, `workerInstance::onmessage receive data length = ${(msg.getObject() as MessageObjectCopy).count}`);
          this.filesCount = (msg.getObject() as MessageObjectCopy).count;
          this.flag = true;
          let fileName1: string | null = null;
          let fileName2: string | null = null;

          for (let i: int = 0; i < (msg.getObject() as MessageObjectCopy).listFileNames.length; i++) {
            Logger.info(TAG, `Worker workerInstance::onmessage receive listFileNames: ${(msg.getObject() as MessageObjectCopy).listFileNames[i]}`);
          }
          if ((msg.getObject() as MessageObjectCopy).listFileNames.length === 2) {
            fileName1 = (msg.getObject() as MessageObjectCopy).listFileNames[0] + '、';
            fileName2 = (msg.getObject() as MessageObjectCopy).listFileNames[1];
          } else if ((msg.getObject() as MessageObjectCopy).listFileNames.length === 1) {
            fileName1 = (msg.getObject() as MessageObjectCopy).listFileNames[0];
            fileName2 = '';
          } else {
            fileName1 = (msg.getObject() as MessageObjectCopy).listFileNames[0] + '、';
            let copyFileLog: string | undefined = AppStorage.get<string>('copyFileLog5');
            fileName2 = (msg.getObject() as MessageObjectCopy).listFileNames[1] + copyFileLog;
          }
          this.fileListName1 = fileName1;
          // AppStorage.setOrCreate<string>('fileListName1', fileName1);
          this.fileListName2 = fileName2;
          // AppStorage.setOrCreate<string>('fileListName2', fileName2);
          let copyFileLog3: string | undefined = AppStorage.get<string>('copyFileLog3');
          let copyFileLog4: string | undefined = AppStorage.get<string>('copyFileLog4');
          let copyFileLog = '2、' + fileName1 + fileName2 + copyFileLog3 + 'copy' + copyFileLog4;
          if (fileName1 !== 'undefined、') {
            this.copyFileShowLog = copyFileLog;
            // AppStorage.setOrCreate<string>('copyFileShowLog', copyFileLog);
          } else {
            this.copyFileShowLog = '2、请选择文件';
            // AppStorage.setOrCreate<string>('copyFileShowLog', $r('app.string.workerLogChooseFile'));
            // AppStorage.setOrCreate<string>('copyFileShowLog', '2、请选择文件');
          }
          Logger.info(TAG, `Worker workerInstance::onmessage receive count: ${JSON.stringify(this.filesCount)}`);
        }
        if (this.filesCount !== 0.0) {
          // AppStorage.setOrCreate<string>('fileNumber', JSON.stringify(this.filesCount));
        } else {
          // AppStorage.setOrCreate<string>('fileNumber', '0');
          // AppStorage.setOrCreate<string>('fileListName1', '');
          // AppStorage.setOrCreate<string>('fileListName2', '');
          this.filesCount = 0;
          this.fileListName1 = '';
          this.fileListName2 = '';
        }
        Logger.info(TAG, 'workerInstance::onmessage Finish to process data from WorkerCopy.ts');
        workerInstance?.quit();
        fileFlag = (msg.getObject() as MessageObjectCopy).strFlag;
      }
      let currentHandler = new concurrency.MessageHandler(currentCB, workerInstance);
      const workerCB = (msg: concurrency.Message) => {
        let srcPath: string = '';
        let destPathCb: string = '';
        let fileNames: Array<string> = (msg.getObject() as MessageObject).fileNames;
        for (let i = 0; i < fileNames.length; i++) {
          srcPath = (msg.getObject() as MessageObject).srcDir + '/' + fileNames[i];
          Logger.info(TAG, ' srcPath ' + srcPath);
          destPathCb = (msg.getObject() as MessageObject).destDir + '/' + fileNames[i];
          Logger.info(TAG, ' destPathCb ' + destPathCb);
          try {
            fs.copyFileSync(srcPath, destPathCb);
            let countTest = fs.listFileSync((msg.getObject() as MessageObject).destDir).length;
            Logger.info(TAG, `Worker workerInstance::onmessage receive countTest: ${countTest}`);
          } catch (e) {
            Logger.error(TAG, 'WorkerCopy::copyFile has failed for: ' + JSON.stringify(e));
          }
        }

        let listFileNames: string[] = [''];
        listFileNames.length = 0;
        try {
          let count = fs.listFileSync((msg.getObject() as MessageObject).destDir).length;
          let listFiles: string[] = fs.listFileSync((msg.getObject() as MessageObject).destDir);
          Logger.info(TAG, 'listFile succeed');
          for (let i: int = 0; i < listFiles.length; i++) {
            listFileNames.push(listFiles[i]);
            Logger.info(TAG, `Worker workerInstance::onmessage receive listFileNames: ${listFileNames[i]}`);
          }

          let workerPortMsgObj = new MessageObjectCopy(count, true, listFileNames);
          let msg2 = new concurrency.Message(1, workerPortMsgObj, currentHandler);
          currentHandler.sendMessage(msg2);
          Logger.info(TAG, 'WorkerCopy::onmessage thread post message successfully');
        } catch (e) {
          Logger.error(TAG, 'WorkerCopy::onmessage has failed for: ' + JSON.stringify(e));
        }
      }
      let workerHandler = new concurrency.MessageHandler(workerCB, workerInstance);

      if (this.realFileNames !== null) {
        let srcPath = this.baseDir + '/workerDir';
        let messageObj = new MessageObject(srcPath, destPath, this.realFileNames);
        let workerMessage = new concurrency.Message(1, messageObj, workerHandler);
        workerMessage.sendToTarget();
      }

      // workerInstance.onexit = (code): void => {//没有这个方法了
      //   Logger.info(TAG, `workerInstance::onexit has been exit ${code}`);
      // };
      workerInstance.setUncaughtExceptionHandler((err: Error) => {
        Logger.info(TAG, `workerInstance::onerror has errors: ${JSON.stringify(err)}`);
      });

      // workerInstance.onmessageerror = (event): void => {//没有这个方法了
      //   Logger.info(TAG, `workerInstance::onmessageerror has errors: ${JSON.stringify(event)}`);
      // };

      // while (!fileFlag) {
      //   // await sleep(SLEEP_TIME);
      // }
      const end = Date.now() + 500;
      while (Date.now() < end) {
      }
      AppStorage.setOrCreate<string>('fileNumber', this.filesCount.toString());
      AppStorage.setOrCreate<string>('fileListName1', this.fileListName1);
      AppStorage.setOrCreate<string>('fileListName2', this.fileListName2);
      AppStorage.setOrCreate<string>('copyFileShowLog', this.copyFileShowLog);
    } catch (e) {
      Logger.error(TAG, `Worker WorkCreator error package: message: ${(e as BusinessError).message}, code: ${(e as BusinessError).code}`);
    }
  }

  deleteCopyFile(filePath: string): void {
    Logger.info(TAG, 'deleteCopyFile destCopyFilePath = ' + filePath);
    try {
      if (fs.accessSync(filePath)) {
        let isDirectory = fs.statSync(filePath).isDirectory();
        if (isDirectory) {
          fs.rmdirSync(filePath);
          fs.mkdirSync(filePath);
        }
      }
    } catch (e) {
      Logger.error(TAG, `delete workerCopyFile error package: message: ${(e as BusinessError).message}, code: ${(e as BusinessError).code}`);
    }
  }
}