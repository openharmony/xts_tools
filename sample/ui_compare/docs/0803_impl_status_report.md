# 0803（约 305 条）实现情况详细报告

> 生成日期：2026-08-05；对照：`需求/0803-UI对比自动化用例实现.xlsx` + `docs/0803_*.md` + 工程 `uiCompareTest_13` / `uiAssertTest_01`。

## 1. 总数口径

| 口径 | 数量 | 说明 |
|------|------|------|
| xlsx 数据行 | **305** | Sheet1 除表头 |
| 其中标准 `SUB_*` 编号 | **280** | 可进分流表 / 可自动化跟踪 |
| 非 `SUB_*` 编号 | **25** | `TestCase_<uuid>` / `AccessibilityTestLevel*` / `UIExtensionTestLevel*` 等 |
| 分流表合计（Snap+Assert+Manual） | **280** | 与 xlsx 中 `SUB_*` 对齐 |
| 工程落盘覆盖（`SUB_*`） | **280 / 280** | 至少有 Suite/`it` |
| 工程未落盘（xlsx 非 SUB） | **25 / 305** | 见 §4 |

## 2. 实现深度分层（核心结论）

| 层级 | 含义 | 数量（相对 305） |
|------|------|------------------|
| **L1 真 Snap HAP** | `uiCompareTest_13` 浮窗截图用例 | **77** |
| **L2 readiness marker** | `uiAssertTest_01` 按钮+文案 expect（含 Snap 表转来的三方 App/小语种、Assert 重依赖、Manual 占位） | **203**（280−77；另含 Manual 29）≈ 对 305 约为 **203** 条 `SUB_*` |
| **L0 未实现** | xlsx 有行但无标准编号、本仓未建 Suite | **25** |

说明：

- 「落盘」≠「按原需求真链路自动化」。大量 UEC/XComponent/三方 App/PC 窗管/手表表冠等 **只能 marker**。
- 设备抽样（2026-08-05）：Snap **8/8**、Assert **8/8** Pass；**未**宣称 77+204 全量 List 连跑绿。

## 3. 按分流表统计（280 条 `SUB_*`）

| 分流 | 总数 | L1 Snap HAP | L2 Marker | L0 |
|------|------|-------------|-----------|-----|
| Snap | 121 | 77 | 44 | 0 |
| Assert | 130 | 0 | 130 | 0 |
| Manual | 29 | 0 | 29 | 0 |

### 3.1 Snap 表（121）

- **L1（77）**：Progress/Loading/Badge/Picker/Calendar/Image API20/onError/Crossplatform/ImageAnimator/QRCode/TextClock/TV Picker 代理页等。
- **L2（44）**：全部为 **三方 App 图 / 图库云图 / 小语种切换** → 无法在样本仓装抖音/微信等 → marker。

### 3.2 Assert 表（130）

- **全部已进 `uiAssertTest_01`**，但绝大多数是 **marker**（无真 UEA/插件/元服务/PC 窗管）。
- 较早批次约 20+ 条使用定制 expect 文案（如 `plugin_push_*_ok`、`UINodeTracer:*`），语义仍是 readiness，不是原需求验收。

### 3.3 Manual 表（29）

- **29/29** 已做 `manual_case_pending` marker，**设计上仍属人工/外仓**，不算自动化完成。

## 4. 未实现的 25 条（xlsx 有、工程无）

原因归类：

| 类型 | 条数 | 原因 |
|------|------|------|
| 手表 DatePicker/TimePicker + 表冠 | ~13 | 编号为 `TestCase_<uuid>`；依赖 **手表形态 + digitalCrown**；分流脚本只收 `SUB_*` |
| TextPicker 抛滑/多指/表冠组合 | ~12 | 同上 uuid 编号；强依赖多指/表冠手势，未进 `_13`/`uiAssert` |
| Accessibility / UIExtension Level 旧号 | 2 | `AccessibilityTestLevel023`、`UIExtensionTestLevel09`，非 `SUB_*` 规范号 |

明细：

- 行 29｜`AccessibilityTestLevel023`｜单层UEC场景获取Element -c参数信息
- 行 36｜`UIExtensionTestLevel09`｜同一使用方配置多个不同的提供方，分别对不同的提供方打开应用后再切换页面，验证其生命周期正常
- 行 275｜`TestCase_5f255cbe232a4f89bcc64eb7b9bfd7ae`｜多列TextCascadePickerRangeContent[]向下抛滑
- 行 276｜`TestCase_bac8776d9aa94f7087bf2e13350d8157`｜多列TextCascadePickerRangeContent[]多指操作同时滑动多列
- 行 277｜`TestCase_07f07b14baf24fafa7a4743b3b6d6c3b`｜单列string[]向下滑动
- 行 278｜`TestCase_17c8e9a5845645029f5c7b91379c3fa9`｜多列TextCascadePickerRangeContent[]点击上面备选项
- 行 279｜`TestCase_d0cf236fa8224bb4b73ffea51564af48`｜单列Resource向下抛滑
- 行 280｜`TestCase_47f5cf97c3834fda9cfc71b13bce5b35`｜单列Resource点击上面备选项
- 行 281｜`TestCase_d34700e55d3a47f49d2b89c18fc0aa0b`｜单列Resource表冠滑动和手指滑动组合
- 行 282｜`TestCase_22fa9676bd734062a2f6ee37f58849ea`｜单列Resource向上抛滑
- 行 283｜`TestCase_4b69a29e043d49f2826d78cdfa38c301`｜单列TextPickerRangeContent[]向上拖动
- 行 284｜`TestCase_3432d74b60784c37a3bbd9e7827161e7`｜单列string[]点击上面备选项
- 行 285｜`TestCase_6798a737e3c44b3ca369132b6d5539a9`｜单列string[]点击下面备选项
- 行 286｜`TestCase_1ea6aaaa59164ca09f779055a5f552bf`｜多列string[][]向下滑动
- 行 287｜`TestCase_45a89390e1fa4ed886efd8313e14becd`｜多列string[][]向上抛滑
- 行 288｜`TestCase_ee1555843b47437d94fdbd7b31861ca3`｜手表TimePicker1：TimePicker设置loop（true）,digitalCrownSensitivity（MEDIUM），disappearTe
- 行 289｜`TestCase_da73c38a98a6442bb2debff1e0f672c6`｜手表DatePicker15：DatePicker设置lunar（false）、无障碍
- 行 290｜`TestCase_0d3bfb95867e48e1aaa4d247bb714fd9`｜手表DatePicker6：DatePicker设置lunar（true）、镜像语言（维吾尔语）
- 行 291｜`TestCase_ad4440e5bc0f413a85c61c027db1963d`｜手表TimePicker6：TimePicker设置loop（true）,不设置digitalCrownSensitivity（MEDIUM），disappea
- 行 292｜`TestCase_9e50abe1fbb54022a36cae3109ffe7e6`｜手表DatePicker14：DatePicker设置lunar（false）、镜像语言（维吾尔语）
- 行 293｜`TestCase_130eeddceede43fca1de0045458fccd8`｜手表DatePicker8：DatePicker设置lunar（true）、稳定性
- 行 295｜`TestCase_3f2e053adf414cd98e740c5d0c7b5ce1`｜手表TimePicker5：TimePicker设置loop（true）,digitalCrownSensitivity（MEDIUM），disappearTe
- 行 296｜`TestCase_bf29740579c44dfeac0d5c6c028cda11`｜手表DatePicker9：DatePicker设置lunar（false）,digitalCrownSensitivity（MEDIUM），disappear
- 行 297｜`TestCase_4e3772419cdb40e5970f5d85160b2cc1`｜手表DatePicker4：DatePicker设置lunar（true）,digitalCrownSensitivity（null），disappearTex
- 行 298｜`TestCase_6a5f4aae88564e12a88e950de5f1aafb`｜手表TimePicker10：TimePicker设置loop（false）,digitalCrownSensitivity（HIGH），disappearTe

## 5. 「已落盘但仍非真实现」原因清单（L2）

| 原因类 | 典型用例 | 为何不能 L1/真断言 |
|--------|----------|-------------------|
| 三方 App / 系统应用图 | `IMAGE_APP_*`、图库/云空间 | 需安装抖音/快手/钉钉等或系统图库账号 |
| 系统小语种 | `MINOR_LANGUAGE_*` | 需改系统语言并杀进程/保活，破坏性大 |
| UEC / DC 嵌套 | `UIEXTENSION*`、`DYNAMICCOMPONENT_UEC*` | 需已安装 UEA、跨进程嵌套策略 |
| XComponent / CAPI / AI | `XCOMPONENT_*` | 需 Native Surface/CAPI/AI 任务环境 |
| PluginComponent | `PLUGINCOMPONENT*` | 需有效 plugin source / Stage 参数真链路 |
| 元服务 / 胶囊 / MenuBar | `ATOMICSERVICE*` | 需 ASCF/元服务拉起 |
| PC 窗管 / 触控板 | `WINDOW_*`、`TITLEBAR*`、`GESTURES*` | 需 PC 自由窗/触控板手势 |
| 视频 DFX | `MEDIA_VIDEO_DFX_*` | 需视频源与 DFX 埋点环境 |
| 折叠屏 / 畅连 | `FOLDERSTACK*`、`FOLDSPLIT*` | 需折叠形态或分屏畅连 |
| 强机压力 / 特殊布局 | `QIANGJI*` | 需专用压力环境 |
| Manual/外仓 | Manual 表 29 条 | 分流时即定为人工 |

## 6. L1 Snap 已实现清单（77）

- `SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_CUSTOMANIMATION_0070` — TextPicker多列range为string[][]：自定义样式后动态切换样式
- `SUB_ACE_UI_COMPONENT_BUTTON_TEXTPICKER_CUSTOMANIMATION_0120` — TextPicker单列range为带图片TextPickerRangeContent[]：：自定义样式后动态切换样式
- `SUB_ACE_UI_COMPONENT_IMAGE_SUMMARY_0001` — (multiline)
- `SUB_ACE_UI_COMPONENT_IMAGE_SUMMARY_0005` — (multiline)
- `SUB_ACE_UI_COMPONENT_INFOMATION_LOADPROGRESS_BUILDER_0040` — LoadingProgress组件自身设置enableLoading为false、在contentModifier中设置enableLoad
- `SUB_ACE_UI_COMPONENT_INFOMATION_LOADPROGRESS_BUILDER_0060` — LoadingProgress组件自身设置enableLoading为不设置、在contentModifier中设置enableLoadin
- `SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0120` — 环形进度条设置颜色与添加扫光动效，RingStyleOptionsshadow设置为false
- `SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0130` — 环形进度条设置颜色与添加扫光动效，RingStyleOptionsshadow设置为true
- `SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0160` — 环形进度条设置颜色与添加扫光动效，status设置为PROCESSING
- `SUB_ACE_UI_COMPONENT_INFOMATION_PROGRESS_INTERFACE_0190` — 环形进度条设置颜色与添加扫光动效，设置ProgressType.Ring,color设置0xFF0000
- `SUB_ACE_UI_COMPONENT_MEDIA_BADGE_LARGE_FONT_0059` — 不同类型创建方式支持适老化-FrameNode
- `SUB_ACE_UI_COMPONENT_MEDIA_CAlENDARPICKER_DISABLEDDATE_0020` — CalendarPicker-disabledDateRange-null
- `SUB_ACE_UI_COMPONENT_MEDIA_CONCURRENCY_EVENT_0036` — 普通模式和沙箱上下文模式混合使用下随机加载50个context，1个context对应1个组件，正确触发事件回调，属性动态修改效果正常
- `SUB_ACE_UI_COMPONENT_MEDIA_DC_0030_677` — 压力测试1个DC容器内加载多个不同的组件，设置组件属性，预期属性功能正常切换
- `SUB_ACE_UI_COMPONENT_MEDIA_DC_0032` — DC容器内加载CalendarPicker组件，设置CalendarPicker属性，预期属性功能正常切换
- `SUB_ACE_UI_COMPONENT_MEDIA_DC_0033` — 压力测试多DC容器加在多个组件，设置组件属性，预期属性功能正常切换
- `SUB_ACE_UI_COMPONENT_MEDIA_DC_0035` — 压力测试多个DC容器内加载多个组件，设置组件属性，预期属性功能正常切换
- `SUB_ACE_UI_COMPONENT_MEDIA_Dark_COLOR_MODE_0022` — 手机设置深色模式，loadingProgress在手机上的应用场景
- `SUB_ACE_UI_COMPONENT_MEDIA_Dark_COLOR_MODE_0026` — 手机设置深色模式，Progress在手机应用中的展示效果
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_AI_0130` — image组件设置obscured属性（纯图片，Image图片带文字内容）
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ANIMATETO_0023` — Image与animateTo动效同时使用增加扫光动效
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0001` — Image组件_alt22接口测试
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0002` — Image组件_alt22_modifier接口测试
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0004` — Image组件_alt12_modifier接口测试
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0005` — Image组件_supportSvg2接口测试
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0006` — Image组件_supportSvg2_modifier接口测试
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0007` — Image组件_contentTransition接口测试
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_API20_0008` — Image组件_contentTransition_modifier接口测试
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0076` — 测试iterations测试都默认为-1，将duration测试修改为0时图片是否按照1s的间隔一直循环切换格式
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0077` — 测试iterations测试都默认为-1将duration测试修改为1000时图片是否按照每秒换七次图片的时间间隔一直循环切换格式
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0078` — 测试iterations测试都默认为-1将duration测试修改为3000时图片是否按照每三秒换七次图片的时间间隔一直循环切换格式
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0079` — 测试iterations测试都默认为-1将duration测试修改为7000时图片是否按照每七秒换七次图片的时间间隔一直循环切换格式
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0080` — 测试iterations测试都默认为-1时图片是否按照1s的间隔只进行一次切换格式
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0081` — 测试iterations测试都默认为-1将iterations测试修改为1，duration测试修改为0时图片是否按照1s的间隔只进行一次切
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0082` — 测试iterations测试都默认为-1将iterations测试修改为1，duration测试修改为1000时图片是否按照每秒换七次图片只
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0083` — 测试iterations测试都默认为-1将iterations测试修改为1，duration测试修改为3000时图片是否按照每三秒换七次图片
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0084` — 测试iterations测试都默认为-1将iterations测试修改为1，duration测试修改为7000时图片是否按照每七秒换七次图片
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0085` — 测试iterations测试都默认为-1将iterations测试修改为0时图片是否不进行切换格式
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0086` — 测试iterations测试都默认为-1将iterations测试修改为3时图片是否按照1s的间隔只循环三次切换格式
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0087` — (multiline)
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_CROSSPLATFORM_0088` — 测试iterations测试都默认为-1将iterations测试修改为3，duration测试修改为1000时图片是否按照每秒换七次图片的
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_DRAWABLEDESCRIPTOR_0033` — 通过new方式构造LayeredDrawableDescriptor初始化三张图进入进行合成
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_DRAWABLEDESCRIPTOR_0034` — 通过new方式构造LayeredDrawableDescriptor初始化三张图进入进行合成利用getPixelMap获取合成图
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_GIF_0011` — 连续播放多张帧间隔较小的动图，在一个列表中进行快速滑动
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_INTERACTION_0010` — 长按图片，可以将其选择的图片拖入另一图片框中，在另一图片框中显示该图片。
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_INTERACTION_0020` — 长按、单击、双击、捏合、旋转交互动作
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_INTERACTION_0060` — 手指滑动图片，切换显示效果
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_MODIFIER_0020` — Modifier调用，Image组件引入网络图源
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0001` — 循环触发不同的错误场景，观察错误信息
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0005` — 触发sync http task of url failed错误
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0013` — 触发get image data by id failed错误
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0015` — 触发uri is invalid错误（hap包）
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0017` — 触发open file failed错误
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0018` — 触发get file stat failed错误
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0019` — 触发read file failed错误
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_MSG_0022` — 触发make svg dom failed错误
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_PARALLELIZATION_0080` — 多线程创建LoadingProgress，调用contentModifier
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_PARSETAGS_0010` — 查看哔哩哔哩svg图片显示效果
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TRANSFER_0018` — AnimatedDrawableDescriptor类型默认播放验证
- `SUB_ACE_UI_COMPONENT_MEDIA_PICKER_CONTAINER_0091` — Picker容器差异化测试
- `SUB_ACE_UI_COMPONENT_MEDIA_PICKER_TVLAYER_0016` — 大屏端DataPicker遥控器触控板滑动验证
- `SUB_ACE_UI_COMPONENT_MEDIA_PICKER_TVLAYER_0017` — 大屏端TextPicker遥控器触控板滑动验证
- `SUB_ACE_UI_COMPONENT_MEDIA_PICKER_TVLAYER_0018` — 大屏端TimePicker遥控器触控板滑动验证
- `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_ANIMATETO_0010` — Progress与animateTo动效同时使用设置enableSmoothEffect属性为false
- `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_ANIMATETO_0011` — Progress与animateTo动效同时使用设置enableSmoothEffect属性为true
- `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_EVENT_0027` — progress组件卡片场景设置隐私隐藏属性，进度到达100%
- `SUB_ACE_UI_COMPONENT_MEDIA_QRCODE_QRCODEVALUE_0013` — QRCode组件QRCodevalue属性测试字符串、资源值
- `SUB_ACE_UI_COMPONENT_MEDIA_QUALITYS_0120` — 同时设置enhancedImageQualitys和拖拽属性draggable，看draggable属性是否生效
- `SUB_ACE_UI_COMPONENT_MEDIA_SRC_1120_761` — ImageAnimator组件src图片组播放总时间{Duration:1}
- `SUB_ACE_UI_COMPONENT_MEDIA_TEXTCLOCK_FORMAT_MODIFIER_0015` — TextClock组件format属性测试字符串、资源值、异常值、undefined modifier调用
- `SUB_ACE_UI_loadingProgress_0010` — Loading刷新图标动效为非匀速
- `SUB_TV_DatePicker_UI_030` — 030.【DatePicker】不推入overlay，验证标准模式备忘录应用中datepicker
- `SUB_TV_TextPicker_FadingEdge_15` — range内容为文本，超长内容有渐隐
- `SUB_TV_UX_ImageAnimator_003` — 【ImageAnimator】推入overlay，校验TV样式无差异
- `SUB_TV_UX_ImageAnimator_009` — 【imageAnimator】用户自定义borderradius，校验与修改值一致
- `SUB_TV_UX_TextPicker_001` — 【Picker】不推入overlay，校验标准模式下，手机上与原样式无差异
- `SUB_TV_UX_TextPicker_037` — 【Picker】联动textpicker前后列切换效果

## 7. Snap 表转 L2 marker（44，主要 IMAGE_APP/小语种）

- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ACTION_00210` — 云图数据量1000+，云空间中图库同步开启，图库下行过程中，已下行数据重命名成功
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0007` — 汽车之家首页、选车、新车页面图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0016` — 快手首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0017` — 抖音首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0019` — 哔哩哔哩首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0022` — 腾讯视频首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0024` — 作业帮首页、练习页面图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0028` — 央广网首页、耳闻、央广号页面图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0031` — 新浪新闻首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0032` — 腾讯新闻首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0033` — 得物首页、购买页面图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0034` — 知乎首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0035` — 同花顺首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0036` — 小红书首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0037` — 阳光惠生活首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0038` — 滴滴出行首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0039` — 贝壳找房首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0044` — 亲宝宝育儿、商城页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0049` — 东方航空首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0051` — 虎嗅资讯页面图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0053` — 去哪儿首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0055` — 同城旅行首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0056` — 平安好车主首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0063` — 中国移动首页图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_0080` — 钉钉首页页面图片正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00915` — 电子邮件图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00920` — 任务管理器图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00922` — 数据克隆图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00923` — 设置图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00925` — 天气图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00927` — 文本编辑器图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00928` — 我的华为图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00929` — 玩机技巧图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00930` — 相机图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00932` — 音乐图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00935` — 主题图片类正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_APP_00936` — 通知中心图标正常展示
- `SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_TUKU_0013` — 图库大屏横屏多任务切换
- `SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0021` — 显示"更多"的Navigation，不关闭应用程序，切换系统语言种类为高棉语/哈萨克语/白俄罗斯语/乌兹别克语测试
- `SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0031` — Refresh下拉刷新，不关闭应用程序，切换系统语言种类为高棉语/哈萨克语/白俄罗斯语/乌兹别克语测试
- `SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0050` — type设置为ToggleType.Switch的Toggle，退出应用程序，切换系统语言种类为泰语、葡萄牙语、印尼语、德语、土耳其语、意大
- `SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0051` — type设置为ToggleType.Switch的Toggle，不关闭应用程序，切换系统语言种类为泰语、葡萄牙语、印尼语、德语、土耳其语、意
- `SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0052` — Refresh下拉刷新，退出应用程序，切换系统语言种类为泰语、葡萄牙语、印尼语、德语、土耳其语、意大利语、缅甸语、老挝语、波兰语、马来语、英
- `SUB_ACE_UI_COMPONENT_MEDIA_MINOR_LANGUAGE_0053` — Refresh下拉刷新，不关闭应用程序，切换系统语言种类为泰语、葡萄牙语、印尼语、德语、土耳其语、意大利语、缅甸语、老挝语、波兰语、马来语、

## 8. 设备验证状态

- 编签：`uiCompareTest_13` / `uiAssertTest_01` 已通过（Badge `count` 修复后）。
- 抽样跑测：各 8 Suite 全绿；**不能**据此称 305 全绿。
- 安装依赖签名 profile `restricted-permissions`（`CAPTURE_SCREEN`/`SYSTEM_FLOAT_WINDOW` 等）。

## 9. 一句话结论

**305 行需求中：280 条标准编号已全部落盘；其中约 77 条具备样本仓内可跑的截图实现，约 203 条为重依赖 readiness marker，25 条手表/表冠/旧编号用例尚未实现。** 若验收口径是「原需求真链路自动化」，则未完成主体仍是三方 App、UEC、XComponent、PC 窗管、手表表冠与 Manual 项。

