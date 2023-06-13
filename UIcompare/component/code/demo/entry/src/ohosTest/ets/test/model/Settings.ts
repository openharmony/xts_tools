// @ts-nocheck
import screen from '@ohos.screen';
import window from '@ohos.window';
import Logger from './Logger';

const TAG: string = '[Settings]';

class Settings {
    sleep(time) {
        return new Promise((resolve) => setTimeout(resolve, time));
    }

    windowClass: window.Window = null

    changeWindowPosition(windowClass, X, Y) {
        //为悬浮窗设置位置
        windowClass.moveWindowTo(X, Y, (err) => {
            if (err.code) {
                Logger.error(TAG, `Failed to move the window. Cause : ${JSON.stringify(err)}`)
                return;
            }
        })
    }

    changeWindowSize(windowClass, width, height) {
        //为悬浮窗设置大小
        windowClass.resize(width, height, (err) => {
            if (err.code) {
                Logger.error(TAG, `Failed to change the window size. Cause : ${JSON.stringify(err)}`)
                return;
            }
        })
    }

    loadContent(windowClass, pageURI) {
        //为悬浮窗加载对应的目标页面
        windowClass.setUIContent(pageURI, (err) => {
            if (err.code) {
                Logger.error(TAG, `Failed to load the content. Cause : ${JSON.stringify(err)}`)
                return;
            }
            Logger.info(TAG, `Succeeded in loading the content.`);

            //显示悬浮窗
            windowClass.showWindow((err) => {
                if (err.code) {
                    Logger.error(TAG, `Failed to show the window. Cause : ${JSON.stringify(err)}`)
                    return;
                }
                Logger.info(TAG, `Succeeded in showing the window.`);
            })
        })
    }

    changeDpi(dpi) {
        let screenClass = null;
        screen.getAllScreens((err, data) => {
            if (err.code) {
                Logger.error(TAG, `Failed to get all screens. Cause : ${JSON.stringify(err)}`);
                return;
            }
            Logger.info(TAG, `Succeeded in getting all screens. Data:${JSON.stringify(data)}`);

            screenClass = data[0];
            //设置设备dpi
            screenClass.setDensityDpi(dpi, (err, data) => {
                if (err.code) {
                    Logger.error(TAG, `Failed to set the pixel density. Code : ${JSON.stringify(err)}`)
                    return;
                }
                Logger.info(TAG, `Succeeded in setting the pixel density`);
            })
        })
    }

    destroyWindow(windowClass) {
        //销毁窗口
        windowClass.destroyWindow((err) => {
            if (err.code) {
                Logger.error(TAG, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
                return;
            }
            Logger.info(TAG, `Succeeded in destroy the window.`);
        })
    }

    /*
     * 窗口页面更新
     * Setting.createWindow(pageURI: String, {X,Y,width,height,dpi}?:{X?:number,Y?:number,width?:number,height?:number,dpi?:number}):void
     * 必填：
     * pageURI：页面路由
     * 选填：
     * X,Y：窗口相对于左上角的位置，默认X=100,Y=100 单位为px
     * width,height:窗口宽高，默认width=600,height=1250 可配置范围：[0,2560],单位为vp
     * dpi:像素密度，默认dpi=330，可配置范围：80-640
     * */

    createWindow(pageURI: String, {X=100,Y=100,width=600,height=1250,dpi=400}={}) {
        Logger.info(TAG, `params,pageURI=${pageURI},X=${X},Y=${Y},width=${width},height=${height},dpi=${dpi}`)

        this.changeDpi(dpi)
        this.sleep(1000)
        let windowClass = null
        let config = {
            name: "floatWindow",
            windowType: window.WindowType.TYPE_FLOAT,
            ctx: globalThis.context
        };
        window.createWindow(config, (err, data) => {
            if (err.code) {
                Logger.error(TAG, `Failed to create the floatWindow. Cause : ${JSON.stringify(err)}`)
                return;
            }
            Logger.info(TAG, `Succeeded in creating the floatWindow. Data : ${JSON.stringify(err)}`);
            windowClass = data;
            this.windowClass = data;

            this.changeWindowPosition(windowClass, X, Y);
            this.changeWindowSize(windowClass, width, height);
            this.loadContent(windowClass, pageURI)
        })
    }
}

export default new Settings()