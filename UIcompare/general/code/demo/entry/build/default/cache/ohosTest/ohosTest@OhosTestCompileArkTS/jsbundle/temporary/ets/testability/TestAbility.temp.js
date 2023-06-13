var _702ddc02e9d4b8dc29b823c839b26124;
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/List.test.ets":
/*!************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/List.test.ets ***!
  \************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
let __generate__Id = 0;
function generateId() {
    return "List.test_" + ++__generate__Id;
}
const BackgroundColorTest_test_1 = __importDefault(__webpack_require__(/*! ./generalAttributes/BackgroundColorTest.test */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/generalAttributes/BackgroundColorTest.test.ets"));
function testsuite() {
    BackgroundColorTest_test_1.default();
}
exports["default"] = testsuite;


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/common/CommonTest.ets":
/*!********************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/common/CommonTest.ets ***!
  \********************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
let __generate__Id = 0;
function generateId() {
    return "CommonTest_" + ++__generate__Id;
}
const AttrsManager_1 = __webpack_require__(/*! ../model/AttrsManager */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/AttrsManager.ets");
const Utils_1 = __importDefault(__webpack_require__(/*! ../model/Utils */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Utils.ets"));
const hypium_1 = __webpack_require__(/*! @ohos/hypium */ "../../../../../../projects/general/node_modules/@ohos/hypium/index.js");
const snapShot_1 = __importDefault(__webpack_require__(/*! ../model/snapShot */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/snapShot.ts"));
const Settings_1 = __importDefault(__webpack_require__(/*! ../model/Settings */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Settings.ts"));
const Logger_1 = __importDefault(__webpack_require__(/*! ../model/Logger */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Logger.ts"));
var _ohos_router_1  = globalThis.requireNapi('router') || (isSystemplugin('router', 'ohos') ? globalThis.ohosplugin.router : isSystemplugin('router', 'system') ? globalThis.systemplugin.router : undefined);
class CommonTest {
    static initTest(pageConfig, supportView, testValues) {
        hypium_1.afterEach(async function (done) {
            if (Settings_1.default.windowClass == null) {
                return;
            }
            Settings_1.default.windowClass.destroyWindow((err) => {
                if (err.code) {
                    Logger_1.default.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`);
                    return;
                }
                Logger_1.default.info('TEST', `Succeeded in destroy the window.`);
            });
            await Utils_1.default.sleep(1000);
            done();
        });
        //根据要测试的组件和属性值循环创建case
        supportView.forEach(targetView => {
            testValues.forEach(testValue => {
                let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe;
                //create cases
                hypium_1.it(caseTag, 0, async (done) => {
                    pageConfig['targetView'] = targetView;
                    pageConfig['componentKey'] = targetView;
                    //创建窗口，设置窗口页面
                    Settings_1.default.createWindow(pageConfig.pageUrl);
                    await Utils_1.default.sleep(1000);
                    //跳转页面并传递参数
                    await _ohos_router_1.pushUrl({
                        url: pageConfig.pageUrl,
                        params: {
                            view: pageConfig
                        }
                    });
                    //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
                    // await Utils.clickComponentByKey(targetView)
                    await Utils_1.default.sleep(1000);
                    //更改属性值
                    AttrsManager_1.AttrsManager.change(caseTag, testValue.setValue);
                    //截图
                    await Utils_1.default.sleep(1000);
                    snapShot_1.default.snapShot(globalThis.context, caseTag);
                    await Utils_1.default.sleep(1000);
                    done();
                });
            });
        });
    }
}
exports["default"] = CommonTest;


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/constants/Constants.ets":
/*!**********************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/constants/Constants.ets ***!
  \**********************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";

Object.defineProperty(exports, "__esModule", ({ value: true }));
exports.Constants = void 0;
let __generate__Id = 0;
function generateId() {
    return "Constants_" + ++__generate__Id;
}
class Constants {
}
exports.Constants = Constants;
Constants.EVENT_ID_CHANGE_DATA = 101;


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/generalAttributes/BackgroundColorTest.test.ets":
/*!*********************************************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/generalAttributes/BackgroundColorTest.test.ets ***!
  \*********************************************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
let __generate__Id = 0;
function generateId() {
    return "BackgroundColorTest.test_" + ++__generate__Id;
}
const CommonTest_1 = __importDefault(__webpack_require__(/*! ../common/CommonTest */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/common/CommonTest.ets"));
const hypium_1 = __webpack_require__(/*! @ohos/hypium */ "../../../../../../projects/general/node_modules/@ohos/hypium/index.js");
//测试通用属性-backgroundColor
function backgroundColorTest() {
    //supportView包含了所有测试组件，根据当前通用数据所适用的组件进行修改,遍历生成case
    // this param is required.
    let supportView = [
        'AlphabetIndexer', 'Blank', 'Button', 'Checkbox', 'CheckboxGroup', 'DataPanel', 'DatePicker',
        'Divider', 'Gauge', 'Image', 'LoadingProgress', 'Marquee', 'Menu', 'MenuItem', 'MenuItemGroup', 'Navigation',
        'NavRouter', 'NavDestination', 'PatternLock', 'Progress', 'QRCode', 'Radio', 'Rating', 'RichText', 'ScrollBar',
        'Search', 'Select', 'Slider', 'Span', 'Stepper', 'StepperItem', 'Text', 'TextArea', 'TextClock', 'TextInput',
        'TextPicker', 'TextTimer', 'TimePicker', 'Toggle', 'Badge', 'Column', 'ColumnSplit', 'Counter', 'Flex',
        'FlowItem', 'GridCol', 'GridRow', 'Grid', 'GridItem', 'List', 'ListItem', 'ListItemGroup', 'Navigator', 'Panel',
        'Refresh', 'RelativeContainer', 'Row', 'RowSplit', 'Scroll', 'SideBarContainer', 'Stack', 'Swiper', 'Tabs',
        'TabContent', 'WaterFlow', 'Video', 'Circle', 'Ellipse', 'Line', 'Polyline', 'Polygon', 'Path', 'Rect', 'Shape', 'Canvas'
    ];
    //页面配置信息
    // this param is required.
    let pageConfig = {
        testName: 'BackgroundColorTest',
        pageUrl: 'testability/pages/BackgroundColorPage' //用于设置窗口页面
    };
    //要测试的属性值，遍历生成case
    // this param is required.
    let testValues = [{
            describe: 'Color',
            setValue: Color.Green, //要测试的属性值
        }, {
            describe: 'Number',
            setValue: 0xa23535, //酒红色
        }, {
            describe: 'String',
            setValue: 'rgb(255,105,180)', //hot pink
        }, {
            describe: 'Resource',
            setValue: { "id": 16777221, "type": 10001, params: [], "bundleName": "com.example.general", "moduleName": "entry_test" },
        }];
    //  create test suite
    hypium_1.describe("BackgroundColorTest", () => {
        //    create test cases by config.
        CommonTest_1.default.initTest(pageConfig, supportView, testValues);
    });
}
exports["default"] = backgroundColorTest;


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/AttrsManager.ets":
/*!*********************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/model/AttrsManager.ets ***!
  \*********************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
exports.AttrsManager = void 0;
let __generate__Id = 0;
function generateId() {
    return "AttrsManager_" + ++__generate__Id;
}
const Constants_1 = __webpack_require__(/*! ../constants/Constants */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/constants/Constants.ets");
var _ohos_events_emitter_1  = globalThis.requireNapi('events.emitter') || (isSystemplugin('events.emitter', 'ohos') ? globalThis.ohosplugin.events.emitter : isSystemplugin('events.emitter', 'system') ? globalThis.systemplugin.events.emitter : undefined);
class AttrsManager {
    constructor() {
        this.stateChangeCallBack = (eventData) => {
            if (eventData != null) {
                if (eventData.data.src != null) {
                    let src = JSON.parse(eventData.data.src);
                    this.callBack(src.value);
                }
            }
        };
    }
    static change(caseName, setValue) {
        let eventData = { data: { src: JSON.stringify({ value: setValue }) } };
        this.emitEvent(caseName, Constants_1.Constants.EVENT_ID_CHANGE_DATA, eventData);
    }
    registerDataChange(callBack) {
        this.callBack = callBack;
        this.onEvent(Constants_1.Constants.EVENT_ID_CHANGE_DATA);
    }
    onEvent(eventId) {
        var stateChangeEvent = {
            eventId: eventId,
            priority: _ohos_events_emitter_1.EventPriority.LOW
        };
        _ohos_events_emitter_1.off(eventId);
        _ohos_events_emitter_1.on(stateChangeEvent, this.stateChangeCallBack);
    }
    static emitEvent(tag, eventId, eventData) {
        var innerEvent = {
            eventId: eventId,
            priority: _ohos_events_emitter_1.EventPriority.LOW
        };
        _ohos_events_emitter_1.emit(innerEvent, eventData);
    }
}
exports.AttrsManager = AttrsManager;
let attrsManager = new AttrsManager();
exports["default"] = attrsManager;


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Logger.ts":
/*!**************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Logger.ts ***!
  \**************************************************************************************/
/***/ (function(__unused_webpack_module, exports) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
var _ohos_hilog_1  = globalThis.requireNapi('hilog') || (isSystemplugin('hilog', 'ohos') ? globalThis.ohosplugin.hilog : isSystemplugin('hilog', 'system') ? globalThis.systemplugin.hilog : undefined);
class Logger {
    constructor(prefix) {
        this.format = "%{public}s,%{public}s";
        this.prefix = prefix;
        this.domain = 0xFF00;
    }
    debug(...args) {
        _ohos_hilog_1.debug(this.domain, this.prefix, this.format, args);
    }
    info(...args) {
        _ohos_hilog_1.info(this.domain, this.prefix, this.format, args);
    }
    warn(...args) {
        _ohos_hilog_1.warn(this.domain, this.prefix, this.format, args);
    }
    error(...args) {
        _ohos_hilog_1.error(this.domain, this.prefix, this.format, args);
    }
}
exports["default"] = new Logger('[Screenshot]');


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Settings.ts":
/*!****************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Settings.ts ***!
  \****************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
// @ts-nocheck
var _ohos_screen_1  = globalThis.requireNapi('screen') || (isSystemplugin('screen', 'ohos') ? globalThis.ohosplugin.screen : isSystemplugin('screen', 'system') ? globalThis.systemplugin.screen : undefined);
var _ohos_window_1  = globalThis.requireNapi('window') || (isSystemplugin('window', 'ohos') ? globalThis.ohosplugin.window : isSystemplugin('window', 'system') ? globalThis.systemplugin.window : undefined);
const Logger_1 = __importDefault(__webpack_require__(/*! ./Logger */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Logger.ts"));
const TAG = '[Setting]';
class Settings {
    constructor() {
        this.windowClass = null;
    }
    sleep(time) {
        return new Promise((resolve) => setTimeout(resolve, time));
    }
    changeWindowPosition(windowClass, X, Y) {
        //为悬浮窗设置位置
        windowClass.moveWindowTo(X, Y, (err) => {
            if (err.code) {
                Logger_1.default.error(TAG, `Failed to move the window. Cause : ${JSON.stringify(err)}`);
                return;
            }
        });
    }
    changeWindowSize(windowClass, width, height) {
        //为悬浮窗设置大小
        windowClass.resize(width, height, (err) => {
            if (err.code) {
                Logger_1.default.error(TAG, `Failed to change the window size. Cause : ${JSON.stringify(err)}`);
                return;
            }
        });
    }
    loadContent(windowClass, pageURI) {
        //为悬浮窗加载对应的目标页面
        windowClass.setUIContent(pageURI, (err) => {
            if (err.code) {
                Logger_1.default.error(TAG, `Failed to load the window. Cause : ${JSON.stringify(err)}`);
                return;
            }
            Logger_1.default.info(TAG, `Succeeded in loading the content.`);
            //显示悬浮窗
            windowClass.showWindow((err) => {
                if (err.code) {
                    Logger_1.default.error(TAG, `Failed to show the window. Cause : ${JSON.stringify(err)}`);
                    return;
                }
                Logger_1.default.info(TAG, `Succeeded in showing the window.`);
            });
        });
    }
    changeDpi(dpi) {
        let screenClass = null;
        _ohos_screen_1.getAllScreens((err, data) => {
            if (err.code) {
                Logger_1.default.error(TAG, `Failed to get all screens. Cause : ${JSON.stringify(err)}`);
                return;
            }
            Logger_1.default.info(TAG, `Succeeded in getting all screens. Data:${JSON.stringify(data)}`);
            screenClass = data[0];
            //设置设备dpi
            screenClass.setDensityDpi(dpi, (err, data) => {
                if (err.code) {
                    Logger_1.default.error(TAG, `Failed to set the pixel density. Code : ${JSON.stringify(err)}`);
                    return;
                }
                Logger_1.default.info(TAG, `Succeeded in setting the pixel density`);
            });
        });
    }
    destroyWindow(windowClass) {
        //销毁窗口
        windowClass.destroyWindow((err) => {
            if (err.code) {
                Logger_1.default.error(TAG, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`);
                return;
            }
            Logger_1.default.info(TAG, `Succeeded in destroy the window.`);
        });
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
    createWindow(pageURI, { X = 100, Y = 100, width = 600, height = 1250, dpi = 400 } = {}) {
        Logger_1.default.info(TAG, `params,pageURI=${pageURI},X=${X},Y=${Y},width=${width},height=${height},dpi=${dpi}`);
        this.changeDpi(dpi);
        this.sleep(1000);
        let windowClass = null;
        let config = {
            name: "floatWindow",
            windowType: _ohos_window_1.WindowType.TYPE_FLOAT,
            ctx: globalThis.context
        };
        _ohos_window_1.createWindow(config, (err, data) => {
            if (err.code) {
                Logger_1.default.error(TAG, `Failed to create the floatWindow. Cause : ${JSON.stringify(err)}`);
                return;
            }
            Logger_1.default.info(TAG, `Succeeded in creating the floatWindow. Data : ${JSON.stringify(err)}`);
            windowClass = data;
            this.windowClass = data;
            this.changeWindowPosition(windowClass, X, Y);
            this.changeWindowSize(windowClass, width, height);
            this.loadContent(windowClass, pageURI);
        });
    }
}
exports["default"] = new Settings();


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Utils.ets":
/*!**************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Utils.ets ***!
  \**************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";

Object.defineProperty(exports, "__esModule", ({ value: true }));
let __generate__Id = 0;
function generateId() {
    return "Utils_" + ++__generate__Id;
}
// @ts-nocheck
var _ohos_UiTest_1  = globalThis.requireNapi('UiTest') || (isSystemplugin('UiTest', 'ohos') ? globalThis.ohosplugin.UiTest : isSystemplugin('UiTest', 'system') ? globalThis.systemplugin.UiTest : undefined);
class Utils {
    static sleep(time) {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                resolve();
            }, time);
        });
    }
    static async clickComponentByKey(componentKey) {
        let driver = await _ohos_UiTest_1.UiDriver.create();
        let component = await driver.findComponent(_ohos_UiTest_1.BY.key(componentKey));
        await component.click();
    }
}
exports["default"] = Utils;


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/snapShot.ts":
/*!****************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/model/snapShot.ts ***!
  \****************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
// @ts-nocheck
var _ohos_window_1  = globalThis.requireNapi('window') || (isSystemplugin('window', 'ohos') ? globalThis.ohosplugin.window : isSystemplugin('window', 'system') ? globalThis.systemplugin.window : undefined);
const Logger_1 = __importDefault(__webpack_require__(/*! ./Logger */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Logger.ts"));
var _ohos_multimedia_image_1  = globalThis.requireNapi('multimedia.image') || (isSystemplugin('multimedia.image', 'ohos') ? globalThis.ohosplugin.multimedia.image : isSystemplugin('multimedia.image', 'system') ? globalThis.systemplugin.multimedia.image : undefined);
var _ohos_multimedia_mediaLibrary_1  = globalThis.requireNapi('multimedia.mediaLibrary') || (isSystemplugin('multimedia.mediaLibrary', 'ohos') ? globalThis.ohosplugin.multimedia.mediaLibrary : isSystemplugin('multimedia.mediaLibrary', 'system') ? globalThis.systemplugin.multimedia.mediaLibrary : undefined);
var _ohos_file_fs_1  = globalThis.requireNapi('file.fs') || (isSystemplugin('file.fs', 'ohos') ? globalThis.ohosplugin.file.fs : isSystemplugin('file.fs', 'system') ? globalThis.systemplugin.file.fs : undefined);
const TAG = '[windowSnap]';
const INFO = {
    "img": {
        prefix: 'IMG_',
        suffix: '.webp',
        directory: _ohos_multimedia_mediaLibrary_1.DirectoryType.DIR_IMAGE,
        mediaType: _ohos_multimedia_mediaLibrary_1.MediaType.IMAGE
    },
    "txt": {
        prefix: 'TXT_',
        suffix: '.txt',
        directory: _ohos_multimedia_mediaLibrary_1.DirectoryType.DIR_DOCUMENTS,
        mediaType: _ohos_multimedia_mediaLibrary_1.MediaType.FILE
    }
};
class windowSnap {
    async createAndGetFile(context, type, caseName) {
        Logger_1.default.info(TAG, `createAndGetFile start`);
        let mediaTest = _ohos_multimedia_mediaLibrary_1.getMediaLibrary(context);
        let info = INFO[type];
        //文件名用于自动化UI对比
        let name = caseName ? caseName : "test";
        let displayName = `${info.prefix}${name}${info.suffix}`;
        let option = {
            selections: _ohos_multimedia_mediaLibrary_1.FileKey.DISPLAY_NAME + '=?',
            selectionArgs: [displayName],
        };
        let fetchFileResult = await mediaTest.getFileAssets(option);
        if (fetchFileResult.getCount()) {
            let asset = await fetchFileResult.getFirstObject();
            await mediaTest.deleteAsset(asset.uri);
        }
        let publicPath = await mediaTest.getPublicDirectory(info.directory);
        Logger_1.default.info(TAG, `publicPath=${publicPath},displayName=${displayName}`);
        return await mediaTest.createAsset(info.mediaType, displayName, publicPath);
    }
    async savePicture(data, context, caseName) {
        let packOpts = {
            format: "image/webp", quality: 100
        };
        let imagePackerApi = _ohos_multimedia_image_1.createImagePacker();
        let arrayBuffer = await imagePackerApi.packing(data, packOpts);
        let fileAsset = await this.createAndGetFile(context, "img", caseName);
        let fd = await fileAsset.open('Rw');
        imagePackerApi.release();
        try {
            await _ohos_file_fs_1.write(fd, arrayBuffer);
        }
        catch (err) {
            Logger_1.default.error(TAG, `write failed ,code is ${err.code},message is ${err.message}`);
        }
        await fileAsset.close(fd);
        Logger_1.default.info(TAG, `write picture done`);
    }
    async saveTXT(data, context) {
        let fileAsset = await this.createAndGetFile(context, "txt");
        let fd = await fileAsset.open('Rw');
        try {
            await _ohos_file_fs_1.write(fd, data);
        }
        catch (err) {
            Logger_1.default.error(TAG, `write failed ,code is ${err.code},message is ${err.message}`);
        }
        await fileAsset.close(fd);
        Logger_1.default.info(TAG, `write txt done`);
    }
    /*
     * 获取窗口结合&文件保存
     * 入参必填 ability的context

     * snapShot
     * savePicture：设备端保存路径：/storage/media/100/local/files/Pictures
     * saveTXT：设备端保存路径：/storage/media/100/local/files/Documents/TXT_test.txt
     **/
    async snapShot(context, caseName) {
        //获取窗口
        Logger_1.default.info(TAG, 'start snapshot');
        let windowClass = null;
        try {
            windowClass = _ohos_window_1.findWindow('floatWindow');
            Logger_1.default.info(TAG, 'find window success');
        }
        catch (exception) {
            Logger_1.default.error(TAG, 'Failed to find the window. Cause:' + JSON.stringify(exception));
        }
        //截屏
        windowClass.snapshot((err, data) => {
            if (err.code) {
                console.error(TAG, 'Failed to snapshot  window. Cause:' + JSON.stringify(err));
                return;
            }
            this.savePicture(data, context, caseName);
            const readBuffer = new ArrayBuffer(data.getPixelBytesNumber());
            data.readPixelsToBuffer(readBuffer, () => {
                //保存成像素值
                this.saveTXT(readBuffer, context);
            });
            data.release();
        });
    }
}
exports["default"] = new windowSnap();


/***/ }),

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/testability/TestAbility.ets?entry":
/*!***************************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/testability/TestAbility.ets?entry ***!
  \***************************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
let __generate__Id = 0;
function generateId() {
    return "TestAbility_" + ++__generate__Id;
}
// @ts-nocheck
var _ohos_bundle_bundleManager_1  = globalThis.requireNapi('bundle.bundleManager') || (isSystemplugin('bundle.bundleManager', 'ohos') ? globalThis.ohosplugin.bundle.bundleManager : isSystemplugin('bundle.bundleManager', 'system') ? globalThis.systemplugin.bundle.bundleManager : undefined);
var _ohos_abilityAccessCtrl_1  = globalThis.requireNapi('abilityAccessCtrl') || (isSystemplugin('abilityAccessCtrl', 'ohos') ? globalThis.ohosplugin.abilityAccessCtrl : isSystemplugin('abilityAccessCtrl', 'system') ? globalThis.systemplugin.abilityAccessCtrl : undefined);
var _ohos_app_ability_UIAbility_1  = globalThis.requireNapi('app.ability.UIAbility') || (isSystemplugin('app.ability.UIAbility', 'ohos') ? globalThis.ohosplugin.app.ability.UIAbility : isSystemplugin('app.ability.UIAbility', 'system') ? globalThis.systemplugin.app.ability.UIAbility : undefined);
var _ohos_app_ability_abilityDelegatorRegistry_1  = globalThis.requireNapi('app.ability.abilityDelegatorRegistry') || (isSystemplugin('app.ability.abilityDelegatorRegistry', 'ohos') ? globalThis.ohosplugin.app.ability.abilityDelegatorRegistry : isSystemplugin('app.ability.abilityDelegatorRegistry', 'system') ? globalThis.systemplugin.app.ability.abilityDelegatorRegistry : undefined);
var _ohos_hilog_1  = globalThis.requireNapi('hilog') || (isSystemplugin('hilog', 'ohos') ? globalThis.ohosplugin.hilog : isSystemplugin('hilog', 'system') ? globalThis.systemplugin.hilog : undefined);
const hypium_1 = __webpack_require__(/*! @ohos/hypium */ "../../../../../../projects/general/node_modules/@ohos/hypium/index.js");
const List_test_1 = __importDefault(__webpack_require__(/*! ../test/List.test */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/List.test.ets"));
__webpack_require__(/*! @ohos.window */ "../../api/@ohos.window.d.ts");
const Logger_1 = __importDefault(__webpack_require__(/*! ../test/model/Logger */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/Logger.ts"));
const TAG = '[createWindow]';
class TestAbility extends _ohos_app_ability_UIAbility_1 {
    sleep(time) {
        return new Promise((resolve) => setTimeout(resolve, time));
    }
    onCreate(want, launchParam) {
        var _a, _b;
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'TestAbility onCreate');
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', (_a = 'want param:' + JSON.stringify(want)) !== null && _a !== void 0 ? _a : '');
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', (_b = 'launchParam:' + JSON.stringify(launchParam)) !== null && _b !== void 0 ? _b : '');
        var abilityDelegator;
        abilityDelegator = _ohos_app_ability_abilityDelegatorRegistry_1.getAbilityDelegator();
        var abilityDelegatorArguments;
        abilityDelegatorArguments = _ohos_app_ability_abilityDelegatorRegistry_1.getArguments();
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'start run testcase!!!');
        hypium_1.Hypium.hypiumTest(abilityDelegator, abilityDelegatorArguments, List_test_1.default);
    }
    onDestroy() {
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'TestAbility onDestroy');
    }
    onWindowStageCreate(windowStage) {
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'TestAbility onWindowStageCreate');
        globalThis.context = this.context;
        //系统授权，读写权限
        let atManager = _ohos_abilityAccessCtrl_1.createAtManager();
        let appFlags = _ohos_bundle_bundleManager_1.BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION;
        let permissionFlags = 0;
        _ohos_bundle_bundleManager_1.getBundleInfoForSelf(appFlags, (err, data) => {
            if (err) {
                Logger_1.default.error(TAG, 'getAllApplicationInfo failed: %{public}s', err.message);
                console.error("");
            }
            let tokenID = data.appInfo.accessTokenId; //系统应用可以通过bundleManager.getApplicationInfo获取，普通应用可以通过bundleManager.getBundleInfoForSelf获取
            atManager.grantUserGrantedPermission(tokenID, 'ohos.permission.READ_MEDIA', permissionFlags, (err, data) => {
                if (err) {
                    Logger_1.default.info(TAG, `grantUserGrantedPermission fail, err->${JSON.stringify(err)}`);
                }
            });
            atManager.grantUserGrantedPermission(tokenID, 'ohos.permission.WRITE_MEDIA', permissionFlags, (err, data) => {
                if (err) {
                    Logger_1.default.info(TAG, `grantUserGrantedPermission fail, err->${JSON.stringify(err)}`);
                }
            });
        });
        //    windowStage.loadContent('testability/pages/Index', (err, data) => {
        //      if (err.code) {
        //        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        //        return;
        //      }
        //      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s',
        //        JSON.stringify(data) ?? '');
        //    });
    }
    onWindowStageDestroy() {
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'TestAbility onWindowStageDestroy');
    }
    onForeground() {
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'TestAbility onForeground');
    }
    onBackground() {
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'TestAbility onBackground');
    }
}
globalThis.exports.default = TestAbility;


/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/index.js":
/*!*****************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/index.js ***!
  \*****************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
Object.defineProperty(exports, "ArgumentMatchers", ({
  enumerable: true,
  get: function () {
    return _ArgumentMatchers.default;
  }
}));
Object.defineProperty(exports, "Core", ({
  enumerable: true,
  get: function () {
    return _core.default;
  }
}));
Object.defineProperty(exports, "DEFAULT", ({
  enumerable: true,
  get: function () {
    return _Constant.DEFAULT;
  }
}));
Object.defineProperty(exports, "DataDriver", ({
  enumerable: true,
  get: function () {
    return _DataDriver.default;
  }
}));
Object.defineProperty(exports, "ExpectExtend", ({
  enumerable: true,
  get: function () {
    return _ExpectExtend.default;
  }
}));
exports.Hypium = void 0;
Object.defineProperty(exports, "Level", ({
  enumerable: true,
  get: function () {
    return _Constant.Level;
  }
}));
Object.defineProperty(exports, "MockKit", ({
  enumerable: true,
  get: function () {
    return _MockKit.MockKit;
  }
}));
Object.defineProperty(exports, "OhReport", ({
  enumerable: true,
  get: function () {
    return _OhReport.default;
  }
}));
Object.defineProperty(exports, "Size", ({
  enumerable: true,
  get: function () {
    return _Constant.Size;
  }
}));
Object.defineProperty(exports, "SysTestKit", ({
  enumerable: true,
  get: function () {
    return _SysTestKit.default;
  }
}));
Object.defineProperty(exports, "TestType", ({
  enumerable: true,
  get: function () {
    return _Constant.TestType;
  }
}));
Object.defineProperty(exports, "afterAll", ({
  enumerable: true,
  get: function () {
    return _interface.afterAll;
  }
}));
Object.defineProperty(exports, "afterEach", ({
  enumerable: true,
  get: function () {
    return _interface.afterEach;
  }
}));
Object.defineProperty(exports, "beforeAll", ({
  enumerable: true,
  get: function () {
    return _interface.beforeAll;
  }
}));
Object.defineProperty(exports, "beforeEach", ({
  enumerable: true,
  get: function () {
    return _interface.beforeEach;
  }
}));
Object.defineProperty(exports, "describe", ({
  enumerable: true,
  get: function () {
    return _interface.describe;
  }
}));
Object.defineProperty(exports, "expect", ({
  enumerable: true,
  get: function () {
    return _interface.expect;
  }
}));
Object.defineProperty(exports, "it", ({
  enumerable: true,
  get: function () {
    return _interface.it;
  }
}));
Object.defineProperty(exports, "when", ({
  enumerable: true,
  get: function () {
    return _MockKit.when;
  }
}));

var _core = _interopRequireDefault(__webpack_require__(/*! ./src/core */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/core.js"));

var _Constant = __webpack_require__(/*! ./src/Constant */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/Constant.js");

var _DataDriver = _interopRequireDefault(__webpack_require__(/*! ./src/module/config/DataDriver */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/DataDriver.js"));

var _ExpectExtend = _interopRequireDefault(__webpack_require__(/*! ./src/module/assert/ExpectExtend */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/ExpectExtend.js"));

var _OhReport = _interopRequireDefault(__webpack_require__(/*! ./src/module/report/OhReport */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/report/OhReport.js"));

var _SysTestKit = _interopRequireDefault(__webpack_require__(/*! ./src/module/kit/SysTestKit */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/kit/SysTestKit.js"));

var _interface = __webpack_require__(/*! ./src/interface */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/interface.js");

var _MockKit = __webpack_require__(/*! ./src/module/mock/MockKit */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/MockKit.js");

var _ArgumentMatchers = _interopRequireDefault(__webpack_require__(/*! ./src/module/mock/ArgumentMatchers */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/ArgumentMatchers.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License")
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
class Hypium {
  static setData(data) {
    const core = _core.default.getInstance();

    const dataDriver = new _DataDriver.default({
      data
    });
    core.addService('dataDriver', dataDriver);
  }

  static setTimeConfig(systemTime) {
    _SysTestKit.default.systemTime = systemTime;
  }

  static hypiumTest(abilityDelegator, abilityDelegatorArguments, testsuite) {
    const core = _core.default.getInstance();

    const expectExtend = new _ExpectExtend.default({
      'id': 'extend'
    });
    core.addService('expect', expectExtend);
    const ohReport = new _OhReport.default({
      'delegator': abilityDelegator
    });
    _SysTestKit.default.delegator = abilityDelegator;
    core.addService('report', ohReport);
    core.init();
    core.subscribeEvent('spec', ohReport);
    core.subscribeEvent('suite', ohReport);
    core.subscribeEvent('task', ohReport);
    const configService = core.getDefaultService('config');
    let testParameters = configService.translateParams(abilityDelegatorArguments.parameters);
    console.info('parameters:' + JSON.stringify(testParameters));
    configService.setConfig(testParameters);
    testsuite();

    if (Object.prototype.hasOwnProperty.call(globalThis, 'setupUiTestEnvironment')) {
      globalThis.setupUiTestEnvironment().then(() => {
        console.info('UiTestKit::after run uitest setup, start run testcases');
        core.execute(abilityDelegator);
      }).catch(error => {
        console.error('UiTestKit:: call setupUiTestEnvironment failure:' + error);
        core.execute(abilityDelegator);
      });
    } else {
      console.info('UiTestKit:: no need to setup uitest, start run testcases');
      core.execute(abilityDelegator);
    }
  }

}

exports.Hypium = Hypium;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/Constant.js":
/*!************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/Constant.js ***!
  \************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.TestType = exports.Size = exports.Level = exports.DEFAULT = void 0;

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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

/**
 * define the testcase type : TestType, Size , Level
 */
const DEFAULT = 0B0000;
exports.DEFAULT = DEFAULT;

class TestType {}

exports.TestType = TestType;

_defineProperty(TestType, "FUNCTION", 0B1);

_defineProperty(TestType, "PERFORMANCE", 0B1 << 1);

_defineProperty(TestType, "POWER", 0B1 << 2);

_defineProperty(TestType, "RELIABILITY", 0B1 << 3);

_defineProperty(TestType, "SECURITY", 0B1 << 4);

_defineProperty(TestType, "GLOBAL", 0B1 << 5);

_defineProperty(TestType, "COMPATIBILITY", 0B1 << 6);

_defineProperty(TestType, "USER", 0B1 << 7);

_defineProperty(TestType, "STANDARD", 0B1 << 8);

_defineProperty(TestType, "SAFETY", 0B1 << 9);

_defineProperty(TestType, "RESILIENCE", 0B1 << 10);

class Size {}

exports.Size = Size;

_defineProperty(Size, "SMALLTEST", 0B1 << 16);

_defineProperty(Size, "MEDIUMTEST", 0B1 << 17);

_defineProperty(Size, "LARGETEST", 0B1 << 18);

class Level {}

exports.Level = Level;

_defineProperty(Level, "LEVEL0", 0B1 << 24);

_defineProperty(Level, "LEVEL1", 0B1 << 25);

_defineProperty(Level, "LEVEL2", 0B1 << 26);

_defineProperty(Level, "LEVEL3", 0B1 << 27);

_defineProperty(Level, "LEVEL4", 0B1 << 28);

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/core.js":
/*!********************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/core.js ***!
  \********************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _service = __webpack_require__(/*! ./service */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/service.js");

var _configService = __webpack_require__(/*! ./module/config/configService */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/configService.js");

var _event = __webpack_require__(/*! ./event */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/event.js");

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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

/**
 * core service for execute testcase.
 */
class Core {
  static getInstance() {
    if (!this.instance) {
      this.instance = new Core();
    }

    return this.instance;
  }

  constructor() {
    this.instance = null;
    this.services = {
      suite: {},
      spec: {},
      config: {},
      expect: {},
      log: {},
      report: {}
    };
    this.events = {
      suite: {},
      spec: {},
      task: {}
    };
  }

  addService(name, service) {
    let serviceObj = {};

    if (!this.services[name]) {
      this.services[name] = serviceObj;
    } else {
      serviceObj = this.services[name];
    }

    serviceObj[service.id] = service;
  }

  getDefaultService(name) {
    return this.services[name].default;
  }

  getServices(name) {
    return this.services[name];
  }

  registerEvent(serviceName, event) {
    let eventObj = {};

    if (!this.events[serviceName]) {
      this.events[serviceName] = eventObj;
    } else {
      eventObj = this.events[serviceName];
    }

    eventObj[event.id] = event;
  }

  unRegisterEvent(serviceName, eventID) {
    const eventObj = this.events[serviceName];

    if (eventObj) {
      delete eventObj[eventID];
    }
  }

  subscribeEvent(serviceName, serviceObj) {
    const eventObj = this.events[serviceName];

    if (eventObj) {
      for (const attr in eventObj) {
        eventObj[attr]['subscribeEvent'](serviceObj);
      }
    }
  }

  async fireEvents(serviceName, eventName) {
    const eventObj = this.events[serviceName];

    if (!eventObj) {
      return;
    }

    for (const attr in eventObj) {
      await eventObj[attr][eventName]();
    }
  }

  addToGlobal(apis) {
    if (typeof globalThis !== 'undefined') {
      for (let api in apis) {
        globalThis[api] = apis[api];
      }
    }

    for (const api in apis) {
      this[api] = apis[api];
    }
  }

  init() {
    this.addService('suite', new _service.SuiteService({
      id: 'default'
    }));
    this.addService('spec', new _service.SpecService({
      id: 'default'
    }));
    this.addService('expect', new _service.ExpectService({
      id: 'default'
    }));
    this.addService('report', new _service.ReportService({
      id: 'default'
    }));
    this.addService('config', new _configService.ConfigService({
      id: 'default'
    }));
    this.registerEvent('task', new _event.TaskEvent({
      id: 'default',
      coreContext: this
    }));
    this.registerEvent('suite', new _event.SuiteEvent({
      id: 'default',
      coreContext: this
    }));
    this.registerEvent('spec', new _event.SpecEvent({
      id: 'default',
      coreContext: this
    }));
    this.subscribeEvent('spec', this.getDefaultService('report'));
    this.subscribeEvent('suite', this.getDefaultService('report'));
    this.subscribeEvent('task', this.getDefaultService('report'));
    const context = this;

    for (const key in this.services) {
      const serviceObj = this.services[key];

      for (const serviceID in serviceObj) {
        const service = serviceObj[serviceID];
        service.init(context);

        if (typeof service.apis !== 'function') {
          continue;
        }

        const apis = service.apis();

        if (apis) {
          this.addToGlobal(apis);
        }
      }
    }
  }

  execute(abilityDelegator) {
    const suiteService = this.getDefaultService('suite');
    const configService = this.getDefaultService('config');

    if (configService['dryRun'] === 'true') {
      (async function () {
        await suiteService.dryRun(abilityDelegator);
      })();

      return;
    }

    setTimeout(() => {
      suiteService.execute();
    }, 10);
  }

}

var _default = Core;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/event.js":
/*!*********************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/event.js ***!
  \*********************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.TaskEvent = exports.SuiteEvent = exports.SpecEvent = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
class SpecEvent {
  constructor(attr) {
    this.id = attr.id;
    this.coreContext = attr.context;
    this.eventMonitors = [];
  }

  subscribeEvent(service) {
    this.eventMonitors.push(service);
  }

  async specStart() {
    for (const monitor of this.eventMonitors) {
      await monitor['specStart']();
    }
  }

  async specDone() {
    for (const monitor of this.eventMonitors) {
      await monitor['specDone']();
    }
  }

}

exports.SpecEvent = SpecEvent;

class SuiteEvent {
  constructor(attr) {
    this.id = attr.id;
    this.suiteContext = attr.coreContext;
    this.eventMonitors = [];
  }

  subscribeEvent(service) {
    this.eventMonitors.push(service);
  }

  async suiteStart() {
    for (const monitor of this.eventMonitors) {
      await monitor['suiteStart']();
    }
  }

  async suiteDone() {
    for (const monitor of this.eventMonitors) {
      await monitor['suiteDone']();
    }
  }

}

exports.SuiteEvent = SuiteEvent;

class TaskEvent {
  constructor(attr) {
    this.id = attr.id;
    this.coreContext = attr.coreContext;
    this.eventMonitors = [];
  }

  subscribeEvent(service) {
    this.eventMonitors.push(service);
  }

  async taskStart() {
    for (const monitor of this.eventMonitors) {
      await monitor['taskStart']();
    }
  }

  async taskDone() {
    for (const monitor of this.eventMonitors) {
      await monitor['taskDone']();
    }
  }

  incorrectFormat() {
    for (const monitor of this.eventMonitors) {
      monitor['incorrectFormat']();
    }
  }

}

exports.TaskEvent = TaskEvent;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/interface.js":
/*!*************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/interface.js ***!
  \*************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.it = exports.expect = exports.describe = exports.beforeEach = exports.beforeAll = exports.afterEach = exports.afterAll = void 0;

var _core = _interopRequireDefault(__webpack_require__(/*! ./core */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/core.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
const core = _core.default.getInstance();

const describe = function (desc, func) {
  return Reflect.has(core, 'describe') ? core.describe(desc, func) : (desc, func) => {};
};

exports.describe = describe;

const it = function (desc, filter, func) {
  return Reflect.has(core, 'it') ? core.it(desc, filter, func) : (desc, filter, func) => {};
};

exports.it = it;

const beforeEach = function (func) {
  return Reflect.has(core, 'beforeEach') ? core.beforeEach(func) : func => {};
};

exports.beforeEach = beforeEach;

const afterEach = function (func) {
  return Reflect.has(core, 'afterEach') ? core.afterEach(func) : func => {};
};

exports.afterEach = afterEach;

const beforeAll = function (func) {
  return Reflect.has(core, 'beforeAll') ? core.beforeAll(func) : func => {};
};

exports.beforeAll = beforeAll;

const afterAll = function (func) {
  return Reflect.has(core, 'afterAll') ? core.afterAll(func) : func => {};
};

exports.afterAll = afterAll;

const expect = function (actualValue) {
  return Reflect.has(core, 'expect') ? core.expect(actualValue) : actualValue => {};
};

exports.expect = expect;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/ExpectExtend.js":
/*!******************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/ExpectExtend.js ***!
  \******************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _assertNull = _interopRequireDefault(__webpack_require__(/*! ./assertNull */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNull.js"));

var _assertClose = _interopRequireDefault(__webpack_require__(/*! ./assertClose */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertClose.js"));

var _assertContain = _interopRequireDefault(__webpack_require__(/*! ./assertContain */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertContain.js"));

var _assertLess = _interopRequireDefault(__webpack_require__(/*! ./assertLess */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLess.js"));

var _assertLarger = _interopRequireDefault(__webpack_require__(/*! ./assertLarger */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLarger.js"));

var _assertFail = _interopRequireDefault(__webpack_require__(/*! ./assertFail */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertFail.js"));

var _assertUndefined = _interopRequireDefault(__webpack_require__(/*! ./assertUndefined */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertUndefined.js"));

var _assertFalse = _interopRequireDefault(__webpack_require__(/*! ./assertFalse */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertFalse.js"));

var _assertInstanceOf = _interopRequireDefault(__webpack_require__(/*! ./assertInstanceOf */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertInstanceOf.js"));

var _assertThrowError = _interopRequireDefault(__webpack_require__(/*! ./assertThrowError */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertThrowError.js"));

var _assertLargerOrEqual = _interopRequireDefault(__webpack_require__(/*! ./assertLargerOrEqual */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLargerOrEqual.js"));

var _assertLessOrEqual = _interopRequireDefault(__webpack_require__(/*! ./assertLessOrEqual */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLessOrEqual.js"));

var _assertNaN = _interopRequireDefault(__webpack_require__(/*! ./assertNaN */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNaN.js"));

var _assertNegUnlimited = _interopRequireDefault(__webpack_require__(/*! ./assertNegUnlimited */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNegUnlimited.js"));

var _assertPosUnlimited = _interopRequireDefault(__webpack_require__(/*! ./assertPosUnlimited */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPosUnlimited.js"));

var _assertDeepEquals = _interopRequireDefault(__webpack_require__(/*! ./deepEquals/assertDeepEquals */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/deepEquals/assertDeepEquals.js"));

var _assertPromiseIsPending = _interopRequireDefault(__webpack_require__(/*! ./assertPromiseIsPending */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsPending.js"));

var _assertPromiseIsRejected = _interopRequireDefault(__webpack_require__(/*! ./assertPromiseIsRejected */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejected.js"));

var _assertPromiseIsRejectedWith = _interopRequireDefault(__webpack_require__(/*! ./assertPromiseIsRejectedWith */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejectedWith.js"));

var _assertPromiseIsRejectedWithError = _interopRequireDefault(__webpack_require__(/*! ./assertPromiseIsRejectedWithError */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejectedWithError.js"));

var _assertPromiseIsResolved = _interopRequireDefault(__webpack_require__(/*! ./assertPromiseIsResolved */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsResolved.js"));

var _assertPromiseIsResolvedWith = _interopRequireDefault(__webpack_require__(/*! ./assertPromiseIsResolvedWith */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsResolvedWith.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
class ExpectExtend {
  constructor(attr) {
    this.id = attr.id;
    this.matchers = {};
  }

  extendsMatchers() {
    this.matchers.assertNull = _assertNull.default;
    this.matchers.assertClose = _assertClose.default;
    this.matchers.assertContain = _assertContain.default;
    this.matchers.assertLess = _assertLess.default;
    this.matchers.assertLarger = _assertLarger.default;
    this.matchers.assertFail = _assertFail.default;
    this.matchers.assertUndefined = _assertUndefined.default;
    this.matchers.assertFalse = _assertFalse.default;
    this.matchers.assertInstanceOf = _assertInstanceOf.default;
    this.matchers.assertThrowError = _assertThrowError.default;
    this.matchers.assertLargerOrEqual = _assertLargerOrEqual.default;
    this.matchers.assertLessOrEqual = _assertLessOrEqual.default;
    this.matchers.assertNaN = _assertNaN.default;
    this.matchers.assertNegUnlimited = _assertNegUnlimited.default;
    this.matchers.assertPosUnlimited = _assertPosUnlimited.default;
    this.matchers.assertDeepEquals = _assertDeepEquals.default;
    this.matchers.assertPromiseIsPending = _assertPromiseIsPending.default;
    this.matchers.assertPromiseIsRejected = _assertPromiseIsRejected.default;
    this.matchers.assertPromiseIsRejectedWith = _assertPromiseIsRejectedWith.default;
    this.matchers.assertPromiseIsRejectedWithError = _assertPromiseIsRejectedWithError.default;
    this.matchers.assertPromiseIsResolved = _assertPromiseIsResolved.default;
    this.matchers.assertPromiseIsResolvedWith = _assertPromiseIsResolvedWith.default;
  }

  init(coreContext) {
    this.coreContext = coreContext;
    this.extendsMatchers();
    const expectService = this.coreContext.getDefaultService('expect');
    expectService.addMatchers(this.matchers);
  }

  apis() {
    return {
      'expect': function (actualValue) {
        return this.coreContext.getDefaultService('expect').expect(actualValue);
      }
    };
  }

}

var _default = ExpectExtend;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertClose.js":
/*!*****************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertClose.js ***!
  \*****************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertClose(actualValue, expected) {
  console.log('expected:' + expected[0] + ',precision:' + expected[1]);

  if (actualValue === null && expected[0] === null) {
    throw new Error('actualValue and expected can not be both null!!!');
  }

  let result;
  let diff = Math.abs(expected[0] - actualValue);
  let actualAbs = Math.abs(actualValue);

  if (actualAbs - 0 === 0) {
    if (diff - 0 === 0) {
      result = true;
    } else {
      result = false;
    }
  } else if (diff / actualAbs < expected[1]) {
    result = true;
  } else {
    result = false;
  }

  return {
    pass: result,
    message: '|' + actualValue + ' - ' + expected[0] + '|/' + actualValue + ' is not less than ' + expected[1]
  };
}

var _default = assertClose;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertContain.js":
/*!*******************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertContain.js ***!
  \*******************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertContain(actualValue, expect) {
  let result = false;

  if (Object.prototype.toString.call(actualValue).indexOf('Array')) {
    for (let i in actualValue) {
      if (actualValue[i] == expect[0]) {
        result = true;
      }
    }
  }

  let type = Object.prototype.toString.call(actualValue);

  if (type === '[object String]') {
    result = actualValue.indexOf(expect[0]) >= 0;
  }

  return {
    pass: result,
    message: 'expect false, ' + actualValue + ' do not have  ' + expect[0]
  };
}

var _default = assertContain;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertFail.js":
/*!****************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertFail.js ***!
  \****************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertFail() {
  return {
    pass: false,
    message: 'fail '
  };
}

var _default = assertFail;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertFalse.js":
/*!*****************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertFalse.js ***!
  \*****************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertFalse(actualValue) {
  return {
    pass: actualValue === false,
    message: 'expect false, actualValue is ' + actualValue
  };
}

var _default = assertFalse;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertInstanceOf.js":
/*!**********************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertInstanceOf.js ***!
  \**********************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertInstanceOf(actualValue, expected) {
  if (Object.prototype.toString.call(actualValue) == '[object ' + expected[0] + ']') {
    return {
      pass: true
    };
  } else {
    return {
      pass: false,
      message: actualValue + ' is ' + Object.prototype.toString.call(actualValue) + 'not  ' + expected[0]
    };
  }
}

var _default = assertInstanceOf;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLarger.js":
/*!******************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLarger.js ***!
  \******************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertLarger(actualValue, expected) {
  return {
    pass: actualValue > expected[0],
    message: actualValue + ' is not larger than ' + expected[0]
  };
}

var _default = assertLarger;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLargerOrEqual.js":
/*!*************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLargerOrEqual.js ***!
  \*************************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertLargerOrEqual(actualValue, expected) {
  return {
    pass: actualValue >= expected[0],
    message: actualValue + ' is not larger than ' + expected[0]
  };
}

var _default = assertLargerOrEqual;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLess.js":
/*!****************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLess.js ***!
  \****************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertLess(actualValue, expected) {
  return {
    pass: actualValue < expected[0],
    message: actualValue + ' is not less than ' + expected[0]
  };
}

var _default = assertLess;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLessOrEqual.js":
/*!***********************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertLessOrEqual.js ***!
  \***********************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertLessOrEqual(actualValue, expected) {
  return {
    pass: actualValue <= expected[0],
    message: actualValue + ' is not less than ' + expected[0]
  };
}

var _default = assertLessOrEqual;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNaN.js":
/*!***************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNaN.js ***!
  \***************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertNaN(actualValue) {
  return {
    pass: actualValue !== actualValue,
    message: 'expect NaN, actualValue  is ' + actualValue
  };
}

var _default = assertNaN;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNegUnlimited.js":
/*!************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNegUnlimited.js ***!
  \************************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
* Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertNegUnlimited(actualValue) {
  return {
    pass: actualValue === Number.NEGATIVE_INFINITY,
    message: 'Expected actualValue not to be -Infinity.  actualValue is,' + actualValue
  };
}

var _default = assertNegUnlimited;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNull.js":
/*!****************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertNull.js ***!
  \****************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertNull(actualValue) {
  return {
    pass: actualValue === null,
    message: 'expect null, actualValue is ' + actualValue
  };
}

var _default = assertNull;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPosUnlimited.js":
/*!************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPosUnlimited.js ***!
  \************************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
* Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertPosUnlimited(actualValue) {
  return {
    pass: actualValue === Number.POSITIVE_INFINITY,
    message: 'Expected actualValue is POSITIVE_INFINITY.  actualValue is,' + actualValue
  };
}

var _default = assertPosUnlimited;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsPending.js":
/*!****************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsPending.js ***!
  \****************************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _isPromiseLike = _interopRequireDefault(__webpack_require__(/*! ./isPromiseLike */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertPromiseIsPending(actualPromise) {
  if (!(0, _isPromiseLike.default)(actualPromise)) {
    return Promise.reject().then(function () {}, function () {
      return {
        pass: false,
        message: 'Expected not be called on a promise.'
      };
    });
  }

  const helper = {};
  return Promise.race([actualPromise, Promise.resolve(helper)]).then(function (got) {
    return helper === got ? {
      pass: true,
      message: 'actualValue is isPending'
    } : {
      pass: false,
      message: 'expect isPending, actualValue is resolve'
    };
  }, function () {
    return {
      pass: false,
      message: 'expect isPending, actualValue is reject'
    };
  });
}

var _default = assertPromiseIsPending;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejected.js":
/*!*****************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejected.js ***!
  \*****************************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _isPromiseLike = _interopRequireDefault(__webpack_require__(/*! ./isPromiseLike */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertPromiseIsRejected(actualPromise) {
  if (!(0, _isPromiseLike.default)(actualPromise)) {
    return Promise.reject().then(function () {}, function () {
      return {
        pass: false,
        message: 'Expected not be called on a promise.'
      };
    });
  }

  const helper = {};
  return Promise.race([actualPromise, Promise.resolve(helper)]).then(function (got) {
    return {
      pass: false,
      message: 'expect isRejected, but actualValue is ' + (helper === got ? 'isPending' : 'resolve')
    };
  }, function () {
    return {
      pass: true,
      message: 'actualValue is isRejected'
    };
  });
}

var _default = assertPromiseIsRejected;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejectedWith.js":
/*!*********************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejectedWith.js ***!
  \*********************************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _isPromiseLike = _interopRequireDefault(__webpack_require__(/*! ./isPromiseLike */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertPromiseIsRejectedWith(actualPromise, expectedValue) {
  if (!(0, _isPromiseLike.default)(actualPromise)) {
    return Promise.reject().then(function () {}, function () {
      return {
        pass: false,
        message: 'Expected not be called on a promise.'
      };
    });
  }

  function tips(passed) {
    return 'Expected a promise ' + (passed ? 'not ' : '') + 'to be rejected with ' + JSON.stringify(expectedValue[0]);
  }

  const helper = {};
  return Promise.race([actualPromise, Promise.resolve(helper)]).then(function (got) {
    return {
      pass: false,
      message: tips(false) + ' but actualValue is ' + (helper === got ? 'isPending' : 'resolve')
    };
  }, function (actualValue) {
    if (JSON.stringify(actualValue) == JSON.stringify(expectedValue[0])) {
      return {
        pass: true,
        message: 'actualValue was rejected with ' + JSON.stringify(actualValue) + '.'
      };
    } else {
      return {
        pass: false,
        message: tips(false) + ' but it was rejected with ' + JSON.stringify(actualValue) + '.'
      };
    }
  });
}

var _default = assertPromiseIsRejectedWith;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejectedWithError.js":
/*!**************************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsRejectedWithError.js ***!
  \**************************************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _isPromiseLike = _interopRequireDefault(__webpack_require__(/*! ./isPromiseLike */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertPromiseIsRejectedWithError(actualPromise, expectedValue) {
  if (!(0, _isPromiseLike.default)(actualPromise)) {
    return Promise.reject().then(function () {}, function () {
      return {
        pass: false,
        message: 'Expected not be called on a promise.'
      };
    });
  }

  const helper = {};
  return Promise.race([actualPromise, Promise.resolve(helper)]).then(function (got) {
    return {
      pass: false,
      message: 'Expected a promise to be rejected but actualValue is ' + (helper === got ? 'isPending' : 'resolve')
    };
  }, function (actualValue) {
    return matchError(actualValue, expectedValue);
  });
}

function matchError(actualValue, expectedValue) {
  if (expectedValue.length == 1 && typeof expectedValue[0] === 'function') {
    if (expectedValue[0].name === actualValue.__proto__.name) {
      return {
        pass: true,
        message: 'actual error type is ' + actualValue.name + '.'
      };
    }

    return {
      pass: false,
      message: 'except error type is ' + expectedValue[0].name + ',but actual is ' + actualValue.name + '.'
    };
  }

  if (expectedValue.length == 1 && typeof expectedValue[0] === 'string') {
    if (expectedValue[0] === actualValue.message) {
      return {
        pass: true,
        message: 'actual error message is ' + actualValue.message + '.'
      };
    }

    return {
      pass: false,
      message: 'except error message ' + expectedValue[0] + ',but actual is ' + actualValue.message + '.'
    };
  }

  if (expectedValue.length == 1) {
    return {
      pass: false,
      message: 'When only one parameter, it ' + 'should be error type or error message.'
    };
  }

  if (expectedValue.length == 2 && typeof expectedValue[0] === 'function' && expectedValue[0].name === actualValue.name) {
    if (typeof expectedValue[1] === 'string' && actualValue.message === expectedValue[1]) {
      return {
        pass: true,
        message: 'actual error message is ' + actualValue.message + '.'
      };
    } else {
      return {
        pass: false,
        message: 'except error message is ' + expectedValue[1] + ',but actual is ' + actualValue.message + '.'
      };
    }
  }

  if (expectedValue.length == 2 && typeof expectedValue[0] === 'function' && expectedValue[0].name !== actualValue.name) {
    if (typeof expectedValue[1] === 'string' && actualValue.message === expectedValue[1]) {
      return {
        pass: false,
        message: 'except error type is ' + expectedValue[0].name + ',but actual is ' + actualValue.name + '.'
      };
    } else {
      return {
        pass: false,
        message: 'except error type and message are incorrect.'
      };
    }
  }

  if (expectedValue.length > 2) {
    return {
      pass: false,
      message: 'Up to two parameters are supported.'
    };
  }
}

var _default = assertPromiseIsRejectedWithError;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsResolved.js":
/*!*****************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsResolved.js ***!
  \*****************************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _isPromiseLike = _interopRequireDefault(__webpack_require__(/*! ./isPromiseLike */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertPromiseIsResolved(actualPromise) {
  if (!(0, _isPromiseLike.default)(actualPromise)) {
    return Promise.reject().then(function () {}, function () {
      return {
        pass: false,
        message: 'Expected not be called on a promise.'
      };
    });
  }

  const helper = {};
  return Promise.race([actualPromise, Promise.resolve(helper)]).then(function (got) {
    return helper === got ? {
      pass: false,
      message: 'expect resolve, actualValue is isPending'
    } : {
      pass: true,
      message: 'actualValue is isResolved'
    };
  }, function (rej) {
    return {
      pass: false,
      message: 'Expected a promise to be resolved but it was ' + 'rejected with ' + JSON.stringify(rej) + '.'
    };
  });
}

var _default = assertPromiseIsResolved;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsResolvedWith.js":
/*!*********************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertPromiseIsResolvedWith.js ***!
  \*********************************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _isPromiseLike = _interopRequireDefault(__webpack_require__(/*! ./isPromiseLike */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertPromiseIsResolvedWith(actualPromise, expectedValue) {
  if (!(0, _isPromiseLike.default)(actualPromise)) {
    return Promise.reject().then(function () {}, function () {
      return {
        pass: false,
        message: 'Expected not be called on a promise.'
      };
    });
  }

  function tips(passed) {
    return 'Expected a promise ' + (passed ? 'not ' : '') + 'to be resolved with ' + JSON.stringify(expectedValue[0]);
  }

  const helper = {};
  return Promise.race([actualPromise, Promise.resolve(helper)]).then(function (got) {
    if (helper === got) {
      return {
        pass: false,
        message: 'expect resolve, actualValue is isPending'
      };
    }

    if (JSON.stringify(got) == JSON.stringify(expectedValue[0])) {
      return {
        pass: true,
        message: 'actualValue was resolved with ' + JSON.stringify(got) + '.'
      };
    }

    return {
      pass: false,
      message: tips(false) + ' but it was resolved with ' + JSON.stringify(got) + '.'
    };
  }, function (rej) {
    return {
      pass: false,
      message: tips(false) + ' but it was rejected with ' + JSON.stringify(rej) + '.'
    };
  });
}

var _default = assertPromiseIsResolvedWith;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertThrowError.js":
/*!**********************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertThrowError.js ***!
  \**********************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertThrowError(actualValue, expected) {
  let result = false;
  let err;

  if (typeof actualValue !== 'function') {
    throw new Error('actualValue is not a function');
  }

  try {
    actualValue();
    return {
      pass: result,
      message: ' An error is not thrown while it is expected!'
    };
  } catch (e) {
    err = e;
  }

  if (err instanceof Error) {
    console.log(err.message);

    if (err.message == expected[0]) {
      result = true;
    }
  }

  return {
    pass: result,
    message: 'expected throw failed , ' + err.message + ' is not ' + expected[0]
  };
}

var _default = assertThrowError;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertUndefined.js":
/*!*********************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/assertUndefined.js ***!
  \*********************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function assertUndefined(actualValue) {
  return {
    pass: undefined === actualValue,
    message: 'expect Undefined, actualValue is ' + actualValue
  };
}

var _default = assertUndefined;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/deepEquals/DeepTypeUtils.js":
/*!******************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/deepEquals/DeepTypeUtils.js ***!
  \******************************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
class DeepTypeUtils {
  static getType_(value) {
    return Object.prototype.toString.apply(value);
  }

  static isA_(typeName, value) {
    return this.getType_(value) === '[object ' + typeName + ']';
  }

  static isAsymmetricEqualityTester_(obj) {
    return obj ? this.isA_('Function', obj.asymmetricMatch) : false;
  }
  /**
   * 是否是function
   * @param value
   */


  static isFunction_(value) {
    return this.isA_('Function', value);
  }
  /**
   * 是否是undefined
   * @param obj
   */


  static isUndefined(obj) {
    return obj === void 0;
  }
  /**
   * 是否是Node
   * @param obj
   */


  static isDomNode(obj) {
    return obj !== null && typeof obj === 'object' && typeof obj.nodeType === 'number' && typeof obj.nodeName === 'string';
  }
  /**
   * 是否是promise对象
   * @param obj
   */


  static isPromise(obj) {
    return !!obj && obj.constructor === Promise;
  }

  /**
   *  是否是map对象
   * @param obj
   */
  static isMap(obj) {
    return obj !== null && typeof obj !== 'undefined' && obj.constructor === Map;
  }
  /**
   * 是否是set对象
   * @param obj 对象
   */


  static isSet(obj) {
    return obj !== null && typeof obj !== 'undefined' && obj.constructor === Set;
  }
  /**
   * 对象是否有key属性
   * @param obj 对象
   * @param key 对象属性名称
   */


  static has(obj, key) {
    return Object.prototype.hasOwnProperty.call(obj, key);
  }
  /**
   * 获取对象的自有属性
   * @param obj 对象
   * @param isArray 是否是数组,[object Array]
   */


  static keys(obj, isArray) {
    const extraKeys = []; // 获取对象所有属性

    const allKeys = this.getAllKeys(obj);

    if (!isArray) {
      return allKeys;
    }

    if (allKeys.length === 0) {
      return allKeys;
    }

    for (const k of allKeys) {
      if (typeof k === 'symbol' || !/^[0-9]+$/.test(k)) {
        extraKeys.push(k);
      }
    }

    return extraKeys;
  }
  /**
   * 获取obj对象的所有属性
   * @param obj obj对象
   */


  static getAllKeys(obj) {
    const keys = [];

    for (let key in obj) {
      if (this.has(obj, key)) {
        keys.push(key);
      }
    }

    const symbols = Object.getOwnPropertySymbols(obj);

    for (const sym of symbols) {
      if (obj.propertyIsEnumerable(sym)) {
        keys.push(sym);
      }
    }

    return keys;
  }

}

var _default = DeepTypeUtils;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/deepEquals/assertDeepEquals.js":
/*!*********************************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/deepEquals/assertDeepEquals.js ***!
  \*********************************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _DeepTypeUtils = _interopRequireDefault(__webpack_require__(/*! ./DeepTypeUtils */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/deepEquals/DeepTypeUtils.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
function assertDeepEquals(actualValue, expected) {
  console.log('actualValue:' + actualValue + ',expected:' + expected[0]);
  let result = eq(actualValue, expected[0], [], []);
  return {
    pass: result,
    message: actualValue + ' is not deep equal ' + expected[0]
  };
}

function eq(a, b, aStack, bStack) {
  let result = true;
  console.log('a is:' + a + ',b is:' + b);
  const asymmetricResult = asymmetricMatch_(a, b);

  if (!_DeepTypeUtils.default.isUndefined(asymmetricResult)) {
    return asymmetricResult;
  }

  if (a instanceof Error && b instanceof Error) {
    result = a.message == b.message;
    return result;
  }

  if (a === b) {
    result = a !== 0 || 1 / a == 1 / b;
    return result;
  }

  if (a === null || b === null) {
    result = a === b;
    return result;
  } // 获取a的对象名称


  const aClassName = Object.prototype.toString.call(a);
  const bClassName = Object.prototype.toString.call(b);
  console.log('aClassName is:' + aClassName);
  console.log('bClassName is:' + bClassName); // 不同类型不同对象

  if (aClassName != bClassName) {
    return false;
  } // 俩个string对象


  if (aClassName === '[object String]') {
    result = a == String(b);
    return result;
  } // 俩个Number对象


  if (aClassName === '[object Number]') {
    result = a != +a ? b != +b : a === 0 && b === 0 ? 1 / a == 1 / b : a == +b;
    return result;
  }

  if (aClassName === '[object Date]' || aClassName === '[object Boolean]') {
    result = +a == +b;
    return result;
  } // 数组


  if (aClassName === '[object ArrayBuffer]') {
    return eq(new Uint8Array(a), new Uint8Array(b), aStack, bStack);
  } // 正则表达式


  if (aClassName === '[object RegExp]') {
    return a.source == b.source && a.global == b.global && a.multiline == b.multiline && a.ignoreCase == b.ignoreCase;
  }

  if (typeof a != 'object' || typeof b != 'object') {
    return false;
  }

  const aIsDomNode = _DeepTypeUtils.default.isDomNode(a);

  const bIsDomNode = _DeepTypeUtils.default.isDomNode(b);

  if (aIsDomNode && bIsDomNode) {
    // At first try to use DOM3 method isEqualNode
    result = a.isEqualNode(b);
    return result;
  }

  if (aIsDomNode || bIsDomNode) {
    return false;
  }

  const aIsPromise = _DeepTypeUtils.default.isPromise(a);

  const bIsPromise = _DeepTypeUtils.default.isPromise(b);

  if (aIsPromise && bIsPromise) {
    return a === b;
  }

  let length = aStack.length;

  while (length--) {
    if (aStack[length] == a) {
      return bStack[length] == b;
    }
  }

  aStack.push(a);
  bStack.push(b);
  let size = 0; // 都是数组

  if (aClassName == '[object Array]') {
    const aLength = a.length;
    const bLength = b.length;

    if (aLength !== bLength) {
      // 数组长度不同，不是同一个对象
      return false;
    }

    for (let i = 0; i < aLength || i < bLength; i++) {
      // 递归每一个元素是否相同
      result = eq(i < aLength ? a[i] : void 0, i < bLength ? b[i] : void 0, aStack, bStack) && result;
    }

    if (!result) {
      return false;
    }
  } else if (_DeepTypeUtils.default.isMap(a) && _DeepTypeUtils.default.isMap(b)) {
    if (a.size != b.size) {
      return false;
    }

    const keysA = [];
    const keysB = [];
    a.forEach(function (valueA, keyA) {
      keysA.push(keyA);
    });
    b.forEach(function (valueB, keyB) {
      keysB.push(keyB);
    });
    const mapKeys = [keysA, keysB];
    const cmpKeys = [keysB, keysA];

    for (let i = 0; result && i < mapKeys.length; i++) {
      const mapIter = mapKeys[i];
      const cmpIter = cmpKeys[i];

      for (let j = 0; result && j < mapIter.length; j++) {
        const mapKey = mapIter[j];
        const cmpKey = cmpIter[j];
        const mapValueA = a.get(mapKey);
        let mapValueB;

        if (_DeepTypeUtils.default.isAsymmetricEqualityTester_(mapKey) || _DeepTypeUtils.default.isAsymmetricEqualityTester_(cmpKey) && eq(mapKey, cmpKey)) {
          mapValueB = b.get(cmpKey);
        } else {
          mapValueB = b.get(mapKey);
        }

        result = eq(mapValueA, mapValueB, aStack, bStack);
      }
    }

    if (!result) {
      return false;
    }
  } else if (_DeepTypeUtils.default.isSet(a) && _DeepTypeUtils.default.isSet(b)) {
    if (a.size != b.size) {
      return false;
    }

    const valuesA = [];
    a.forEach(function (valueA) {
      valuesA.push(valueA);
    });
    const valuesB = [];
    b.forEach(function (valueB) {
      valuesB.push(valueB);
    });
    const setPairs = [[valuesA, valuesB], [valuesB, valuesA]];
    const stackPairs = [[aStack, bStack], [bStack, aStack]];

    for (let i = 0; result && i < setPairs.length; i++) {
      const baseValues = setPairs[i][0];
      const otherValues = setPairs[i][1];
      const baseStack = stackPairs[i][0];
      const otherStack = stackPairs[i][1];

      for (const baseValue of baseValues) {
        let found = false;

        for (let j = 0; !found && j < otherValues.length; j++) {
          const otherValue = otherValues[j];
          const prevStackSize = baseStack.length; // 深度比较对象

          found = eq(baseValue, otherValue, baseStack, otherStack);

          if (!found && prevStackSize !== baseStack.length) {
            baseStack.splice(prevStackSize);
            otherStack.splice(prevStackSize);
          }
        }

        result = result && found;
      }
    }

    if (!result) {
      return false;
    }
  } else {
    const aCtor = a.constructor,
          bCtor = b.constructor;

    if (aCtor !== bCtor && _DeepTypeUtils.default.isFunction(aCtor) && _DeepTypeUtils.default.isFunction(bCtor) && a instanceof aCtor && b instanceof bCtor && !(aCtor instanceof aCtor && bCtor instanceof bCtor)) {
      return false;
    }
  } // 获取对象所有的属性集合


  const aKeys = _DeepTypeUtils.default.keys(a, aClassName == '[object Array]');

  size = aKeys.length; // 俩个对象属性长度不一致， 俩对象不相同

  if (_DeepTypeUtils.default.keys(b, bClassName == '[object Array]').length !== size) {
    return false;
  } // 俩对象属性数量相同， 递归比较每个属性值得值


  for (const key of aKeys) {
    console.log('key is:' + key); // b 没有 key 属性

    if (!_DeepTypeUtils.default.has(b, key)) {
      result = false;
      continue;
    }

    if (!eq(a[key], b[key], aStack, bStack)) {
      result = false;
    }
  }

  if (!result) {
    return false;
  }

  aStack.pop();
  bStack.pop();
  return result;
}

function asymmetricMatch_(a, b) {
  const asymmetricA = _DeepTypeUtils.default.isAsymmetricEqualityTester_(a);

  const asymmetricB = _DeepTypeUtils.default.isAsymmetricEqualityTester_(b);

  if (asymmetricA === asymmetricB) {
    return undefined;
  }
}
/**
 * 获取对象的自有属性
 *
 * @param obj 对象
 * @param isArray 是否是一个数组
 */


function keys(obj, isArray) {
  const keys = [];
}

var _default = assertDeepEquals;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js":
/*!*******************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/assert/isPromiseLike.js ***!
  \*******************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
function isPromiseLike(obj) {
  return !!obj && isFunction_(obj.then);
}

function isFunction_(value) {
  return isA_('Function', value);
}

function isA_(typeName, value) {
  return getType_(value) === '[object ' + typeName + ']';
}

function getType_(value) {
  return Object.prototype.toString.apply(value);
}

var _default = isPromiseLike;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/DataDriver.js":
/*!****************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/DataDriver.js ***!
  \****************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
const SUITES_KEY = 'suites';
const SPECS_KEY = 'items';
const DESCRIBE_KEY = 'describe';
const IT_KEY = 'it';
const PARAMS_KEY = 'params';
const STRESS_KEY = 'stress';

class ObjectUtils {
  static get(object, name, defaultValue) {
    let result = defaultValue;

    for (const key in object) {
      if (key === name) {
        return object[key];
      }
    }

    return result;
  }

  static has(object, key) {
    return Object.prototype.hasOwnProperty.call(object, key);
  }

}

class DataDriver {
  constructor(attr) {
    this.id = 'dataDriver';
    this.data = attr.data || {};
  }

  init(coreContext) {
    this.coreContext = coreContext;
    this.suiteService = this.coreContext.getDefaultService('suite');
    this.specService = this.coreContext.getDefaultService('spec');
  }

  getSpecParams() {
    let specParams = [];
    let suiteDesc = this.suiteService.getCurrentRunningSuite().description;
    let specDesc = this.specService.getCurrentRunningSpec().description;
    let suites = ObjectUtils.get(this.data, SUITES_KEY, []);

    for (const suiteItem of suites) {
      let describeValue = ObjectUtils.get(suiteItem, DESCRIBE_KEY, '');

      if (ObjectUtils.has(suiteItem, DESCRIBE_KEY) && typeof describeValue === 'object' && describeValue.constructor === Array && describeValue.includes(suiteDesc)) {
        let specs = ObjectUtils.get(suiteItem, SPECS_KEY, []);

        for (const specItem of specs) {
          if (ObjectUtils.has(specItem, IT_KEY) && ObjectUtils.get(specItem, IT_KEY) === specDesc) {
            return ObjectUtils.get(specItem, PARAMS_KEY, specParams);
          }
        }
      }
    }

    return specParams;
  }

  getSuiteParams() {
    let suiteParams = {};
    let suiteDesc = this.suiteService.getCurrentRunningSuite().description;
    let suites = ObjectUtils.get(this.data, SUITES_KEY, []);

    for (const suiteItem of suites) {
      let describeValue = ObjectUtils.get(suiteItem, DESCRIBE_KEY, []);

      if (ObjectUtils.has(suiteItem, DESCRIBE_KEY) && typeof describeValue === 'object' && describeValue.constructor === Array && describeValue.includes(suiteDesc)) {
        suiteParams = Object.assign({}, suiteParams, ObjectUtils.get(suiteItem, PARAMS_KEY, suiteParams));
      }
    }

    return suiteParams;
  }

  getSpecStress(specDesc) {
    let stress = 1;
    let suiteDesc = this.suiteService.getCurrentRunningSuite().description;
    let suites = ObjectUtils.get(this.data, SUITES_KEY, []);

    for (const suiteItem of suites) {
      let describeValue = ObjectUtils.get(suiteItem, DESCRIBE_KEY, '');

      if (ObjectUtils.has(suiteItem, DESCRIBE_KEY) && typeof describeValue === 'object' && describeValue.constructor === Array && describeValue.includes(suiteDesc)) {
        let specs = ObjectUtils.get(suiteItem, SPECS_KEY, []);

        for (const specItem of specs) {
          if (ObjectUtils.has(specItem, IT_KEY) && ObjectUtils.get(specItem, IT_KEY) === specDesc) {
            let tempStress = ObjectUtils.get(specItem, STRESS_KEY, stress);
            return Number.isInteger(tempStress) && tempStress >= 1 ? tempStress : stress;
          }
        }
      }
    }

    return stress;
  }

  getSuiteStress(suiteDesc) {
    let stress = 1;
    let suites = ObjectUtils.get(this.data, SUITES_KEY, []);

    for (const suiteItem of suites) {
      let describeValue = ObjectUtils.get(suiteItem, DESCRIBE_KEY, []);

      if (ObjectUtils.has(suiteItem, DESCRIBE_KEY) && typeof describeValue === 'object' && describeValue.constructor === Array && describeValue.includes(suiteDesc)) {
        let tempStress = ObjectUtils.get(suiteItem, STRESS_KEY, stress);
        return Number.isInteger(tempStress) && tempStress >= 1 ? tempStress : stress;
      }
    }

    return stress;
  }

}

var _default = DataDriver;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/Filter.js":
/*!************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/Filter.js ***!
  \************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.TestTypesFilter = exports.SuiteAndItNameFilter = exports.NotClassFilter = exports.ClassFilter = void 0;

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
class ClassFilter {
  constructor(suiteName, itName, params) {
    this.suiteName = suiteName;
    this.itName = itName;
    this.params = params;
  }

  filterSuite() {
    return !this.params.split(',').map(item => item.split('#')[0]).map(item => item == this.suiteName).reduce((pre, cur) => pre || cur, false);
  }

  filterIt() {
    let classArray = this.params.split(',') || [];
    let suiteFilterResult = classArray.filter(item => !item.includes('#')).map(item => item == this.suiteName).reduce((pre, cur) => pre || cur, false);
    let itFilterResult = classArray.filter(item => item.includes('#')).map(item => item == this.suiteName + '#' + this.itName).reduce((pre, cur) => pre || cur, false);
    return !(suiteFilterResult || itFilterResult);
  }

}

exports.ClassFilter = ClassFilter;

class NotClassFilter {
  constructor(suiteName, itName, params) {
    this.suiteName = suiteName;
    this.itName = itName;
    this.params = params;
  }

  filterSuite() {
    return this.params.split(',').map(item => item == this.suiteName).reduce((pre, cur) => pre || cur, false);
  }

  filterIt() {
    return this.params.includes(this.suiteName + '#' + this.itName);
  }

}

exports.NotClassFilter = NotClassFilter;

class SuiteAndItNameFilter {
  constructor(suiteName, itName, params) {
    this.suiteName = suiteName;
    this.itName = itName;
    this.params = params;
  }

  filterSuite() {
    return !this.params.split(',').map(item => item == this.suiteName).reduce((pre, cur) => pre || cur, false);
  }

  filterIt() {
    return !this.params.split(',').map(item => item == this.itName).reduce((pre, cur) => pre || cur, false);
  }

}

exports.SuiteAndItNameFilter = SuiteAndItNameFilter;

class TestTypesFilter {
  constructor(suiteName, itName, fi, params) {
    this.suiteName = suiteName;
    this.itName = itName;
    this.params = params;
    this.fi = fi;
  }

  filterIt() {
    return !(this.params === (this.fi & this.params) || this.fi === 0);
  }

}

exports.TestTypesFilter = TestTypesFilter;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/configService.js":
/*!*******************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/configService.js ***!
  \*******************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.ConfigService = void 0;

var _Filter = __webpack_require__(/*! ./Filter */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/config/Filter.js");

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
class ConfigService {
  constructor(attr) {
    this.id = attr.id;
    this.supportAsync = false;
    this.random = false;
    this.filterValid = [];
    this.filter = 0;
    this.flag = false;
    this.suite = null;
    this.itName = null;
    this.testType = null;
    this.level = null;
    this.size = null;
    this.class = null;
    this.notClass = null;
    this.timeout = null;
  }

  init(coreContext) {
    this.coreContext = coreContext;
  }

  isNormalInteger(str) {
    const n = Math.floor(Number(str));
    return n !== Infinity && String(n) === String(str) && n >= 0;
  }

  basicParamValidCheck(params) {
    let size = params.size;

    if (size !== undefined && size !== '' && size !== null) {
      let sizeArray = ['small', 'medium', 'large'];

      if (sizeArray.indexOf(size) === -1) {
        this.filterValid.push('size:' + size);
      }
    }

    let level = params.level;

    if (level !== undefined && level !== '' && level !== null) {
      let levelArray = ['0', '1', '2', '3', '4'];

      if (levelArray.indexOf(level) === -1) {
        this.filterValid.push('level:' + level);
      }
    }

    let testType = params.testType;

    if (testType !== undefined && testType !== '' && testType !== null) {
      let testTypeArray = ['function', 'performance', 'power', 'reliability', 'security', 'global', 'compatibility', 'user', 'standard', 'safety', 'resilience'];

      if (testTypeArray.indexOf(testType) === -1) {
        this.filterValid.push('testType:' + testType);
      }
    }
  }

  filterParamValidCheck(params) {
    let timeout = params.timeout;

    if (timeout !== undefined && timeout !== '' && timeout !== null) {
      if (!this.isNormalInteger(timeout)) {
        this.filterValid.push('timeout:' + timeout);
      }
    }

    let paramKeys = ['dryRun', 'random'];

    for (const key of paramKeys) {
      if (paramKeys[key] !== undefined && paramKeys[key] !== 'true' && paramKeys[key] !== 'false') {
        this.filterValid.push(`${key}:${paramKeys[key]}`);
      }
    }

    let classes = params.class;
    let nameRule = /^[A-Za-z]{1}[\w#,.]*$/;

    if (classes !== undefined && classes !== '' && classes !== null) {
      let classArray = classes.split(',');

      for (let className of classArray) {
        if (!className.match(nameRule)) {
          this.filterValid.push('class:' + classes);
          break;
        }
      }
    }

    let notClasses = params.notClass;

    if (notClasses !== undefined && notClasses !== '' && notClasses !== null) {
      let notClassArray = notClasses.split(',');

      for (let notClassName of notClassArray) {
        if (!notClassName.match(nameRule)) {
          this.filterValid.push('notClass:' + notClasses);
          break;
        }
      }
    }
  }

  setConfig(params) {
    this.basicParamValidCheck(params);
    this.filterParamValidCheck(params);

    try {
      this.class = params.class;
      this.notClass = params.notClass;
      this.flag = params.flag || {
        flag: false
      };
      this.suite = params.suite;
      this.itName = params.itName;
      this.filter = params.filter;
      this.testType = params.testType;
      this.level = params.level;
      this.size = params.size;
      this.timeout = params.timeout;
      this.dryRun = params.dryRun;
      this.random = params.random === 'true' ? true : false;
      this.filterParam = {
        testType: {
          'function': 1,
          'performance': 1 << 1,
          'power': 1 << 2,
          'reliability': 1 << 3,
          'security': 1 << 4,
          'global': 1 << 5,
          'compatibility': 1 << 6,
          'user': 1 << 7,
          'standard': 1 << 8,
          'safety': 1 << 9,
          'resilience': 1 << 10
        },
        level: {
          '0': 1 << 24,
          '1': 1 << 25,
          '2': 1 << 26,
          '3': 1 << 27,
          '4': 1 << 28
        },
        size: {
          'small': 1 << 16,
          'medium': 1 << 17,
          'large': 1 << 18
        }
      };
      this.parseParams();
    } catch (err) {
      console.info('setConfig error: ' + err.message);
    }
  }

  parseParams() {
    if (this.filter != null) {
      return;
    }

    let testTypeFilter = 0;
    let sizeFilter = 0;
    let levelFilter = 0;

    if (this.testType != null) {
      testTypeFilter = this.testType.split(',').map(item => this.filterParam.testType[item] || 0).reduce((pre, cur) => pre | cur, 0);
    }

    if (this.level != null) {
      levelFilter = this.level.split(',').map(item => this.filterParam.level[item] || 0).reduce((pre, cur) => pre | cur, 0);
    }

    if (this.size != null) {
      sizeFilter = this.size.split(',').map(item => this.filterParam.size[item] || 0).reduce((pre, cur) => pre | cur, 0);
    }

    this.filter = testTypeFilter | sizeFilter | levelFilter;
    console.info('filter params:' + this.filter);
  }

  isCurrentSuite(description) {
    if (this.suite !== undefined && this.suite !== '' && this.suite !== null) {
      let suiteArray = this.suite.split(',');
      return suiteArray.indexOf(description) !== -1;
    }

    return false;
  }

  filterSuite(currentSuiteName) {
    let filterArray = [];

    if (this.suite !== undefined && this.suite !== '' && this.suite !== null) {
      filterArray.push(new _Filter.SuiteAndItNameFilter(currentSuiteName, '', this.suite));
    }

    if (this.class !== undefined && this.class !== '' && this.class !== null) {
      filterArray.push(new _Filter.ClassFilter(currentSuiteName, '', this.class));
    }

    if (this.notClass !== undefined && this.notClass !== '' && this.notClass !== null) {
      filterArray.push(new _Filter.NotClassFilter(currentSuiteName, '', this.notClass));
    }

    let result = filterArray.map(item => item.filterSuite()).reduce((pre, cur) => pre || cur, false);
    return result;
  }

  filterDesc(currentSuiteName, desc, fi, coreContext) {
    let filterArray = [];

    if (this.itName !== undefined && this.itName !== '' && this.itName !== null) {
      filterArray.push(new _Filter.SuiteAndItNameFilter(currentSuiteName, desc, this.itName));
    }

    if (this.class !== undefined && this.class !== '' && this.class !== null) {
      filterArray.push(new _Filter.ClassFilter(currentSuiteName, desc, this.class));
    }

    if (this.notClass !== undefined && this.notClass !== '' && this.notClass !== null) {
      filterArray.push(new _Filter.NotClassFilter(currentSuiteName, desc, this.notClass));
    }

    if (typeof this.filter !== 'undefined' && this.filter !== 0 && fi !== 0) {
      filterArray.push(new _Filter.TestTypesFilter('', '', fi, this.filter));
    }

    let result = filterArray.map(item => item.filterIt()).reduce((pre, cur) => pre || cur, false);
    return result;
  }

  isRandom() {
    return this.random || false;
  }

  setSupportAsync(value) {
    this.supportAsync = value;
  }

  isSupportAsync() {
    return this.supportAsync;
  }

  translateParams(parameters) {
    const keySet = new Set(['-s class', '-s notClass', '-s suite', '-s itName', '-s level', '-s testType', '-s size', '-s timeout', '-s dryRun', '-s random', 'class', 'notClass', 'suite', 'itName', 'level', 'testType', 'size', 'timeout', 'dryRun', 'random']);
    let targetParams = {};

    for (const key in parameters) {
      if (keySet.has(key)) {
        var newKey = key.replace("-s ", "");
        targetParams[newKey] = parameters[key];
      }
    }

    return targetParams;
  }

  translateParamsToString(parameters) {
    const keySet = new Set(['-s class', '-s notClass', '-s suite', '-s itName', '-s level', '-s testType', '-s size', '-s timeout', '-s dryRun', '-s random', 'class', 'notClass', 'suite', 'itName', 'level', 'testType', 'size', 'timeout', 'dryRun', 'random']);
    let targetParams = '';

    for (const key in parameters) {
      if (keySet.has(key)) {
        targetParams += ' ' + key + ' ' + parameters[key];
      }
    }

    return targetParams.trim();
  }

  execute() {}

}

exports.ConfigService = ConfigService;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/kit/SysTestKit.js":
/*!*************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/kit/SysTestKit.js ***!
  \*************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
class SysTestKit {
  constructor() {
    this.id = 'sysTestKit';
    this.index = 0;
  }

  static actionStart(tag) {
    console.info(JSON.stringify(tag));
    var message = '\n' + 'OHOS_REPORT_ACTIONSTART: ' + JSON.stringify(tag) + '\n';
    SysTestKit.print(message);
    console.info(tag + ' actionStart print success');
  }

  static actionEnd(tag) {
    console.info(JSON.stringify(tag));
    var message = '\n' + 'OHOS_REPORT_ACTIONEND: ' + JSON.stringify(tag) + '\n';
    SysTestKit.print(message);
    console.info(tag + ' actionEnd print success');
  }

  static async existKeyword(keyword, timeout) {
    let reg = new RegExp(/^[a-zA-Z0-9]{1,}$/);

    if (!reg.test(keyword)) {
      throw new Error('keyword must contain more than one string, and only letters and numbers are supported.');
    }

    timeout = timeout || 4;
    let searchResult = false;
    let cmd = 'hilog -x | grep -i \'' + keyword + '\' | wc -l';
    await executePromise(cmd, timeout).then(data => {
      searchResult = data;
    });
    return searchResult;
  }

  static async print(message) {
    if ('printSync' in SysTestKit.delegator) {
      console.debug(`printSync called ...`);
      SysTestKit.delegator.printSync(message);
    } else {
      await SysTestKit.delegator.print(message);
    }
  }

  static async getRealTime() {
    let currentTime = new Date().getTime();

    if (SysTestKit.systemTime !== null) {
      await SysTestKit.systemTime.getRealTime().then(time => {
        console.info(`systemTime.getRealTime success data: ${JSON.stringify(time)}`);
        currentTime = time;
      }).catch(error => {
        console.error(`failed to systemTime.getRealTime because ${JSON.stringify(error)}`);
      });
    }

    return currentTime;
  }

}

_defineProperty(SysTestKit, "delegator", null);

_defineProperty(SysTestKit, "systemTime", null);

function executePromise(cmd, timeout) {
  return new Promise((resolve, reject) => {
    SysTestKit.delegator.executeShellCommand(cmd, timeout, (error, data) => {
      console.info('existKeyword CallBack: err : ' + JSON.stringify(error));
      console.info('existKeyword CallBack: data : ' + JSON.stringify(data));
      resolve(parseInt(data.stdResult) > 3 ? true : false);
    });
  });
}

var _default = SysTestKit;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/ArgumentMatchers.js":
/*!********************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/ArgumentMatchers.js ***!
  \********************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
class ArgumentMatchers {
  constructor() {
    _defineProperty(this, "ANY", "<any>");

    _defineProperty(this, "ANY_STRING", "<any String>");

    _defineProperty(this, "ANY_BOOLEAN", "<any Boolean>");

    _defineProperty(this, "ANY_NUMBER", "<any Number>");

    _defineProperty(this, "ANY_OBJECT", "<any Object>");

    _defineProperty(this, "ANY_FUNCTION", "<any Function>");

    _defineProperty(this, "MATCH_REGEXS", "<match regexs>");
  }

  static any() {}

  static anyString() {}

  static anyBoolean() {}

  static anyNumber() {}

  static anyObj() {}

  static anyFunction() {}

  static matchRegexs() {
    let regex = arguments[0];

    if (ArgumentMatchers.isRegExp(regex)) {
      return regex;
    }

    throw Error("not a regex");
  }

  static isRegExp(value) {
    return Object.prototype.toString.call(value) === "[object RegExp]";
  }

  matcheReturnKey() {
    let arg = arguments[0];
    let regex = arguments[1];
    let stubSetKey = arguments[2];

    if (stubSetKey && stubSetKey == this.ANY) {
      return this.ANY;
    }

    if (typeof arg === "string" && !regex) {
      return this.ANY_STRING;
    }

    if (typeof arg === "boolean" && !regex) {
      return this.ANY_BOOLEAN;
    }

    if (typeof arg === "number" && !regex) {
      return this.ANY_NUMBER;
    }

    if (typeof arg === "object" && !regex) {
      return this.ANY_OBJECT;
    }

    if (typeof arg === "function" && !regex) {
      return this.ANY_FUNCTION;
    }

    if (typeof arg === "string" && regex) {
      return regex.test(arg);
    }

    return null;
  }

  matcheStubKey() {
    let key = arguments[0];

    if (key === ArgumentMatchers.any) {
      return this.ANY;
    }

    if (key === ArgumentMatchers.anyString) {
      return this.ANY_STRING;
    }

    if (key === ArgumentMatchers.anyBoolean) {
      return this.ANY_BOOLEAN;
    }

    if (key === ArgumentMatchers.anyNumber) {
      return this.ANY_NUMBER;
    }

    if (key === ArgumentMatchers.anyObj) {
      return this.ANY_OBJECT;
    }

    if (key === ArgumentMatchers.anyFunction) {
      return this.ANY_FUNCTION;
    }

    if (ArgumentMatchers.isRegExp(key)) {
      return key;
    }

    return null;
  }

}

var _default = ArgumentMatchers;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/ExtendInterface.js":
/*!*******************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/ExtendInterface.js ***!
  \*******************************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
class ExtendInterface {
  constructor(mocker) {
    this.mocker = mocker;
  }

  stub() {
    this.params = arguments;
    return this;
  }

  stubMockedCall(returnInfo) {
    this.mocker.stubApply(this, this.params, returnInfo);
  }

  afterReturn(value) {
    this.stubMockedCall(function () {
      return value;
    });
  }

  afterReturnNothing() {
    this.stubMockedCall(function () {
      return undefined;
    });
  }

  afterAction(action) {
    this.stubMockedCall(action);
  }

  afterThrow(msg) {
    this.stubMockedCall(function () {
      throw msg;
    });
  }

  clear() {
    this.mocker.clear();
  }

}

var _default = ExtendInterface;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/MockKit.js":
/*!***********************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/MockKit.js ***!
  \***********************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.MockKit = void 0;
exports.when = when;

var _ExtendInterface = _interopRequireDefault(__webpack_require__(/*! ./ExtendInterface */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/ExtendInterface.js"));

var _VerificationMode = _interopRequireDefault(__webpack_require__(/*! ./VerificationMode */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/VerificationMode.js"));

var _ArgumentMatchers = _interopRequireDefault(__webpack_require__(/*! ./ArgumentMatchers */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/ArgumentMatchers.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
class MockKit {
  constructor() {
    this.mFunctions = [];
    this.stubs = new Map();
    this.recordCalls = new Map();
    this.currentSetKey = null;
    this.mockObj = null;
    this.recordMockedMethod = new Map();
  }

  init() {
    this.reset();
  }

  reset() {
    this.mFunctions = [];
    this.stubs = {};
    this.recordCalls = {};
    this.currentSetKey = null;
    this.mockObj = null;
    this.recordMockedMethod = new Map();
  }

  clearAll() {
    this.reset();
    var props = Object.keys(this);

    for (var i = 0; i < props.length; i++) {
      delete this[props[i]];
    }

    var props = Object.getOwnPropertyNames(this);

    for (var i = 0; i < props.length; i++) {
      delete this[props[i]];
    }

    for (var key in this) {
      delete this[key];
    }
  }

  clear(obj) {
    if (!obj) throw Error("Please enter an object to be cleaned");
    if (typeof obj != 'object') throw new Error('Not a object');
    this.recordMockedMethod.forEach(function (value, key, map) {
      if (key) {
        obj[key] = value;
      }
    });
  }

  ignoreMock(obj, method) {
    if (typeof obj != 'object') throw new Error('Not a object');
    if (typeof method != 'function') throw new Error('Not a function');
    let og = this.recordMockedMethod.get(method.propName);

    if (og) {
      obj[method.propName] = og;
      this.recordMockedMethod.set(method.propName, undefined);
    }
  }

  extend(dest, source) {
    dest["stub"] = source["stub"];
    dest["afterReturn"] = source["afterReturn"];
    dest["afterReturnNothing"] = source["afterReturnNothing"];
    dest["afterAction"] = source["afterAction"];
    dest["afterThrow"] = source["afterThrow"];
    dest["stubMockedCall"] = source["stubMockedCall"];
    dest["clear"] = source["clear"];
    return dest;
  }

  stubApply(f, params, returnInfo) {
    let values = this.stubs.get(f);

    if (!values) {
      values = new Map();
    }

    let key = params[0];

    if (typeof key == "undefined") {
      key = "anonymous-mock-" + f.propName;
    }

    let matcher = new _ArgumentMatchers.default();

    if (matcher.matcheStubKey(key)) {
      key = matcher.matcheStubKey(key);

      if (key) {
        this.currentSetKey = key;
      }
    }

    values.set(key, returnInfo);
    this.stubs.set(f, values);
  }

  getReturnInfo(f, params) {
    let values = this.stubs.get(f);

    if (!values) {
      return undefined;
    }

    let retrunKet = params[0];

    if (typeof retrunKet == "undefined") {
      retrunKet = "anonymous-mock-" + f.propName;
    }

    let stubSetKey = this.currentSetKey;

    if (this.currentSetKey && typeof retrunKet != "undefined") {
      retrunKet = stubSetKey;
    }

    let matcher = new _ArgumentMatchers.default();

    if (matcher.matcheReturnKey(params[0], undefined, stubSetKey) && matcher.matcheReturnKey(params[0], undefined, stubSetKey) != stubSetKey) {
      retrunKet = params[0];
    }

    values.forEach(function (value, key, map) {
      if (_ArgumentMatchers.default.isRegExp(key) && matcher.matcheReturnKey(params[0], key)) {
        retrunKet = key;
      }
    });
    return values.get(retrunKet);
  }

  findName(obj, value) {
    let properties = this.findProperties(obj);
    let name = null;
    properties.forEach(function (va1, idx, array) {
      if (obj[va1] === value) {
        name = va1;
      }
    });
    return name;
  }

  isFunctionFromPrototype(f, container, propName) {
    if (container.constructor != Object && container.constructor.prototype !== container) {
      return container.constructor.prototype[propName] === f;
    }

    return false;
  }

  findProperties(obj, ...arg) {
    function getProperty(new_obj) {
      if (new_obj.__proto__ === null) {
        return [];
      }

      let properties = Object.getOwnPropertyNames(new_obj);
      return [...properties, ...getProperty(new_obj.__proto__)];
    }

    return getProperty(obj);
  }

  recordMethodCall(originalMethod, args) {
    Function.prototype.getName = function () {
      return this.name || this.toString().match(/function\s*([^(]*)\(/)[1];
    };

    let name = originalMethod.getName();
    let arglistString = name + '(' + Array.from(args).toString() + ')';
    let records = this.recordCalls.get(arglistString);

    if (!records) {
      records = 0;
    }

    records++;
    this.recordCalls.set(arglistString, records);
  }

  mockFunc(originalObject, originalMethod) {
    let tmp = this;
    this.originalMethod = originalMethod;

    let f = function () {
      let args = arguments;
      let action = tmp.getReturnInfo(f, args);

      if (originalMethod) {
        tmp.recordMethodCall(originalMethod, args);
      }

      if (action) {
        return action.apply(this, args);
      }
    };

    f.container =  false || originalObject;
    f.original = originalMethod || null;

    if (originalObject && originalMethod) {
      if (typeof originalMethod != 'function') throw new Error('Not a function');
      var name = this.findName(originalObject, originalMethod);
      originalObject[name] = f;
      this.recordMockedMethod.set(name, originalMethod);
      f.propName = name;
      f.originalFromPrototype = this.isFunctionFromPrototype(f.original, originalObject, f.propName);
    }

    f.mocker = this;
    this.mFunctions.push(f);
    this.extend(f, new _ExtendInterface.default(this));
    return f;
  }

  verify(methodName, argsArray) {
    if (!methodName) {
      throw Error("not a function name");
    }

    let a = this.recordCalls.get(methodName + '(' + argsArray.toString() + ')');
    return new _VerificationMode.default(a ? a : 0);
  }

  mockObject(object) {
    if (!object || typeof object === "string") {
      throw Error(`this ${object} cannot be mocked`);
    }

    const _this = this;

    let mockedObject = {};
    let keys = Reflect.ownKeys(object);
    keys.filter(key => typeof Reflect.get(object, key) === 'function').forEach(key => {
      mockedObject[key] = object[key];
      mockedObject[key] = _this.mockFunc(mockedObject, mockedObject[key]);
    });
    return mockedObject;
  }

}

exports.MockKit = MockKit;

function ifMockedFunction(f) {
  if (Object.prototype.toString.call(f) != "[object Function]" && Object.prototype.toString.call(f) != "[object AsyncFunction]") {
    throw Error("not a function");
  }

  if (!f.stub) {
    throw Error("not a mock function");
  }

  return true;
}

function when(f) {
  if (ifMockedFunction(f)) {
    return f.stub.bind(f);
  }
}

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/VerificationMode.js":
/*!********************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/mock/VerificationMode.js ***!
  \********************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _hypium = __webpack_require__(/*! @ohos/hypium */ "../../../../../../projects/general/node_modules/@ohos/hypium/index.js");

/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
class VerificationMode {
  constructor(times) {
    this.doTimes = times;
  }

  times(count) {
    (0, _hypium.expect)(count).assertEqual(this.doTimes);
  }

  never() {
    console.log(this.doTimes);
    (0, _hypium.expect)(0).assertEqual(this.doTimes);
  }

  once() {
    (0, _hypium.expect)(1).assertEqual(this.doTimes);
  }

  atLeast(count) {
    if (count > this.doTimes) {
      throw Error('failed ' + count + ' greater than the actual execution times of method');
    }
  }

  atMost(count) {
    if (count < this.doTimes) {
      throw Error('failed ' + count + ' less than the actual execution times of method');
    }
  }

}

var _default = VerificationMode;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/report/OhReport.js":
/*!**************************************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/module/report/OhReport.js ***!
  \**************************************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports["default"] = void 0;

var _SysTestKit = _interopRequireDefault(__webpack_require__(/*! ../kit/SysTestKit */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/kit/SysTestKit.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
class OhReport {
  constructor(attr) {
    this.delegator = attr.delegator;
    this.id = 'report';
    this.index = 0;
    this.duration = 0;
  }

  init(coreContext) {
    this.coreContext = coreContext;
    this.suiteService = this.coreContext.getDefaultService('suite');
    this.specService = this.coreContext.getDefaultService('spec');
  }

  taskStart() {}

  async taskDone() {
    this.taskDoneTime = new Date().getTime();
    let summary = this.suiteService.getSummary();
    let message = '\n' + 'OHOS_REPORT_RESULT: stream=Tests run: ' + summary.total + ', Failure: ' + summary.failure;
    message += ', Error: ' + summary.error;
    message += ', Pass: ' + summary.pass;
    message += '\n' + 'OHOS_REPORT_CODE: ' + (summary.failure > 0 ? -1 : 0) + '\n';
    message += 'OHOS_REPORT_STATUS: taskconsuming=' + summary.duration + '\n';
    console.info(message);
    await _SysTestKit.default.print(message);
    console.info('report print success');
    this.delegator.finishTest('your test finished!!!', 0, () => {
      console.info('your test finished!!!');
    });
  }

  incorrectFormat() {
    if (this.coreContext.getDefaultService('config').filterValid.length !== 0) {
      var value = this.coreContext.getDefaultService('config').filterValid;
      var message = 'this param ' + value.join(',') + ' is invalid' + '\n';
      this.delegator.finishTest(message, 0, () => {});
    }
  }

  async suiteStart() {
    let message = '\n' + 'OHOS_REPORT_SUM: ' + this.suiteService.getCurrentRunningSuite().getSpecsNum();
    message += '\n' + 'OHOS_REPORT_STATUS: class=' + this.suiteService.getCurrentRunningSuite().description + '\n';
    console.info(message);
    await _SysTestKit.default.print(message);
    console.info(this.suiteService.getCurrentRunningSuite().description + ' suiteStart print success');
  }

  async suiteDone() {
    let message = '\n' + 'OHOS_REPORT_STATUS: class=' + this.suiteService.getCurrentRunningSuite().description;
    message += '\n' + 'OHOS_REPORT_STATUS: suiteconsuming=' + this.suiteService.getCurrentRunningSuite().duration + '\n';
    console.info(message);
    await _SysTestKit.default.print(message);
    console.info(this.suiteService.getCurrentRunningSuite().description + ' suiteDone print success');
  }

  async specStart() {
    let message = '\n' + 'OHOS_REPORT_STATUS: class=' + this.suiteService.getCurrentRunningSuite().description;
    message += '\n' + 'OHOS_REPORT_STATUS: current=' + ++this.index;
    message += '\n' + 'OHOS_REPORT_STATUS: id=JS';
    message += '\n' + 'OHOS_REPORT_STATUS: numtests=' + this.suiteService.getSummary().total;
    message += '\n' + 'OHOS_REPORT_STATUS: stream=';
    message += '\n' + 'OHOS_REPORT_STATUS: test=' + this.specService.currentRunningSpec.description;
    message += '\n' + 'OHOS_REPORT_STATUS_CODE: 1' + '\n';
    console.info(message);
    await _SysTestKit.default.print(message);
    console.info(this.specService.currentRunningSpec.description + ' specStart start print success');
  }

  async specDone() {
    let message = '\n' + 'OHOS_REPORT_STATUS: class=' + this.suiteService.getCurrentRunningSuite().description;
    message += '\n' + 'OHOS_REPORT_STATUS: current=' + this.index;
    message += '\n' + 'OHOS_REPORT_STATUS: id=JS';
    message += '\n' + 'OHOS_REPORT_STATUS: numtests=' + this.suiteService.getSummary().total;
    let emsg = '';

    if (this.specService.currentRunningSpec.error) {
      message += '\n' + 'OHOS_REPORT_STATUS: stack=' + this.specService.currentRunningSpec.error.message;
      message += '\n' + 'OHOS_REPORT_STATUS: stream=';
      message += '\n' + 'Error in ' + this.specService.currentRunningSpec.description;
      message += '\n' + this.specService.currentRunningSpec.error.message;
      message += '\n' + 'OHOS_REPORT_STATUS: test=' + this.specService.currentRunningSpec.description;
      message += '\n' + 'OHOS_REPORT_STATUS_CODE: -1' + '\n';
    } else if (this.specService.currentRunningSpec.result) {
      if (this.specService.currentRunningSpec.result.failExpects.length > 0) {
        this.specService.currentRunningSpec.result.failExpects.forEach(failExpect => {
          emsg = failExpect.message || 'expect ' + failExpect.actualValue + ' ' + failExpect.checkFunc + ' ' + failExpect.expectValue;
        });
        message += '\n' + 'OHOS_REPORT_STATUS: stack=' + emsg;
        message += '\n' + 'OHOS_REPORT_STATUS: stream=';
        message += '\n' + 'Error in ' + this.specService.currentRunningSpec.description;
        message += '\n' + emsg + '\n' + 'OHOS_REPORT_STATUS: test=' + this.specService.currentRunningSpec.description;
        message += '\n' + 'OHOS_REPORT_STATUS_CODE: -2' + '\n';
      } else {
        message += '\n' + 'OHOS_REPORT_STATUS: stream=';
        message += '\n' + 'OHOS_REPORT_STATUS: test=' + this.specService.currentRunningSpec.description;
        message += '\n' + 'OHOS_REPORT_STATUS_CODE: 0' + '\n';
      }
    } else {
      message += '\n';
    }

    message += 'OHOS_REPORT_STATUS: consuming=' + this.specService.currentRunningSpec.duration + '\n';
    console.info(message);
    await _SysTestKit.default.print(message);
    console.info(this.specService.currentRunningSpec.description + ' specDone end print success');
  }

}

var _default = OhReport;
exports["default"] = _default;

/***/ }),

/***/ "../../../../../../projects/general/node_modules/@ohos/hypium/src/service.js":
/*!***********************************************************************************!*\
  !*** ../../../../../../projects/general/node_modules/@ohos/hypium/src/service.js ***!
  \***********************************************************************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.SuiteService = exports.SpecService = exports.ReportService = exports.ExpectService = void 0;

var _SysTestKit = _interopRequireDefault(__webpack_require__(/*! ./module/kit/SysTestKit */ "../../../../../../projects/general/node_modules/@ohos/hypium/src/module/kit/SysTestKit.js"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
 * Copyright (c) 2021-2022 Huawei Device Co., Ltd.
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
class AssertException extends Error {
  constructor(message) {
    super();
    this.name = "AssertException";
    this.message = message;
  }

}

function processFunc(coreContext, func) {
  let argNames = ((func || '').toString().replace(/((\/\/.*$)|(\/\*[\s\S]*?\*\/))/mg, '').match(/^(function)?\s*[^\(]*\(\s*([^\)]*)\)/m) || ['', '', ''])[2].split(',') // split parameters
  .map(item => item.replace(/^\s*(_?)(.+?)\1\s*$/, name => name.split('=')[0].trim())).filter(String);
  let funcLen = func.length;
  let processedFunc;
  coreContext.getDefaultService('config').setSupportAsync(true);

  switch (funcLen) {
    case 0:
      {
        processedFunc = func;
        break;
      }

    case 1:
      {
        if (argNames[0] === 'data') {
          processedFunc = function (paramItem) {
            func(paramItem);
          };
        } else {
          processedFunc = function () {
            return new Promise((resolve, reject) => {
              function done() {
                resolve();
              }

              let funcType = func(done);

              if (funcType instanceof Promise) {
                funcType.catch(err => {
                  reject(err);
                });
              }
            });
          };
        }

        break;
      }

    default:
      {
        processedFunc = function (paramItem) {
          return new Promise((resolve, reject) => {
            function done() {
              resolve();
            }

            let funcType = func(done, paramItem);

            if (funcType instanceof Promise) {
              funcType.catch(err => {
                reject(err);
              });
            }
          });
        };

        break;
      }
  }

  return processedFunc;
}

function secureRandomNumber() {
  return crypto.randomBytes(8).readUInt32LE() / 0xffffffff;
}

class SuiteService {
  constructor(attr) {
    this.id = attr.id;
    this.rootSuite = new SuiteService.Suite({});
    this.currentRunningSuite = this.rootSuite;
  }

  describe(desc, func) {
    if (this.coreContext.getDefaultService('config').filterSuite(desc)) {
      console.info('filter suite :' + desc);
      return;
    }

    const suite = new SuiteService.Suite({
      description: desc
    });

    if (typeof this.coreContext.getServices('dataDriver') !== 'undefined') {
      let suiteStress = this.coreContext.getServices('dataDriver').dataDriver.getSuiteStress(desc);

      for (let i = 1; i < suiteStress; i++) {
        this.currentRunningSuite.childSuites.push(suite);
      }
    }

    const currentSuiteCache = this.currentRunningSuite;
    this.currentRunningSuite.childSuites.push(suite);
    this.currentRunningSuite = suite;
    func.call();
    this.currentRunningSuite = currentSuiteCache;
  }

  beforeAll(func) {
    this.currentRunningSuite.beforeAll.push(processFunc(this.coreContext, func));
  }

  beforeEach(func) {
    this.currentRunningSuite.beforeEach.push(processFunc(this.coreContext, func));
  }

  afterAll(func) {
    this.currentRunningSuite.afterAll.push(processFunc(this.coreContext, func));
  }

  afterEach(func) {
    this.currentRunningSuite.afterEach.push(processFunc(this.coreContext, func));
  }

  getCurrentRunningSuite() {
    return this.currentRunningSuite;
  }

  setCurrentRunningSuite(suite) {
    this.currentRunningSuite = suite;
  }

  getSummary() {
    let total = 0;
    let error = 0;
    let failure = 0;
    let pass = 0;
    let duration = 0;
    let rootSuite = this.coreContext.getDefaultService('suite').rootSuite;

    if (rootSuite && rootSuite.childSuites) {
      for (let i = 0; i < rootSuite.childSuites.length; i++) {
        let testsuite = rootSuite.childSuites[i];
        duration += testsuite.duration;
        let specs = testsuite['specs'];

        for (let j = 0; j < specs.length; j++) {
          total++;
          let testcase = specs[j];

          if (testcase.error) {
            error++;
          } else if (testcase.result.failExpects.length > 0) {
            failure++;
          } else if (testcase.result.pass === true) {
            pass++;
          }
        }
      }
    }

    return {
      total: total,
      failure: failure,
      error: error,
      pass: pass,
      duration: duration
    };
  }

  init(coreContext) {
    this.coreContext = coreContext;
  }

  async dryRun(abilityDelegator) {
    const configService = this.coreContext.getDefaultService('config');
    let testSuitesObj = {};
    let suitesArray = [];

    for (const suiteItem of this.rootSuite.childSuites) {
      let itArray = [];
      let suiteName = suiteItem['description'];

      for (const itItem of suiteItem['specs']) {
        let itName = itItem['description'];
        let filter = itItem['fi'];

        if (!configService.filterDesc(suiteName, itName, filter, this.coreContext)) {
          itArray.push({
            'itName': itItem['description']
          });
        }
      }

      if (!configService.filterSuite(suiteName) && itArray.length > 0) {
        let obj = {};
        obj[suiteName] = itArray;
        suitesArray.push(obj);
      }
    }

    testSuitesObj['suites'] = suitesArray;
    let strJson = JSON.stringify(testSuitesObj);
    let strLen = strJson.length;
    let maxLen = 500;
    let maxCount = Math.floor(strLen / maxLen);

    for (let count = 0; count <= maxCount; count++) {
      await _SysTestKit.default.print(strJson.substring(count * maxLen, (count + 1) * maxLen));
    }

    console.info('dryRun print success');
    abilityDelegator.finishTest('dry run finished!!!', 0, () => {});
  }

  execute() {
    const configService = this.coreContext.getDefaultService('config');

    if (configService.filterValid.length !== 0) {
      this.coreContext.fireEvents('task', 'incorrectFormat');
      return;
    }

    if (configService.isRandom() && this.rootSuite.childSuites.length > 0) {
      this.rootSuite.childSuites.sort(function () {
        return Math.random().toFixed(1) > 0.5 ? -1 : 1;
      });
      this.currentRunningSuite = this.rootSuite.childSuites[0];
    }

    if (configService.isSupportAsync()) {
      let asyncExecute = async () => {
        await this.coreContext.fireEvents('task', 'taskStart');
        await this.rootSuite.asyncRun(this.coreContext);
      };

      asyncExecute().then(async () => {
        await this.coreContext.fireEvents('task', 'taskDone');
      });
    } else {
      this.coreContext.fireEvents('task', 'taskStart');
      this.rootSuite.run(this.coreContext);
      this.coreContext.fireEvents('task', 'taskDone');
    }
  }

  apis() {
    const _this = this;

    return {
      describe: function (desc, func) {
        return _this.describe(desc, func);
      },
      beforeAll: function (func) {
        return _this.beforeAll(func);
      },
      beforeEach: function (func) {
        return _this.beforeEach(func);
      },
      afterAll: function (func) {
        return _this.afterAll(func);
      },
      afterEach: function (func) {
        return _this.afterEach(func);
      }
    };
  }

}

exports.SuiteService = SuiteService;
SuiteService.Suite = class {
  constructor(attrs) {
    this.description = attrs.description || '';
    this.childSuites = [];
    this.specs = [];
    this.beforeAll = [];
    this.afterAll = [];
    this.beforeEach = [];
    this.afterEach = [];
    this.duration = 0;
  }

  pushSpec(spec) {
    this.specs.push(spec);
  }

  removeSpec(desc) {
    this.specs = this.specs.filter((item, index) => {
      return item.description !== desc;
    });
  }

  getSpecsNum() {
    return this.specs.length;
  }

  run(coreContext) {
    const suiteService = coreContext.getDefaultService('suite');
    suiteService.setCurrentRunningSuite(this);

    if (this.description !== '') {
      coreContext.fireEvents('suite', 'suiteStart', this);
    }

    this.runHookFunc('beforeAll');

    if (this.specs.length > 0) {
      const configService = coreContext.getDefaultService('config');

      if (configService.isRandom()) {
        this.specs.sort(function () {
          return Math.random().toFixed(1) > 0.5 ? -1 : 1;
        });
      }

      this.specs.forEach(spec => {
        this.runHookFunc('beforeEach');
        spec.run(coreContext);
        this.runHookFunc('afterEach');
      });
    }

    if (this.childSuites.length > 0) {
      this.childSuites.forEach(childSuite => {
        childSuite.run(coreContext);
        suiteService.setCurrentRunningSuite(childSuite);
      });
    }

    this.runHookFunc('afterAll');

    if (this.description !== '') {
      coreContext.fireEvents('suite', 'suiteDone');
    }
  }

  asyncRun(coreContext) {
    const suiteService = coreContext.getDefaultService('suite');
    suiteService.setCurrentRunningSuite(this);
    return new Promise(async resolve => {
      if (this.description !== '') {
        await coreContext.fireEvents('suite', 'suiteStart', this);
      }

      await this.runAsyncHookFunc('beforeAll');

      if (this.specs.length > 0) {
        const configService = coreContext.getDefaultService('config');

        if (configService.isRandom()) {
          this.specs.sort(function () {
            return Math.random().toFixed(1) > 0.5 ? -1 : 1;
          });
        }

        for (let i = 0; i < this.specs.length; i++) {
          await this.runAsyncHookFunc('beforeEach');
          await this.specs[i].asyncRun(coreContext);
          await this.runAsyncHookFunc('afterEach');
        }
      }

      if (this.childSuites.length > 0) {
        for (let i = 0; i < this.childSuites.length; i++) {
          suiteService.setCurrentRunningSuite(this.childSuites[i]);
          await this.childSuites[i].asyncRun(coreContext);
        }
      }

      await this.runAsyncHookFunc('afterAll');

      if (this.description !== '') {
        await coreContext.fireEvents('suite', 'suiteDone');
      }

      resolve();
    });
  }

  runHookFunc(hookName) {
    if (this[hookName] && this[hookName].length > 0) {
      this[hookName].forEach(func => {
        try {
          func();
        } catch (e) {
          console.error(e);
        }
      });
    }
  }

  runAsyncHookFunc(hookName) {
    if (this[hookName] && this[hookName].length > 0) {
      return new Promise(async resolve => {
        for (let i = 0; i < this[hookName].length; i++) {
          try {
            await this[hookName][i]();
          } catch (e) {
            console.error(e);
          }
        }

        resolve();
      });
    }
  }

};

class SpecService {
  constructor(attr) {
    this.id = attr.id;
  }

  init(coreContext) {
    this.coreContext = coreContext;
  }

  setCurrentRunningSpec(spec) {
    this.currentRunningSpec = spec;
  }

  getCurrentRunningSpec() {
    return this.currentRunningSpec;
  }

  it(desc, filter, func) {
    const configService = this.coreContext.getDefaultService('config');
    const currentSuiteName = this.coreContext.getDefaultService('suite').getCurrentRunningSuite().description;

    if (configService.filterDesc(currentSuiteName, desc, filter, this.coreContext)) {
      console.info('filter it :' + desc);
    } else {
      let processedFunc = processFunc(this.coreContext, func);
      const spec = new SpecService.Spec({
        description: desc,
        fi: filter,
        fn: processedFunc
      });
      const suiteService = this.coreContext.getDefaultService('suite');

      if (typeof this.coreContext.getServices('dataDriver') !== 'undefined') {
        let specStress = this.coreContext.getServices('dataDriver').dataDriver.getSpecStress(desc);

        for (let i = 1; i < specStress; i++) {
          suiteService.getCurrentRunningSuite().pushSpec(spec);
        }
      }

      suiteService.getCurrentRunningSuite().pushSpec(spec);
    }
  }

  apis() {
    const _this = this;

    return {
      it: function (desc, filter, func) {
        return _this.it(desc, filter, func);
      }
    };
  }

}

exports.SpecService = SpecService;
SpecService.Spec = class {
  constructor(attrs) {
    this.description = attrs.description || '';
    this.fi = attrs.fi;

    this.fn = attrs.fn || function () {};

    this.result = {
      failExpects: [],
      passExpects: []
    };
    this.error = undefined;
    this.duration = 0;
    this.startTime = 0;
  }

  setResult() {
    if (this.result.failExpects.length > 0) {
      this.result.pass = false;
    } else {
      this.result.pass = true;
    }

    console.info('testcase ' + this.description + ' result:' + this.result.pass);
  }

  run(coreContext) {
    const specService = coreContext.getDefaultService('spec');
    specService.setCurrentRunningSpec(this);
    coreContext.fireEvents('spec', 'specStart', this);

    try {
      let dataDriver = coreContext.getServices('dataDriver');

      if (typeof dataDriver === 'undefined') {
        this.fn();
      } else {
        let suiteParams = dataDriver.dataDriver.getSuiteParams();
        let specParams = dataDriver.dataDriver.getSpecParams();
        console.info('[suite params] ' + JSON.stringify(suiteParams));
        console.info('[spec params] ' + JSON.stringify(specParams));

        if (this.fn.length === 0) {
          this.fn();
        } else if (specParams.length === 0) {
          this.fn(suiteParams);
        } else {
          specParams.forEach(paramItem => this.fn(Object.assign({}, paramItem, suiteParams)));
        }
      }

      this.setResult();
    } catch (e) {
      this.error = e;
    }

    coreContext.fireEvents('spec', 'specDone', this);
    this.fn = null;
  }

  asyncRun(coreContext) {
    const specService = coreContext.getDefaultService('spec');
    specService.setCurrentRunningSpec(this);
    const config = coreContext.getDefaultService('config');
    const timeout = +(config.timeout === undefined ? 5000 : config.timeout);
    return new Promise(async resolve => {
      await coreContext.fireEvents('spec', 'specStart', this);

      function timeoutPromise() {
        return new Promise(function (resolve, reject) {
          setTimeout(() => reject(new Error('execute timeout ' + timeout + 'ms')), timeout);
        });
      }

      try {
        let dataDriver = coreContext.getServices('dataDriver');

        if (typeof dataDriver === 'undefined') {
          const p = Promise.race([this.fn(), timeoutPromise()]);
          await p.then(() => {
            this.setResult();
          });
        } else {
          let suiteParams = dataDriver.dataDriver.getSuiteParams();
          let specParams = dataDriver.dataDriver.getSpecParams();
          console.info('[suite params] ' + JSON.stringify(suiteParams));
          console.info('[spec params] ' + JSON.stringify(specParams));

          if (this.fn.length === 0) {
            const p = Promise.race([this.fn(), timeoutPromise()]);
            await p.then(() => {
              this.setResult();
            });
          } else if (specParams.length === 0) {
            const p = Promise.race([this.fn(suiteParams), timeoutPromise()]);
            await p.then(() => {
              this.setResult();
            });
          } else {
            for (const paramItem of specParams) {
              const p = Promise.race([this.fn(Object.assign({}, paramItem, suiteParams)), timeoutPromise()]);
              await p.then(() => {
                this.setResult();
              });
            }
          }
        }
      } catch (e) {
        if (e instanceof AssertException) {
          this.fail = e;
        } else {
          this.error = e;
        }
      }

      await coreContext.fireEvents('spec', 'specDone', this);
      this.fn = null;
      resolve();
    });
  }

  filterCheck(coreContext) {
    const specService = coreContext.getDefaultService('spec');
    specService.setCurrentRunningSpec(this);
    return true;
  }

  addExpectationResult(expectResult) {
    this.result.failExpects.push(expectResult);
    throw new AssertException(expectResult.message);
  }

};

class ExpectService {
  constructor(attr) {
    this.id = attr.id;
    this.matchers = {};
  }

  expect(actualValue) {
    return this.wrapMatchers(actualValue);
  }

  init(coreContext) {
    this.coreContext = coreContext;
    this.addMatchers(this.basicMatchers());
  }

  addMatchers(matchers) {
    for (const matcherName in matchers) {
      if (Object.prototype.hasOwnProperty.call(matchers, matcherName)) {
        this.matchers[matcherName] = matchers[matcherName];
      }
    }
  }

  basicMatchers() {
    return {
      assertTrue: function (actualValue) {
        return {
          pass: actualValue === true,
          message: 'expect true, actualValue is ' + actualValue
        };
      },
      assertEqual: function (actualValue, args) {
        return {
          pass: actualValue === args[0],
          expectValue: args[0],
          message: 'expect ' + actualValue + ' equals ' + args[0]
        };
      },
      assertThrow: function (actual, args) {
        const result = {
          pass: false
        };

        if (typeof actual !== 'function') {
          result.message = 'toThrow\'s Actual should be a Function';
        } else {
          let hasThrow = false;
          let throwError;

          try {
            actual();
          } catch (e) {
            hasThrow = true;
            throwError = e;
          }

          if (!hasThrow) {
            result.message = 'function did not throw an exception';
          } else if (throwError && throwError.message === args[0]) {
            result.pass = true;
          } else {
            result.message = `expect to throw ${args[0]} , actual throw ${throwError.message}`;
          }
        }

        return result;
      }
    };
  }

  wrapMatchers(actualValue) {
    const _this = this;

    const wrappedMatchers = {
      // 翻转标识
      isNot: false,
      // 翻转方法
      not: function () {
        this.isNot = true;
        return this;
      }
    };

    const specService = _this.coreContext.getDefaultService('spec');

    const currentRunningSpec = specService.getCurrentRunningSpec();

    for (const matcherName in this.matchers) {
      let result = Object.prototype.hasOwnProperty.call(this.matchers, matcherName);

      if (!result) {
        continue;
      }

      if (matcherName.search('assertPromise') == 0) {
        wrappedMatchers[matcherName] = async function () {
          await _this.matchers[matcherName](actualValue, arguments).then(function (result) {
            if (wrappedMatchers.isNot) {
              result.pass = !result.pass;
            }

            result.actualValue = actualValue;
            result.checkFunc = matcherName;

            if (!result.pass) {
              currentRunningSpec.addExpectationResult(result);
            }
          });
        };
      } else {
        wrappedMatchers[matcherName] = function () {
          const result = _this.matchers[matcherName](actualValue, arguments);

          if (wrappedMatchers.isNot) {
            result.pass = !result.pass;
          }

          result.actualValue = actualValue;
          result.checkFunc = matcherName;

          if (!result.pass) {
            currentRunningSpec.addExpectationResult(result);
          }
        };
      }
    }

    return wrappedMatchers;
  }

  apis() {
    const _this = this;

    return {
      expect: function (actualValue) {
        return _this.expect(actualValue);
      }
    };
  }

}

exports.ExpectService = ExpectService;

class ReportService {
  constructor(attr) {
    this.id = attr.id;
  }

  init(coreContext) {
    this.coreContext = coreContext;
    this.specService = this.coreContext.getDefaultService('spec');
    this.suiteService = this.coreContext.getDefaultService('suite');
    this.duration = 0;
  }

  taskStart() {
    console.info('[start] start run suites');
  }

  async suiteStart() {
    console.info('[suite start]' + this.suiteService.getCurrentRunningSuite().description);
  }

  async specStart() {
    console.info('start running case \'' + this.specService.currentRunningSpec.description + '\'');
    this.index = this.index + 1;
    let spec = this.specService.currentRunningSpec;
    spec.startTime = await _SysTestKit.default.getRealTime();
  }

  async specDone() {
    let msg = '';
    let spec = this.specService.currentRunningSpec;
    let suite = this.suiteService.currentRunningSuite;
    spec.duration = (await _SysTestKit.default.getRealTime()) - spec.startTime;
    suite.duration += spec.duration;

    if (spec.error) {
      this.formatPrint('error', spec.description + ' ; consuming ' + spec.duration + 'ms');
      this.formatPrint('errorDetail', spec.error);
    } else if (spec.result) {
      if (spec.result.failExpects.length > 0) {
        this.formatPrint('fail', spec.description + ' ; consuming ' + spec.duration + 'ms');
        spec.result.failExpects.forEach(failExpect => {
          msg = failExpect.message || 'expect ' + failExpect.actualValue + ' ' + failExpect.checkFunc + ' ' + failExpect.expectValue;
          this.formatPrint('failDetail', msg);
        });
      } else {
        this.formatPrint('pass', spec.description + ' ; consuming ' + spec.duration + 'ms');
      }
    }

    this.formatPrint(this.specService.currentRunningSpec.error, msg);
  }

  suiteDone() {
    let suite = this.suiteService.currentRunningSuite;
    console.info('[suite end]' + ' consuming ' + suite.duration + 'ms');
  }

  taskDone() {
    let msg = '';
    let summary = this.suiteService.getSummary();
    msg = 'total cases:' + summary.total + ';failure ' + summary.failure + ',' + 'error ' + summary.error;
    msg += ',pass ' + summary.pass + '; consuming ' + summary.duration + 'ms';
    console.info(msg);
    console.info('[end] run suites end');
  }

  incorrectFormat() {
    if (this.coreContext.getDefaultService('config').filterValid.length !== 0) {
      this.coreContext.getDefaultService('config').filterValid.forEach(function (item) {
        console.info('this param ' + item + ' is invalid');
      });
    }
  }

  formatPrint(type, msg) {
    switch (type) {
      case 'pass':
        console.info('[pass]' + msg);
        break;

      case 'fail':
        console.info('[fail]' + msg);
        break;

      case 'failDetail':
        console.info('[failDetail]' + msg);
        break;

      case 'error':
        console.info('[error]' + msg);
        break;

      case 'errorDetail':
        console.info('[errorDetail]' + msg);
        break;
    }
  }

  sleep(numberMillis) {
    var now = new Date();
    var exitTime = now.getTime() + numberMillis;

    while (true) {
      now = new Date();

      if (now.getTime() > exitTime) {
        return;
      }
    }
  }

}

exports.ReportService = ReportService;

/***/ }),

/***/ "../../api/@ohos.window.d.ts":
/*!***********************************!*\
  !*** ../../api/@ohos.window.d.ts ***!
  \***********************************/
/***/ (() => {



/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		var commonCachedModule = globalThis["__common_module_cache___702ddc02e9d4b8dc29b823c839b26124"] ? globalThis["__common_module_cache___702ddc02e9d4b8dc29b823c839b26124"][moduleId]: null;
/******/ 		if (commonCachedModule) { return commonCachedModule.exports; }
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		function isCommonModue(moduleId) {
/******/ 		                if (globalThis["webpackChunk_702ddc02e9d4b8dc29b823c839b26124"]) {
/******/ 		                  const length = globalThis["webpackChunk_702ddc02e9d4b8dc29b823c839b26124"].length;
/******/ 		                  switch (length) {
/******/ 		                    case 1:
/******/ 		                      return globalThis["webpackChunk_702ddc02e9d4b8dc29b823c839b26124"][0][1][moduleId];
/******/ 		                    case 2:
/******/ 		                      return globalThis["webpackChunk_702ddc02e9d4b8dc29b823c839b26124"][0][1][moduleId] ||
/******/ 		                      globalThis["webpackChunk_702ddc02e9d4b8dc29b823c839b26124"][1][1][moduleId];
/******/ 		                  }
/******/ 		                }
/******/ 		                return undefined;
/******/ 		              }
/******/ 		if (globalThis["__common_module_cache___702ddc02e9d4b8dc29b823c839b26124"] && String(moduleId).indexOf("?name=") < 0 && isCommonModue(moduleId)) {
/******/ 		  globalThis["__common_module_cache___702ddc02e9d4b8dc29b823c839b26124"][moduleId] = module;
/******/ 		}
/******/ 		__webpack_modules__[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module is referenced by other modules so it can't be inlined
/******/ 	var __webpack_exports__ = __webpack_require__("../../../../../../projects/general/entry/src/ohosTest/ets/testability/TestAbility.ets?entry");
/******/ 	_702ddc02e9d4b8dc29b823c839b26124 = __webpack_exports__;
/******/ 	
/******/ })()
;
//# sourceMappingURL=TestAbility.js.map