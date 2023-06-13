var _702ddc02e9d4b8dc29b823c839b26124;
/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/constants/Constants.ets":
/*!**********************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/constants/Constants.ets ***!
  \**********************************************************************************************/
/***/ ((__unused_webpack_module, exports) => {


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

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/AttrsManager.ets":
/*!*********************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/test/model/AttrsManager.ets ***!
  \*********************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {


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

/***/ "../../../../../../projects/general/entry/src/ohosTest/ets/testability/pages/BackgroundColorPage.ets?entry":
/*!*****************************************************************************************************************!*\
  !*** ../../../../../../projects/general/entry/src/ohosTest/ets/testability/pages/BackgroundColorPage.ets?entry ***!
  \*****************************************************************************************************************/
/***/ (function(__unused_webpack_module, exports, __webpack_require__) {


var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", ({ value: true }));
let __generate__Id = 0;
function generateId() {
    return "BackgroundColorPage_" + ++__generate__Id;
}
// @ts-nocheck
const AttrsManager_1 = __importDefault(__webpack_require__(/*! ../../test/model/AttrsManager */ "../../../../../../projects/general/entry/src/ohosTest/ets/test/model/AttrsManager.ets"));
var _ohos_router_1  = globalThis.requireNapi('router') || (isSystemplugin('router', 'ohos') ? globalThis.ohosplugin.router : isSystemplugin('router', 'system') ? globalThis.systemplugin.router : undefined);
class BackgroundColorPage extends View {
    constructor(compilerAssignedUniqueChildId, parent, params, localStorage) {
        super(compilerAssignedUniqueChildId, parent, localStorage);
        this.___generalAttr = new ObservedPropertySimple(0xecd4a8, this, "_generalAttr");
        this.__targetView = new ObservedPropertySimple(_ohos_router_1.getParams() ? _ohos_router_1.getParams()['view']['targetView'] : "" //当前测试的组件
        , this, "targetView");
        this.__componentKey = new ObservedPropertySimple(_ohos_router_1.getParams() ? _ohos_router_1.getParams()['view']['componentKey'] : "" //组件唯一标识
        , this, "componentKey");
        this.scroller = new Scroller();
        this.updateWithValueParams(params);
    }
    updateWithValueParams(params) {
        if (params._generalAttr !== undefined) {
            this._generalAttr = params._generalAttr;
        }
        if (params.targetView !== undefined) {
            this.targetView = params.targetView;
        }
        if (params.componentKey !== undefined) {
            this.componentKey = params.componentKey;
        }
        if (params.scroller !== undefined) {
            this.scroller = params.scroller;
        }
    }
    aboutToBeDeleted() {
        this.___generalAttr.aboutToBeDeleted();
        this.__targetView.aboutToBeDeleted();
        this.__componentKey.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id());
    }
    get _generalAttr() {
        return this.___generalAttr.get();
    }
    set _generalAttr(newValue) {
        this.___generalAttr.set(newValue);
    }
    get targetView() {
        return this.__targetView.get();
    }
    set targetView(newValue) {
        this.__targetView.set(newValue);
    }
    get componentKey() {
        return this.__componentKey.get();
    }
    set componentKey(newValue) {
        this.__componentKey.set(newValue);
    }
    onPageShow() {
        AttrsManager_1.default.registerDataChange(value => this._generalAttr = value);
    }
    render() {
        Row.create();
        Row.defaultFocus(true);
        Column.create();
        Column.width('100%');
        Column.height('100%');
        Column.backgroundColor(Color.Orange);
        If.create();
        if (this.targetView == 'AlphabetIndexer') {
            If.branchId(0);
            AlphabetIndexer.create({ arrayValue: ['A', 'B', 'C'], selected: 0 });
            AlphabetIndexer.width(150);
            AlphabetIndexer.height(200);
            AlphabetIndexer.backgroundColor(this._generalAttr);
            AlphabetIndexer.key(this.componentKey);
            AlphabetIndexer.pop();
        }
        else if (this.targetView == 'Blank') {
            If.branchId(1);
            Blank.create();
            Blank.width(150);
            Blank.height(200);
            Blank.backgroundColor(this._generalAttr);
            Blank.key(this.componentKey);
            Blank.pop();
        }
        else if (this.targetView == 'Button') {
            If.branchId(2);
            Button.createWithLabel();
            Button.width(150);
            Button.height(200);
            Button.backgroundColor(this._generalAttr);
            Button.key(this.componentKey);
            Button.pop();
        }
        else if (this.targetView == 'Checkbox') {
            If.branchId(3);
            Checkbox.create();
            Checkbox.width(150);
            Checkbox.height(200);
            Checkbox.backgroundColor(this._generalAttr);
            Checkbox.key(this.componentKey);
            Checkbox.pop();
        }
        else if (this.targetView == 'CheckboxGroup') {
            If.branchId(4);
            CheckboxGroup.create();
            CheckboxGroup.width(150);
            CheckboxGroup.height(200);
            CheckboxGroup.backgroundColor(this._generalAttr);
            CheckboxGroup.key(this.componentKey);
            CheckboxGroup.pop();
        }
        else if (this.targetView == 'DataPanel') {
            If.branchId(5);
            DataPanel.create({ values: [50, 12, 8, 5] });
            DataPanel.width(150);
            DataPanel.height(200);
            DataPanel.backgroundColor(this._generalAttr);
            DataPanel.key(this.componentKey);
            DataPanel.pop();
        }
        else if (this.targetView == 'DatePicker') {
            If.branchId(6);
            DatePicker.create();
            DatePicker.width(150);
            DatePicker.height(200);
            DatePicker.backgroundColor(this._generalAttr);
            DatePicker.key(this.componentKey);
            DatePicker.pop();
        }
        else if (this.targetView == 'Divider') {
            If.branchId(7);
            Divider.create();
            Divider.width(150);
            Divider.height(200);
            Divider.backgroundColor(this._generalAttr);
            Divider.key(this.componentKey);
        }
        else if (this.targetView == 'Gauge') {
            If.branchId(8);
            Gauge.create({ value: 75 });
            Gauge.width(150);
            Gauge.height(200);
            Gauge.backgroundColor(this._generalAttr);
            Gauge.key(this.componentKey);
        }
        else if (this.targetView == 'Image') {
            If.branchId(9);
            Image.create({ "id": 16777225, "type": 20000, params: [], "bundleName": "com.example.general", "moduleName": "entry_test" });
            Image.objectFit(ImageFit.Contain);
            Image.width(150);
            Image.height(200);
            Image.backgroundColor(this._generalAttr);
            Image.key(this.componentKey);
        }
        else if (this.targetView == 'LoadingProgress') {
            If.branchId(10);
            LoadingProgress.create();
            LoadingProgress.width(150);
            LoadingProgress.height(200);
            LoadingProgress.backgroundColor(this._generalAttr);
            LoadingProgress.key(this.componentKey);
        }
        else if (this.targetView == 'Marquee') {
            If.branchId(11);
            Marquee.create({
                start: true,
                src: "Marquee"
            });
            Marquee.width(150);
            Marquee.height(200);
            Marquee.backgroundColor(this._generalAttr);
            Marquee.key(this.componentKey);
            Marquee.pop();
            //        } else if (this.targetView == 'Menu') {
            //          Menu() {
            //            MenuItem({ content: "MenuItem1" })
            //          }
            //          .commonStyle()
            //        } else if (this.targetView == 'MenuItem') {
            //          MenuItem({ content: "MenuItem1" })
            //            .commonStyle()
            //        } else if (this.targetView == 'MenuItemGroup') {
            //          MenuItemGroup({ header: "MenuItemGroup小标题" })
            //            .commonStyle()
            //        } else if (this.targetView == 'Navigation') {
            Navigation.create();
            //        } else if (this.targetView == 'Menu') {
            //          Menu() {
            //            MenuItem({ content: "MenuItem1" })
            //          }
            //          .commonStyle()
            //        } else if (this.targetView == 'MenuItem') {
            //          MenuItem({ content: "MenuItem1" })
            //            .commonStyle()
            //        } else if (this.targetView == 'MenuItemGroup') {
            //          MenuItemGroup({ header: "MenuItemGroup小标题" })
            //            .commonStyle()
            //        } else if (this.targetView == 'Navigation') {
            Navigation.width(150);
            //        } else if (this.targetView == 'Menu') {
            //          Menu() {
            //            MenuItem({ content: "MenuItem1" })
            //          }
            //          .commonStyle()
            //        } else if (this.targetView == 'MenuItem') {
            //          MenuItem({ content: "MenuItem1" })
            //            .commonStyle()
            //        } else if (this.targetView == 'MenuItemGroup') {
            //          MenuItemGroup({ header: "MenuItemGroup小标题" })
            //            .commonStyle()
            //        } else if (this.targetView == 'Navigation') {
            Navigation.height(200);
            //        } else if (this.targetView == 'Menu') {
            //          Menu() {
            //            MenuItem({ content: "MenuItem1" })
            //          }
            //          .commonStyle()
            //        } else if (this.targetView == 'MenuItem') {
            //          MenuItem({ content: "MenuItem1" })
            //            .commonStyle()
            //        } else if (this.targetView == 'MenuItemGroup') {
            //          MenuItemGroup({ header: "MenuItemGroup小标题" })
            //            .commonStyle()
            //        } else if (this.targetView == 'Navigation') {
            Navigation.backgroundColor(this._generalAttr);
            //        } else if (this.targetView == 'Menu') {
            //          Menu() {
            //            MenuItem({ content: "MenuItem1" })
            //          }
            //          .commonStyle()
            //        } else if (this.targetView == 'MenuItem') {
            //          MenuItem({ content: "MenuItem1" })
            //            .commonStyle()
            //        } else if (this.targetView == 'MenuItemGroup') {
            //          MenuItemGroup({ header: "MenuItemGroup小标题" })
            //            .commonStyle()
            //        } else if (this.targetView == 'Navigation') {
            Navigation.key(this.componentKey);
            //        } else if (this.targetView == 'Menu') {
            //          Menu() {
            //            MenuItem({ content: "MenuItem1" })
            //          }
            //          .commonStyle()
            //        } else if (this.targetView == 'MenuItem') {
            //          MenuItem({ content: "MenuItem1" })
            //            .commonStyle()
            //        } else if (this.targetView == 'MenuItemGroup') {
            //          MenuItemGroup({ header: "MenuItemGroup小标题" })
            //            .commonStyle()
            //        } else if (this.targetView == 'Navigation') {
            Navigation.pop();
        }
        else if (this.targetView == 'NavRouter') {
            If.branchId(12);
            NavRouter.create();
            NavRouter.width(150);
            NavRouter.height(200);
            NavRouter.backgroundColor(this._generalAttr);
            NavRouter.key(this.componentKey);
            NavRouter.pop();
        }
        else if (this.targetView == 'NavDestination') {
            If.branchId(13);
            NavDestination.create();
            NavDestination.width(150);
            NavDestination.height(200);
            NavDestination.backgroundColor(this._generalAttr);
            NavDestination.key(this.componentKey);
            NavDestination.pop();
        }
        else if (this.targetView == 'PatternLock') {
            If.branchId(14);
            PatternLock.create();
            PatternLock.width(150);
            PatternLock.height(200);
            PatternLock.backgroundColor(this._generalAttr);
            PatternLock.key(this.componentKey);
        }
        else if (this.targetView == 'Progress') {
            If.branchId(15);
            Progress.create({ value: 10 });
            Progress.width(150);
            Progress.height(200);
            Progress.backgroundColor(this._generalAttr);
            Progress.key(this.componentKey);
        }
        else if (this.targetView == 'QRCode') {
            If.branchId(16);
            QRCode.create('hello world');
            QRCode.width(150);
            QRCode.height(200);
            QRCode.backgroundColor(this._generalAttr);
            QRCode.key(this.componentKey);
            QRCode.pop();
        }
        else if (this.targetView == 'Radio') {
            If.branchId(17);
            Radio.create({ value: 'Radio1', group: 'radioGroup' });
            Radio.width(150);
            Radio.height(200);
            Radio.backgroundColor(this._generalAttr);
            Radio.key(this.componentKey);
        }
        else if (this.targetView == 'Rating') {
            If.branchId(18);
            Rating.create({ rating: 3.5 });
            Rating.width(150);
            Rating.height(200);
            Rating.backgroundColor(this._generalAttr);
            Rating.key(this.componentKey);
            Rating.pop();
        }
        else if (this.targetView == 'RichText') {
            If.branchId(19);
            RichText.create('<h1>h1小标题</h1>');
            RichText.width(150);
            RichText.height(200);
            RichText.backgroundColor(this._generalAttr);
            RichText.key(this.componentKey);
            RichText.pop();
        }
        else if (this.targetView == 'ScrollBar') {
            If.branchId(20);
            ScrollBar.create({ scroller: this.scroller, direction: ScrollBarDirection.Vertical, state: BarState.On });
            ScrollBar.width(150);
            ScrollBar.height(200);
            ScrollBar.backgroundColor(this._generalAttr);
            ScrollBar.key(this.componentKey);
            Text.create();
            Text.width(20);
            Text.height(100);
            Text.borderRadius(10);
            Text.backgroundColor('#C0C0C0');
            Text.pop();
            ScrollBar.pop();
        }
        else if (this.targetView == 'Search') {
            If.branchId(21);
            Search.create();
            Search.width(150);
            Search.height(200);
            Search.backgroundColor(this._generalAttr);
            Search.key(this.componentKey);
            Search.pop();
        }
        else if (this.targetView == 'Select') {
            If.branchId(22);
            Select.create([{ value: 'aaa' },
                { value: 'bbb' }]);
            Select.width(150);
            Select.height(200);
            Select.backgroundColor(this._generalAttr);
            Select.key(this.componentKey);
            Select.pop();
        }
        else if (this.targetView == 'Slider') {
            If.branchId(23);
            Slider.create();
            Slider.width(150);
            Slider.height(200);
            Slider.backgroundColor(this._generalAttr);
            Slider.key(this.componentKey);
        }
        else if (this.targetView == 'Span') {
            If.branchId(24);
            Text.create();
            Span.create('This is the Span component');
            Span.width(150);
            Span.height(200);
            Span.backgroundColor(this._generalAttr);
            Span.key(this.componentKey);
            Text.pop();
        }
        else if (this.targetView == 'Stepper') {
            If.branchId(25);
            Stepper.create();
            Stepper.width(150);
            Stepper.height(200);
            Stepper.backgroundColor(this._generalAttr);
            Stepper.key(this.componentKey);
            Stepper.pop();
        }
        else if (this.targetView == 'StepperItem') {
            If.branchId(26);
            Stepper.create();
            StepperItem.create();
            StepperItem.width(150);
            StepperItem.height(200);
            StepperItem.backgroundColor(this._generalAttr);
            StepperItem.key(this.componentKey);
            StepperItem.pop();
            Stepper.pop();
        }
        else if (this.targetView == 'Text') {
            If.branchId(27);
            Text.create('text');
            Text.width(150);
            Text.height(200);
            Text.backgroundColor(this._generalAttr);
            Text.key(this.componentKey);
            Text.pop();
        }
        else if (this.targetView == 'TextArea') {
            If.branchId(28);
            TextArea.create();
            TextArea.width(150);
            TextArea.height(200);
            TextArea.backgroundColor(this._generalAttr);
            TextArea.key(this.componentKey);
        }
        else if (this.targetView == 'TextClock') {
            If.branchId(29);
            TextClock.create();
            TextClock.width(150);
            TextClock.height(200);
            TextClock.backgroundColor(this._generalAttr);
            TextClock.key(this.componentKey);
            TextClock.pop();
        }
        else if (this.targetView == 'TextInput') {
            If.branchId(30);
            TextInput.create();
            TextInput.width(150);
            TextInput.height(200);
            TextInput.backgroundColor(this._generalAttr);
            TextInput.key(this.componentKey);
        }
        else if (this.targetView == 'TextPicker') {
            If.branchId(31);
            TextPicker.create({ range: ['apple1', 'orange2', 'peach3', 'grape4'] });
            TextPicker.width(150);
            TextPicker.height(200);
            TextPicker.backgroundColor(this._generalAttr);
            TextPicker.key(this.componentKey);
            TextPicker.pop();
        }
        else if (this.targetView == 'TextTimer') {
            If.branchId(32);
            TextTimer.create({ isCountDown: true, count: 30000 });
            TextTimer.width(150);
            TextTimer.height(200);
            TextTimer.backgroundColor(this._generalAttr);
            TextTimer.key(this.componentKey);
            TextTimer.pop();
        }
        else if (this.targetView == 'TimePicker') {
            If.branchId(33);
            TimePicker.create();
            TimePicker.width(150);
            TimePicker.height(200);
            TimePicker.backgroundColor(this._generalAttr);
            TimePicker.key(this.componentKey);
            TimePicker.pop();
        }
        else if (this.targetView == 'Toggle') {
            If.branchId(34);
            Toggle.create({ type: ToggleType.Switch });
            Toggle.width(150);
            Toggle.height(200);
            Toggle.backgroundColor(this._generalAttr);
            Toggle.key(this.componentKey);
            Toggle.pop();
        }
        else if (this.targetView == 'Badge') {
            If.branchId(35);
            Badge.create({
                value: 'New',
                style: { badgeSize: 16 }
            });
            Badge.width(150);
            Badge.height(200);
            Badge.backgroundColor(this._generalAttr);
            Badge.key(this.componentKey);
            Text.create('list2');
            Text.pop();
            Badge.pop();
        }
        else if (this.targetView == 'Column') {
            If.branchId(36);
            Column.create();
            Column.width(150);
            Column.height(200);
            Column.backgroundColor(this._generalAttr);
            Column.key(this.componentKey);
            Column.pop();
        }
        else if (this.targetView == 'ColumnSplit') {
            If.branchId(37);
            ColumnSplit.create();
            ColumnSplit.width(150);
            ColumnSplit.height(200);
            ColumnSplit.backgroundColor(this._generalAttr);
            ColumnSplit.key(this.componentKey);
            Text.create('1');
            Text.pop();
            ColumnSplit.pop();
        }
        else if (this.targetView == 'Counter') {
            If.branchId(38);
            Counter.create();
            Counter.width(150);
            Counter.height(200);
            Counter.backgroundColor(this._generalAttr);
            Counter.key(this.componentKey);
            Counter.pop();
        }
        else if (this.targetView == 'Flex') {
            If.branchId(39);
            Flex.create();
            Flex.width(150);
            Flex.height(200);
            Flex.backgroundColor(this._generalAttr);
            Flex.key(this.componentKey);
            Flex.pop();
        }
        else if (this.targetView == 'GridCol') {
            If.branchId(40);
            GridRow.create();
            GridCol.create();
            GridCol.width(150);
            GridCol.height(200);
            GridCol.backgroundColor(this._generalAttr);
            GridCol.key(this.componentKey);
            GridCol.pop();
            GridRow.pop();
        }
        else if (this.targetView == 'GridRow') {
            If.branchId(41);
            GridRow.create();
            GridRow.width(150);
            GridRow.height(200);
            GridRow.backgroundColor(this._generalAttr);
            GridRow.key(this.componentKey);
            GridCol.create();
            Row.create();
            Row.height('20vp');
            Row.pop();
            GridCol.pop();
            GridRow.pop();
        }
        else if (this.targetView == 'Grid') {
            If.branchId(42);
            Grid.create();
            Grid.width(150);
            Grid.height(200);
            Grid.backgroundColor(this._generalAttr);
            Grid.key(this.componentKey);
            GridItem.create();
            GridItem.pop();
            Grid.pop();
        }
        else if (this.targetView == 'GridItem') {
            If.branchId(43);
            Grid.create();
            GridItem.create();
            GridItem.width(150);
            GridItem.height(200);
            GridItem.backgroundColor(this._generalAttr);
            GridItem.key(this.componentKey);
            GridItem.pop();
            Grid.pop();
        }
        else if (this.targetView == 'List') {
            If.branchId(44);
            List.create();
            List.width(150);
            List.height(200);
            List.backgroundColor(this._generalAttr);
            List.key(this.componentKey);
            List.pop();
        }
        else if (this.targetView == 'ListItem') {
            If.branchId(45);
            List.create();
            ListItem.create();
            ListItem.width(150);
            ListItem.height(200);
            ListItem.backgroundColor(this._generalAttr);
            ListItem.key(this.componentKey);
            ListItem.pop();
            List.pop();
        }
        else if (this.targetView == 'ListItemGroup') {
            If.branchId(46);
            List.create();
            ListItemGroup.create();
            ListItemGroup.width(150);
            ListItemGroup.height(200);
            ListItemGroup.backgroundColor(this._generalAttr);
            ListItemGroup.key(this.componentKey);
            ListItem.create();
            Text.create('N');
            Text.pop();
            ListItem.pop();
            ListItemGroup.pop();
            List.pop();
        }
        else if (this.targetView == 'Navigator') {
            If.branchId(47);
            Navigator.create({ target: 'pages/BackgroundColorPage' });
            Navigator.width(150);
            Navigator.height(200);
            Navigator.backgroundColor(this._generalAttr);
            Navigator.key(this.componentKey);
            Navigator.pop();
        }
        else if (this.targetView == 'Panel') {
            If.branchId(48);
            Panel.create(true);
            Panel.width(150);
            Panel.height(200);
            Panel.backgroundColor(this._generalAttr);
            Panel.key(this.componentKey);
            Panel.pop();
        }
        else if (this.targetView == 'Refresh') {
            If.branchId(49);
            Refresh.create({ refreshing: true });
            Refresh.width(150);
            Refresh.height(200);
            Refresh.backgroundColor(this._generalAttr);
            Refresh.key(this.componentKey);
            Refresh.pop();
        }
        else if (this.targetView == 'RelativeContainer') {
            If.branchId(50);
            RelativeContainer.create();
            RelativeContainer.width(150);
            RelativeContainer.height(200);
            RelativeContainer.backgroundColor(this._generalAttr);
            RelativeContainer.key(this.componentKey);
            Row.create();
            Row.width(100);
            Row.height(100);
            Row.backgroundColor("#FF3333");
            Row.alignRules({
                top: { anchor: "__container__", align: VerticalAlign.Top },
                left: { anchor: "__container__", align: HorizontalAlign.Start }
            });
            Row.id("row1");
            Row.pop();
            RelativeContainer.pop();
        }
        else if (this.targetView == 'Row') {
            If.branchId(51);
            Row.create();
            Row.width(150);
            Row.height(200);
            Row.backgroundColor(this._generalAttr);
            Row.key(this.componentKey);
            Row.pop();
        }
        else if (this.targetView == 'RowSplit') {
            If.branchId(52);
            RowSplit.create();
            RowSplit.width(150);
            RowSplit.height(200);
            RowSplit.backgroundColor(this._generalAttr);
            RowSplit.key(this.componentKey);
            Text.create('1');
            Text.pop();
            RowSplit.pop();
        }
        else if (this.targetView == 'Scroll') {
            If.branchId(53);
            Scroll.create();
            Scroll.width(150);
            Scroll.height(200);
            Scroll.backgroundColor(this._generalAttr);
            Scroll.key(this.componentKey);
            Text.create('N');
            Text.pop();
            Scroll.pop();
        }
        else if (this.targetView == 'SideBarContainer') {
            If.branchId(54);
            SideBarContainer.create();
            SideBarContainer.width(150);
            SideBarContainer.height(200);
            SideBarContainer.backgroundColor(this._generalAttr);
            SideBarContainer.key(this.componentKey);
            Text.create("Index0");
            Text.pop();
            SideBarContainer.pop();
        }
        else if (this.targetView == 'Stack') {
            If.branchId(55);
            Stack.create();
            Stack.width(150);
            Stack.height(200);
            Stack.backgroundColor(this._generalAttr);
            Stack.key(this.componentKey);
            Stack.pop();
        }
        else if (this.targetView == 'Swiper') {
            If.branchId(56);
            Swiper.create();
            Swiper.width(150);
            Swiper.height(200);
            Swiper.backgroundColor(this._generalAttr);
            Swiper.key(this.componentKey);
            Swiper.pop();
        }
        else if (this.targetView == 'Swiper') {
            If.branchId(57);
            Swiper.create();
            Swiper.width(150);
            Swiper.height(200);
            Swiper.backgroundColor(this._generalAttr);
            Swiper.key(this.componentKey);
            Swiper.pop();
        }
        else if (this.targetView == 'Tabs') {
            If.branchId(58);
            Tabs.create();
            Tabs.width(150);
            Tabs.height(200);
            Tabs.backgroundColor(this._generalAttr);
            Tabs.key(this.componentKey);
            Tabs.pop();
        }
        else if (this.targetView == 'TabContent') {
            If.branchId(59);
            Tabs.create();
            TabContent.create();
            TabContent.width(150);
            TabContent.height(200);
            TabContent.backgroundColor(this._generalAttr);
            TabContent.key(this.componentKey);
            TabContent.pop();
            Tabs.pop();
        }
        else if (this.targetView == 'FlowItem') {
            If.branchId(60);
            WaterFlow.create();
            FlowItem.create();
            FlowItem.width(150);
            FlowItem.height(200);
            FlowItem.backgroundColor(this._generalAttr);
            FlowItem.key(this.componentKey);
            FlowItem.pop();
            WaterFlow.pop();
        }
        else if (this.targetView == 'WaterFlow') {
            If.branchId(61);
            WaterFlow.create();
            WaterFlow.width(150);
            WaterFlow.height(200);
            WaterFlow.backgroundColor(this._generalAttr);
            WaterFlow.key(this.componentKey);
            WaterFlow.pop();
        }
        else if (this.targetView == 'Video') {
            If.branchId(62);
            Video.create({
                src: { "id": 16777226, "type": 20000, params: [], "bundleName": "com.example.general", "moduleName": "entry_test" }
            });
            Video.width(150);
            Video.height(200);
            Video.backgroundColor(this._generalAttr);
            Video.key(this.componentKey);
        }
        else if (this.targetView == 'Circle') {
            If.branchId(63);
            Circle.create();
            Circle.width(150);
            Circle.height(200);
            Circle.backgroundColor(this._generalAttr);
            Circle.key(this.componentKey);
        }
        else if (this.targetView == 'Ellipse') {
            If.branchId(64);
            Ellipse.create();
            Ellipse.width(150);
            Ellipse.height(200);
            Ellipse.backgroundColor(this._generalAttr);
            Ellipse.key(this.componentKey);
        }
        else if (this.targetView == 'Line') {
            If.branchId(65);
            Line.create();
            Line.width(150);
            Line.height(200);
            Line.backgroundColor(this._generalAttr);
            Line.key(this.componentKey);
        }
        else if (this.targetView == 'Polyline') {
            If.branchId(66);
            Polyline.create();
            Polyline.width(150);
            Polyline.height(200);
            Polyline.backgroundColor(this._generalAttr);
            Polyline.key(this.componentKey);
        }
        else if (this.targetView == 'Polygon') {
            If.branchId(67);
            Polygon.create();
            Polygon.width(150);
            Polygon.height(200);
            Polygon.backgroundColor(this._generalAttr);
            Polygon.key(this.componentKey);
        }
        else if (this.targetView == 'Path') {
            If.branchId(68);
            Path.create();
            Path.width(150);
            Path.height(200);
            Path.backgroundColor(this._generalAttr);
            Path.key(this.componentKey);
        }
        else if (this.targetView == 'Rect') {
            If.branchId(69);
            Rect.create();
            Rect.width(150);
            Rect.height(200);
            Rect.backgroundColor(this._generalAttr);
            Rect.key(this.componentKey);
        }
        else if (this.targetView == 'Shape') {
            If.branchId(70);
            Shape.create();
            Shape.width(150);
            Shape.height(200);
            Shape.backgroundColor(this._generalAttr);
            Shape.key(this.componentKey);
            Shape.pop();
        }
        else if (this.targetView == 'Canvas') {
            If.branchId(71);
            Canvas.create();
            Canvas.width(150);
            Canvas.height(200);
            Canvas.backgroundColor(this._generalAttr);
            Canvas.key(this.componentKey);
            Canvas.pop();
        }
        If.pop();
        Column.pop();
        Row.pop();
    }
}
loadDocument(new BackgroundColorPage("1", undefined, {}));


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
/******/ 	var __webpack_exports__ = __webpack_require__("../../../../../../projects/general/entry/src/ohosTest/ets/testability/pages/BackgroundColorPage.ets?entry");
/******/ 	_702ddc02e9d4b8dc29b823c839b26124 = __webpack_exports__;
/******/ 	
/******/ })()
;
//# sourceMappingURL=BackgroundColorPage.js.map