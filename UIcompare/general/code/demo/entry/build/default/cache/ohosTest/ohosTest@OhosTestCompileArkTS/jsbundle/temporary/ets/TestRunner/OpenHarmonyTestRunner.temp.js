var _702ddc02e9d4b8dc29b823c839b26124;
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/TestRunner/OpenHarmonyTestRunner.ts":
/*!*****************************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/TestRunner/OpenHarmonyTestRunner.ts ***!
  \*****************************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {

"use strict";

var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
var _ohos_hilog_1  = globalThis.requireNapi('hilog') || (isSystemplugin('hilog', 'ohos') ? globalThis.ohosplugin.hilog : isSystemplugin('hilog', 'system') ? globalThis.systemplugin.hilog : undefined);
__webpack_require__(/*! @ohos.application.testRunner */ "../../api/@ohos.application.testRunner.d.ts");
var _ohos_app_ability_abilityDelegatorRegistry_1  = globalThis.requireNapi('app.ability.abilityDelegatorRegistry') || (isSystemplugin('app.ability.abilityDelegatorRegistry', 'ohos') ? globalThis.ohosplugin.app.ability.abilityDelegatorRegistry : isSystemplugin('app.ability.abilityDelegatorRegistry', 'system') ? globalThis.systemplugin.app.ability.abilityDelegatorRegistry : undefined);
var abilityDelegator = undefined;
var abilityDelegatorArguments = undefined;
async function onAbilityCreateCallback() {
    _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'onAbilityCreateCallback');
}
async function addAbilityMonitorCallback(err) {
    var _a;
    _ohos_hilog_1.info(0x0000, 'testTag', 'addAbilityMonitorCallback : %{public}s', (_a = JSON.stringify(err)) !== null && _a !== void 0 ? _a : '');
}
class OpenHarmonyTestRunner {
    constructor() {
    }
    onPrepare() {
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'OpenHarmonyTestRunner OnPrepare ');
    }
    async onRun() {
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'OpenHarmonyTestRunner onRun run');
        abilityDelegatorArguments = _ohos_app_ability_abilityDelegatorRegistry_1.getArguments();
        abilityDelegator = _ohos_app_ability_abilityDelegatorRegistry_1.getAbilityDelegator();
        var testAbilityName = abilityDelegatorArguments.bundleName + '.TestAbility';
        let lMonitor = {
            abilityName: testAbilityName,
            onAbilityCreate: onAbilityCreateCallback,
        };
        abilityDelegator.addAbilityMonitor(lMonitor, addAbilityMonitorCallback);
        var cmd = 'aa start -d 0 -a TestAbility' + ' -b ' + abilityDelegatorArguments.bundleName;
        var debug = abilityDelegatorArguments.parameters['-D'];
        if (debug == 'true') {
            cmd += ' -D';
        }
        _ohos_hilog_1.info(0x0000, 'testTag', 'cmd : %{public}s', cmd);
        abilityDelegator.executeShellCommand(cmd, (err, d) => {
            var _a, _b, _c;
            _ohos_hilog_1.info(0x0000, 'testTag', 'executeShellCommand : err : %{public}s', (_a = JSON.stringify(err)) !== null && _a !== void 0 ? _a : '');
            _ohos_hilog_1.info(0x0000, 'testTag', 'executeShellCommand : data : %{public}s', (_b = d.stdResult) !== null && _b !== void 0 ? _b : '');
            _ohos_hilog_1.info(0x0000, 'testTag', 'executeShellCommand : data : %{public}s', (_c = d.exitCode) !== null && _c !== void 0 ? _c : '');
        });
        _ohos_hilog_1.info(0x0000, 'testTag', '%{public}s', 'OpenHarmonyTestRunner onRun end');
    }
}
globalThis.exports.default = OpenHarmonyTestRunner;


/***/ }),

/***/ "../../api/@ohos.application.testRunner.d.ts":
/*!***************************************************!*\
  !*** ../../api/@ohos.application.testRunner.d.ts ***!
  \***************************************************/
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
/******/ 	var __webpack_exports__ = __webpack_require__("../../../../../../projects/general/entry/src/ohosTest/ets/TestRunner/OpenHarmonyTestRunner.ts");
/******/ 	_702ddc02e9d4b8dc29b823c839b26124 = __webpack_exports__;
/******/ 	
/******/ })()
;
//# sourceMappingURL=OpenHarmonyTestRunner.js.map