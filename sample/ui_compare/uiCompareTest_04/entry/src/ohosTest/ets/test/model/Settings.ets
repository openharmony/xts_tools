/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import screen from '@ohos.screen';
import window from '@ohos.window';
import Logger from './Logger';
import { GlobalThis } from './globalThis'
import { BusinessError } from '@ohos.base'

const TAG: string = '[TEST]';

async function sleep(time: number): Promise<void> {
  const result: string = await new Promise((resolve: Function) => {
    setTimeout(() => {
      resolve('sleep ok')
    }, time)
  });
  console.info(result);
}

class Settings {
  windowClass: window.Window | undefined = undefined
  windowCreateType: string = "changeWindow";
  private static DEFAULT_WIDTH: number = 720;
  private static DEFAULT_HEIGHT: number = 1280;
  private static DEFAULT_DPI: number = 240;
  private static DEFAULT_OFFSET_X: number = 0;
  private static DEFAULT_OFFSET_Y: number = 60;


  changeWindowPosition(windowClass: window.Window, X: number | undefined, Y: number | undefined) {
    //涓烘偓娴獥璁剧疆浣嶇疆
    windowClass.moveWindowTo(X, Y, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to move the window. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, 'Succeed moveWindowTo.');
    })
  }

  changeWindowSize(windowClass: window.Window, width: number | undefined, height: number | undefined) {
    //涓烘偓娴獥璁剧疆澶у皬
    windowClass.resize(width, height, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to change the window size. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, 'Succeed changeWindowSize');
    })
  }

  loadContent(windowClass: window.Window, pageURI: string) {
    //涓烘偓娴獥鍔犺浇瀵瑰簲鐨勭洰鏍囬〉闈?    windowClass.setUIContent(pageURI, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to load the window. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, `Succeeded in loading the content.`);

      //鏄剧ず鎮诞绐?      windowClass.showWindow((err) => {
        if (err.code) {
          Logger.error(TAG, `Failed to show the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(TAG, `Succeeded in showing the window.`);
      })
    })
  }

  loadContentChange(windowClass: window.Window, pageURI: string) {
    //涓烘偓娴獥鍔犺浇瀵瑰簲鐨勭洰鏍囬〉闈?    windowClass.setUIContent(pageURI, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to load the window. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, `Succeeded in loading the content.`);

    })
  }

  changeDpi(dpi: number) {
    let screenClass: screen.Screen;
    screen.getAllScreens((err: BusinessError, data: Array<screen.Screen>) => {
      if (err.code) {
        Logger.error(TAG, `Failed to get all screens. Cause : ${JSON.stringify(err)}`);
        return;
      }
      Logger.info(TAG, `Succeeded in getting all screens. Data:${JSON.stringify(data)}`);

      screenClass = data[0];
      //璁剧疆璁惧dpi
      screenClass.setDensityDpi(dpi, (err: BusinessError) => {
        if (err.code) {
          Logger.error(TAG, `Failed to set the pixel density. Code : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(TAG, `Succeeded in setting the pixel density`);
      })
    })
  }

  setWindowSystemBarEnable(windowClass: window.Window, names: Array<'status' | 'navigation'>) {
    windowClass.setWindowSystemBarEnable(names, (err: BusinessError) => {
      const errCode: number = err.code;
      if (errCode) {
        Logger.error(TAG, 'Failed to set the system bar to be invisible. Cause:' + JSON.stringify(err))
        return;
      }
      Logger.info(TAG, `Succeeded in set the system bar to be invisible`);
    });
  }

  destroyWindow(windowClass: window.Window) {
    //閿€姣佺獥鍙?    windowClass.destroyWindow((err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, `Succeeded in destroy the window.`);
    })
  }

  /*
   * 绐楀彛椤甸潰鏇存柊
   * Setting.createWindow(pageURI: String, {X,Y,width,height,dpi}?:{X?:number,Y?:number,width?:number,height?:number,dpi?:number}):void
   * 蹇呭～锛?   * pageURI锛氶〉闈㈣矾鐢?   * 閫夊～锛?   * X,Y锛氱獥鍙ｇ浉瀵逛簬宸︿笂瑙掔殑浣嶇疆锛岄粯璁=100,Y=100 鍗曚綅涓簆x
   * width,height:绐楀彛瀹介珮锛岄粯璁idth=600,height=1250 鍙厤缃寖鍥达細[0,2560],鍗曚綅涓簐p
   * dpi:鍍忕礌瀵嗗害锛岄粯璁pi=330锛屽彲閰嶇疆鑼冨洿锛?0-640
   * */

  createWindow(pageURI: string, X?: number | undefined, Y?: number | undefined, width?: number | undefined, height?: number | undefined, dpi?: number | undefined) {

    this.windowCreateType = "createWindow"
    if (X == undefined) {
      X = Settings.DEFAULT_OFFSET_X;
    }
    if (Y == undefined) {
      Y = Settings.DEFAULT_OFFSET_Y;
    }
    if (width == undefined) {
      width = Settings.DEFAULT_WIDTH;
    }
    if (height == undefined) {
      height = Settings.DEFAULT_HEIGHT - Settings.DEFAULT_OFFSET_Y;
    }
    if (dpi == undefined) {
      dpi = Settings.DEFAULT_DPI;
    }
    Logger.info(TAG, `params,pageURI=${pageURI},X=${X},Y=${Y},width=${width},height=${height},dpi=${dpi}`)
    this.changeDpi(dpi)
    sleep(1000)
    let config: window.Configuration = {
      name: "floatWindow",
      windowType: window.WindowType.TYPE_FLOAT,
      ctx: GlobalThis.getInstance().getContext('context')
    };

    window.createWindow(config, (err, data) => {
      if (err.code) {
        Logger.error(TAG, `Failed to create the floatWindow. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, `Succeeded in creating the floatWindow. Data : ${JSON.stringify(err)}`);
      this.windowClass = data;
      this.changeWindowPosition(this.windowClass, X, Y);
      this.changeWindowSize(this.windowClass, width, height);
      this.loadContent(this.windowClass, pageURI)
    })
  }

  async changeWindow(pageURI: string, width?: number | undefined, height?: number | undefined, dpi?: number | undefined) {

    this.windowCreateType = "changeWindow"
    if (width == undefined) {
      width = Settings.DEFAULT_WIDTH;
    }
    if (height == undefined) {
      height = Settings.DEFAULT_HEIGHT - Settings.DEFAULT_OFFSET_Y;
    }
    if (dpi == undefined) {
      dpi = Settings.DEFAULT_DPI;
    }
    Logger.info(TAG, `params,pageURI=${pageURI},width=${width},height=${height},dpi=${dpi}`)
    this.changeDpi(dpi)
    await sleep(500)

    window.getLastWindow(GlobalThis.getInstance().getContext('context'), async (err: BusinessError, data) => {
      const errCode: number = err.code;
      if (errCode) {
        Logger.error(TAG, 'Failed to obtain the top Window. Cause : ' + JSON.stringify(err));
        return;
      }
      Logger.info(TAG, 'succeed to obtain the top Window. Cause : ' + JSON.stringify(err));
      this.windowClass = data;
      await sleep(200)
      this.loadContent(this.windowClass, pageURI)
      await sleep(200)
      this.changeWindowSize(this.windowClass, width, height);
      await sleep(200)
      this.setWindowSystemBarEnable(this.windowClass, []);
    });
  }

  async changeWindowOrientation(end:string) {
    window.getLastWindow(GlobalThis.getInstance().getContext('context')).then((lastWindow:window.Window) => {
      let orientation:window.Orientation = this.windowClass!.getPreferredOrientation();
      Logger.info(`before set window orientation: ${orientation}}`)
      if(end === 'end'){
        orientation = window.Orientation.PORTRAIT
      } else if (end === 'landScape') {
        orientation = window.Orientation.LANDSCAPE
      } else if (end === 'portrait') {
        orientation = window.Orientation.PORTRAIT
      }
      sleep(400)
      try {
        let promise = lastWindow.setPreferredOrientation(orientation);
        promise.then(() => {
          Logger.info('Succeeded in setting the window orientation.');
          let orientation2 = lastWindow.getPreferredOrientation();
          Logger.info(`after set window orientation: ${orientation2}}`)
          globalThis.orientation = orientation;
        }).catch((err: BusinessError) => {
          Logger.error(`Failed to set the window orientation. Cause code: ${err.code}, message: ${err.message}`);
        });
      } catch (exception) {
        Logger.error(`Failed to set window orientation. Cause code: ${exception.code}, message: ${exception.message}`);
      }
    })
  }
}

export default new Settings()