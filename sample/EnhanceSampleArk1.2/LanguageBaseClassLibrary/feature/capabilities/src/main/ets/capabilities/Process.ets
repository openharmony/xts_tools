'use static'
/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import {
  Component,
  State,
  Scroll,
  Column,
  Text,
  TextAlign,
  BarState,
  Alignment,
  $r,
  Padding,
  Margin,
  StdProcess
} from '@kit.ArkUI';

// import { ColumnOperation } from '../components/ColumnOperation';
import { getString } from 'common';
import { logger } from 'common';

let child: StdProcess.ChildProcess | undefined = undefined;
const TAG: string = 'Process';

@Component
export struct ProcessView {
  @State result: string = '';

  build() {
    Scroll() {
      Column() {
        Text(this.result)
          .width('100%')
          .height(100.0)
          .backgroundColor('#DFDFDF')
          .fontSize(20.0)
          .margin({ top: 20.0 } as Margin)
          .textAlign(TextAlign.Start)
          .padding(10.0)
        // ColumnOperation({ operationRes: $r('app.strarray.process_operations'), doOperation: this.doOperation })
      }
      .width('100%')
      .padding(16.0)
    }
    .scrollBar(BarState.Off)
    .align(Alignment.Start)
  }

  doOperation (index: number)  {
    let proManager = new StdProcess.ProcessManager();
    const uIContext = this.getUIContext();
    switch (index as int) {
      case 0:
        this.result = StdProcess.uptime().toString() + 's';
        logger.info(TAG, 'uptime=' + this.result);
        break;
      case 1:
        logger.info(TAG, 'process cwd');
        this.result = StdProcess.cwd().toString();
        break;
      case 2:
        logger.info(TAG, 'process change dir');
        StdProcess.chdir('/system');
        this.result = StdProcess.cwd().toString();
        break;
      case 3:
        child = StdProcess.runCmd('sleep 2;ls');
        this.result = child == null ? 'failed' : 'succeed';
        logger.info(TAG, 'runCmd=' + this.result);
        let childResult = child?.wait();
        childResult?.then(val => {
          this.result = 'child process run finish' + JSON.stringify(val);
          logger.info(TAG, 'runCmd result =' + val);
        })
        break;
      case 4:
        if (child != null) {
          this.result = getString($r('app.string.close_success'), uIContext);
          child?.close();
        } else {
          this.result = getString($r('app.string.child_null'), uIContext);
        }
        logger.info(TAG, this.result);
        break;
      case 5:
        let pres = StdProcess.pid();
        let result = proManager.kill(28, pres);
        if (result === true) {
          this.result = getString($r('app.string.success'), uIContext);
        } else {
          this.result = getString($r('app.string.failed'), uIContext);
        }
        break;
      case 6:
        proManager.exit(0);
        break;
      default:
        break;
    }
  }
}