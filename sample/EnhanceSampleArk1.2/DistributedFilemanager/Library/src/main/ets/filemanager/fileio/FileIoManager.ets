'use static'
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

import fs from '@ohos.file.fs';
import Logger from '../../utils/Logger';
import { FileType, SubDirectoryType } from '../../mock/local/FileData';
import { BusinessError } from '@ohos.base';

// 大小和单位
const GB_MAGNITUDE: number = 1024 * 1024 * 1024;
const MB_MAGNITUDE: number = 1024 * 1024;
const KB_MAGNITUDE: number = 1024;
const GB_SYMBOL: string = 'GB';
const MB_SYMBOL: string = 'MB';
const KB_SYMBOL: string = 'KB';
const BYTE_SYMBOL: string = 'B';

class SubDirectory implements SubDirectoryType {
  name: string[] = []
  type: number = 0
  time: Date
  childrenNum?: number;
  fileSize?: string;
  constructor(time: Date) {
    this.time = time
    this.childrenNum = 0;
    this.fileSize = '';
  }
}

class FileSystem {
  // 获取文件大小
  getFileSize(filePath: string): string {
    try {
      const stats = fs.statSync(filePath);
      const fileSize = Number(stats.size);
      if (fileSize / GB_MAGNITUDE > 1) {
        return `${(fileSize / GB_MAGNITUDE).toFixed(2)}${GB_SYMBOL}`;
      } else if (fileSize / MB_MAGNITUDE > 1) {
        return `${(fileSize / MB_MAGNITUDE).toFixed(2)}${MB_SYMBOL}`;
      } else if (fileSize / KB_MAGNITUDE > 1) {
        return `${(fileSize / KB_MAGNITUDE).toFixed(2)}${KB_SYMBOL}`;
      } else {
        return `${fileSize}${BYTE_SYMBOL}`;
      }
    } catch (err) {
      err = err as BusinessError;
      Logger.error(`getFileSize failed, code is ${err.code}, message is ${err.message}`);
      throw new Error(`getFileSize failed, code is ${err.code}, message is ${err.message}`);
    }
  }

  // 根据沙箱路径打开目录
  getSubdirectory(filePath: string): SubDirectory[] {
    try {
      let subdirectory: SubDirectory[] = [];
      const fileList = fs.listFileSync(filePath);

      for (const fileName of fileList) {
        const fullPath = `${filePath}/${fileName}`;
        try {
          const stats = fs.statSync(fullPath);
          const isDirectory = stats.isDirectory();
          const time = new Date(stats.ctime * 1000);

          let item = new SubDirectory(time);
          item.name = [fileName];
          item.type = isDirectory ? 1 : 2;

          if (isDirectory) {
            item.childrenNum = this.getSubdirectoryNum(fullPath);
          } else {
            item.fileSize = this.getFileSize(fullPath);
          }

          subdirectory.push(item);
        } catch (err) {
          Logger.error(`Error processing file ${fileName}: ${err}`);
        }
      }

      return subdirectory;
    } catch (err) {
      err = err as BusinessError;
      Logger.error(`getSubdirectory failed, code is ${err.code}, message is ${err.message}`);
      throw new Error(`getSubdirectory failed, code is ${err.code}, message is ${err.message}`);
    }
  }

  // 获取目录中的子目录个数
  getSubdirectoryNum(filePath: string): number {
    try {
      let count = 0;
      const fileList = fs.listFileSync(filePath);

      for (const fileName of fileList) {
        const fullPath = `${filePath}/${fileName}`;
        try {
          const stats = fs.statSync(fullPath);
          if (stats.isDirectory()) {
            count++;
          }
        } catch (err) {
          Logger.error(`Error checking file ${fileName}: ${err}`);
        }
      }

      return count;
    } catch (err) {
      err = err as BusinessError;
      Logger.error(`getSubdirectoryNum failed, code is ${err.code}, message is ${err.message}`);
      throw new Error(`getSubdirectoryNum failed, code is ${err.code}, message is ${err.message}`);
    }
  }

  // 获取文件修改时间
  getFileTime(filePath: string): Date {
    try {
      const stats = fs.statSync(filePath);
      return new Date(stats.ctime * 1000);
    } catch (err) {
      err = err as BusinessError;
      Logger.error(`getFileTime failed, code is ${err.code}, message is ${err.message}`);
      throw new Error(`getFileTime failed, code is ${err.code}, message is ${err.message}`);
    }
  }
}

export default new FileSystem();