/*
 * Copyright (c) 2023 iSoftStone Information Technology (Group) Co.,Ltd.
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

// @ts-nocheck
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from './model/Settings'
import windowSnap from './model/snapShot'
import Logger from './model/Logger'
import {
  UiComponent,
  UiDriver,
  Component,
  Driver,
  UiWindow,
  ON,
  BY,
  MatchPattern,
  DisplayRotation,
  ResizeDirection,
  WindowMode,
  PointerMatrix
} from '@ohos.UiTest';

/*
 * menuTest_001:二级菜单CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，其中一个调用builder自定义组件，创建一个二级菜单，二级菜单包含4个菜单
 * menuTest_002:二级菜单CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：1，创建三个menuitem组件，其中一个调用builder自定义组件，创建一个二级菜单2，二级菜单创建多个菜单，超过屏幕
 * menuTest_003:二级菜单CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：1，创建三个menuitem组件，其中两个调用menuitem组件builder自定义组件，创建两个个二级菜单
 * menuTest_004:一级菜单验证menu和menuitem对齐方式CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，左右侧设置图标，value为菜单菜单菜单：三个menuitem组件字体设置30
 * menuTest_005:一级菜单验证menu和menuitem对齐方式CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，左右侧设置图标，文本内容“菜单”，字体设置10
 * menuTest_006:一级菜单验证menu和menuitem对齐方式CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，文本内容“菜单”三个menuitem组件字体设置30
 * menuTest_007:一级菜单验证menu和menuitem对齐方式CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，文本内容“菜单”三个menuitem组件字体设置10
 * menuTest_008:一级菜单验证menu和menuitem对齐方式CustomBuilder，调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置10
 * menuTest_009:一级菜单验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置20，高度设置50，宽度设置200配置.border({width:1}
 * menuTest_010:一级菜单验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，文本内容“菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置20，字数超过宽度，高度设置50，宽度设置200配置.border({width:1}
 *
 * menuTest_011:一级菜单验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置1，创建三个menuitem组件，文本内容“菜单”三个menuitem组件字体设置15，高度设置50，宽度设置200配置.border({width:1}
 * menuTest_012:一级菜单验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置15，高度设置23，宽度设置23，图标大于设定宽度
 * menuTest_013:一级菜单验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，文本内容“菜单菜单”三个menuitem组件字体设置20，宽度设置40，value大于设定宽度
 * menuTest_014:一级菜单验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置
    1，创建一个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置20，宽度设置40，value大于设定宽度，配置.border({width:1})
    2，创建一个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置30，宽度设置200，配置.border({width:1}
    3，创建一个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置15，宽度设置200，配置.border({width:1}
    4，创建一个menuitem组件，左右侧设置图标，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单”字体设置15，宽度设置200，配置.border({width:1}
 * menuTest_015:一级菜单用百分比验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置1，创建三个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置20，高度设置100%，宽度设置100%
 * menuTest_016:一级菜单用百分比验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置1，创建三个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置15，高度设置23%，宽度设置23%，图标大于设定宽度
 * menuTest_017:一级菜单用百分比验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置1，创建三个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置20，字数超过宽度，高度设置100%，宽度设置100%
 * menuTest_018:一级菜单用百分比验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置1，创建三个menuitem组件，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置15，高度设置50%，宽度设置100%
 * menuTest_019:一级菜单用百分比验证menu和menuitem对齐方式CustomBuilder，menu组件 字体 高宽不配置1，创建三个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置20，宽度设置20%，value大于设定宽度
 * menuTest_020:一级菜单MenuItemGroup和menuitem和menumenu，MenuItemGroup，字体和宽高不配置，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置30
 *
 * menuTest_021:一级菜单MenuItemGroup和menuitem和menumenu，MenuItemGroup，字体和宽高不配置，创建一个MenuItemGroup创建三个menuitem组件，左右侧设置图标，文本内容“菜单”，字体设置5
 * menuTest_022:一级菜单MenuItemGroup和menuitem和menumenu，MenuItemGroup，字体和宽高不配置，创建一个MenuItemGroup，创建三个menuitem组件，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置10
 * menuTest_023:一级菜单MenuItemGroup和menuitem和menumenu，MenuItemGroup，字体和宽高不配置，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置20，高设置50，宽设置100
 * menuTest_024:一级菜单MenuItemGroup和menuitem和menumenu，MenuItemGroup，字体和宽高不配置，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单菜单菜单菜单菜单菜单：内容超过组件宽度，三个menuitem组件字体设置20，高宽设设置，置100
 * menuTest_025:一级菜单MenuItemGroup和menuitem和menumenu，MenuItemGroup，字体和宽高不配置，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置30，高宽设置20
 * menuTest_026:一级菜单MenuItemGroup和menuitem和menumenu，MenuItemGroup，字体和宽高不配置，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置10，高宽设置20menuitem组件字体设置30，高宽设置20
 * menuTest_027:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单菜单菜单：三个menuitem组件字体设置30
 * menuTest_028:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup创建三个menuitem组件，左右侧设置图标，文本内容“菜单”，字体设置5
 * menuTest_029:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，创建三个menuitem组件，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置10
 * menuTest_030:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置20，高设置30，宽设置150
 *
 * menuTest_031:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置15，高设置30，宽设置150
 * menuTest_032:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单菜单菜单菜单菜单菜单：内容超过组件宽度，三个menuitem组件字体设置20，高设置30，宽设置150
 * menuTest_033:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置10，高宽设置20
 * menuTest_034:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置10，高宽设置20
 * menuTest_035:一级菜单menu宽度，不设置，MenuItemGroup高宽200，宽度设置200，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置10，高宽设置20
 * menuTest_036:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的startIcon配置string类型
 * menuTest_037:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的startIcon配置资源引用类型
 * menuTest_038:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的startIcon不配置
 * menuTest_040:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的startIcon配置null
 *
 * menuTest_041:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的startIcon配置undefined
 * menuTest_042:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的content配置string类型
 * menuTest_043:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的content配置资源引用类型
 * menuTest_045:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的content不配置
 * menuTest_046:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的content配置null
 * menuTest_047:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的content配置undefined
 * menuTest_048:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的endIcon配置string类型
 * menuTest_049:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的endIcon配置资源引用类型
 * menuTest_050:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的endIcon配置null
 *
 * menuTest_052:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的endIcon不配置
 * menuTest_053:MenuItem(value?: MenuItemOptions| CustomBuilder)配置CustomBuilder中的endIcon配置undefined
 * menuTest_054:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的labelInfo配置string类型
 * menuTest_055:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的labelInfo配置资源引用类型
 * menuTest_057:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的labelInfo不配置
 * menuTest_058:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的labelInfo配置配置null
 * menuTest_059:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的labelInfo配置undefined
 * menuTest_060:MenuItem(value?: MenuItemOptions| CustomBuilder)配置MenuItemOptions中的builder配置CustomBuilder，引用buidler创建二级菜单
 *
 * menuTest_061:MenuItem(value?: MenuItemOptions| CustomBuilder)配置CustomBuilder
 * menuTest_062:MenuItem(value?: MenuItemOptions| CustomBuilder)不配置
 * menuTest_063:MenuItem的属性selected设为true
 * menuTest_064:MenuItem的属性selected设为false
 * menuTest_065:MenuItem的属性selected不配置
 * menuTest_066:MenuItem的属性selected配置$$变量
 * menuTest_070:MenuItem的属性selectIcon不配置
 * menuTest_071:MenuItem的属性selectIcon设为true
 * menuTest_072:MenuItem的属性selectIcon设为false
 * menuTest_073:MenuItem的属性selectIcon设为ResourceStr
 * menuTest_074:MenuItem的属性selectIcon设为null
 * menuTest_075:MenuItem的属性selectIcon设为undefined
 * menuTest_077:MenuItem的属性contentFont中的size设为number类型-10fp
 * menuTest_078:MenuItem的属性contentFont中的size设为string 类型-10px
 * menuTest_079:MenuItem的属性contentFont中的size设为资源引用类型
 * menuTest_080:MenuItem的属性contentFont中的size设为百分比字符串
 * menuTest_081:MenuItem的属性contentFont中的size不设置
 * menuTest_083:MenuItem的属性contentFont中的size设为null
 * menuTest_084:MenuItem的属性contentFont中的size设为undefined
 * menuTest_085:MenuItem的属性contentFont中的weight为number类型100
 * menuTest_086:MenuItem的属性contentFont中的weight设为number类型900
 * menuTest_087:MenuItem的属性contentFont中的weight设为number类型200
 * menuTest_088:MenuItem的属性contentFont中的weight设为number类型800
 * menuTest_089:MenuItem的属性contentFont中的weight设为string类型100px
 * menuTest_090:MenuItem的属性contentFont中的weight设为FontWeight类型Normal
 * menuTest_091:MenuItem的属性contentFont中的weight设为FontWeight类型Regular
 * menuTest_092:MenuItem的属性contentFont中的weight设为FontWeight类型Medium
 * menuTest_093:MenuItem的属性contentFont中的weight设为FontWeight类型Bold
 * menuTest_094:MenuItem的属性contentFont中的weight设为FontWeight类型Bolder
 * menuTest_095:MenuItem的属性contentFont中的weight不设置
 * menuTest_097:MenuItem的属性contentFont中的weight设为null
 * menuTest_098:MenuItem的属性contentFont中的weight设为undefined
 * menuTest_099:MenuItem的属性contentFont中的family设为string类型'sans-serif'
 * menuTest_100:MenuItem的属性contentFont中的family设为资源引用类型
 * menuTest_102:MenuItem的属性contentFont中的family设为null类型'
 * menuTest_103:MenuItem的属性contentFont中的family不设置
 * menuTest_105:MenuItem的属性contentFont中的style设为Normal
 * menuTest_106:MenuItem的属性contentFont中的style设为Italic
 * menuTest_108:MenuItem的属性contentFont中的style不设置
 * menuTest_110:MenuItem的属性contentFontColor设为number类型0xffa500
 * menuTest_111:MenuItem的属性contentFontColor设为Color类型Blue
 * menuTest_112:MenuItem的属性contentFontColor设为string类型#ff000000'
 * menuTest_113:MenuItem的属性contentFontColor设为Resource引用蓝色
 * menuTest_114:MenuItem的属性contentFontColor不设置
 * menuTest_116:MenuItem的属性labelFont的size设为number类型10fp
 * menuTest_117:MenuItem的属性labelFont的size设为string类型10px
 * menuTest_118:MenuItem的属性labelFont的size设为配置资源引用类型
 * menuTest_119:MenuItem的属性labelFont的size设为百分比字符串
 * menuTest_120:MenuItem的属性labelFont的size设为16sp
 * menuTest_122:MenuItem的属性labelFont的weight设为number类型100
 * menuTest_123:MenuItem的属性labelFont的weight设为number类型900
 * menuTest_124:MenuItem的属性labelFont的weight设为number类型200
 * menuTest_125:MenuItem的属性labelFont的weight设为number类型800
 * menuTest_126:MenuItem的属性labelFont的weight不设置
 * menuTest_128:MenuItem的属性labelFont的weight配置string类型100
 * menuTest_129:MenuItem的属性labelFont的weight设为FontWeight类型Lighter
 * menuTest_130:MenuItem的属性labelFont的weight设为FontWeight类型Normal
 * menuTest_131:MenuItem的属性labelFont的weight设为FontWeight类型Regular
 * menuTest_132:MenuItem的属性labelFont的weight设为FontWeight类型Medium
 * menuTest_133:MenuItem的属性labelFont的weight设为FontWeight类型Bold
 * menuTest_134:MenuItem的属性labelFont的weight设为FontWeight类型Bolder
 * menuTest_135:MenuItem的属性labelFont的weight不设置
 * menuTest_136:MenuItem的属性labelFont的family设为string类型，'sans-serif'
 * menuTest_137:MenuItem的属性labelFont的family设为资源引用类型
 * menuTest_140:MenuItem的属性labelFont的family不设置
 * menuTest_141:MenuItem的属性labelFont的style设为Normal
 * menuTest_142:MenuItem的属性labelFont的style设为Italic
 * menuTest_144:MenuItem的属性labelFont的style不设置
 * menuTest_145:MenuItem的属性labelFont不设置
 
 * rectTest_146:MenuItem的属性labelFontColor设为number类型0xffa500
 * rectTest_147:MenuItem的属性labelFontColor设为Color类型Blue
 * rectTest_148:MenuItem的属性labelFontColor设为string类型'#ff000000'
 * rectTest_149:MenuItem的属性labelFontColor设为Resource引用蓝色
 * rectTest_150:MenuItem的属性labelFontColor不设置
 * rectTest_151:MenuItemGroup的value不设置
 * rectTest_152:MenuItemGroup的value中的header设为ResourceStr设为string
 * rectTest_153:MenuItemGroup的value中的header设为ResourceStr设为资源引用类型
 * rectTest_154:MenuItemGroup的value中的header设为CustomBuilder
 * rectTest_155:MenuItemGroup的value中的header不设置
 * rectTest_156:MenuItemGroup的value中的header设为null
 * rectTest_157:MenuItemGroup的value中的header设为整数1
 * rectTest_158:MenuItemGroup的value中的header设为undefined
 * rectTest_159:MenuItemGroup的value中的footer设为ResourceStr设为string
 * rectTest_160:MenuItemGroup的value中的footer设为ResourceStr设为资源引用类型
 * rectTest_161:MenuItemGroup的value中的footer设为CustomBuilder
 * rectTest_162:MenuItemGroup的value中的footer不设置
 * rectTest_163:MenuItemGroup的value中的footer设为null
 * rectTest_165:MenuItemGroup的value中的header（footer）设为undefined
 * rectTest_166:menu组件属性font中的size设为string类型10px
 * rectTest_167:menu组件属性font中的size设为number类型10fp
 * rectTest_168:menu组件font中的size设为资源引用类型
 * rectTest_170:menu组件的属性font中的size不设置
 * rectTest_171:menu组件的属性font中的weight设为number类型100
 * rectTest_172:menu组件的属性font中的weight设为number类型900
 * rectTest_173:menu组件的属性font中的weight设为number类型101
 * rectTest_174:menu组件的属性font中的weight设为number类型899
 * rectTest_175:menu组件的属性font中的weight设为string类型
 * rectTest_176:menu组件的属性font中的weight设为FontWeight类型Lighter
 * rectTest_177:menu组件的属性font中的weight设为FontWeight类型Normal
 * rectTest_178:menu组件的属性font中的weight设为FontWeight类型Regular
 * rectTest_179:menu组件的属性font中的weight设为FontWeight类型Medium
 * rectTest_180:menu组件的属性font中的weight设为FontWeight类型Bold
 * rectTest_181:menu组件的属性font中的weight设为FontWeight类型Bolder
 * rectTest_182:menu组件的属性font中的weight设为FontWeight不设置
 * rectTest_183:menu组件的属性font中的family设为string类型'sans-serif'
 * rectTest_184:menu组件的属性font中的family设为配置资源引用类型
 * rectTest_187:menu组件的属性font中的family不设置
 * rectTest_188:menu组件的属性font中的style设为Normal
 * rectTest_189:menu组件的属性font中的style设为Italic
 * rectTest_190:menu组件的属性font中的style设为null
 * rectTest_192:menu组件的属性font中的style不设置
 * rectTest_193:menu组件的属性font不设置
 * rectTest_194:menu组件的属性fontColor设为Color类型，Blue
 * rectTest_195:menu组件的属性fontColor设为number类型0xffa500
 * rectTest_196:menu组件的属性fontColor设为string类型'#ff000000'
 * rectTest_197:menu组件的属性fontColor设为Resource引用红色
 * rectTest_198:menu组件的属性fontColor不设置
 * rectTest_200:menu控制的属性bindMenu中的content中的CustomBuilder使用builder自定义建组件，组件内配置menu功能，实现多级菜单功能
 * rectTest_202:menu控制的属性bindMenu中的content中的MenuItem中的value配置“”空字符串
 * rectTest_204:menu控制的属性bindMenu中的content中的MenuItem中的value配置string的$r类型
 * rectTest_205:menu控制的属性bindMenu中的content中的MenuItem中的value配置String类型“menu”
 * rectTest_206:menu控制的属性bindMenu中的content中的MenuItem中的value配置string的$r类型，value文本数组数量为20
 * rectTest_207:menu控制的属性bindMenu中的content中的MenuItem中的value配置String类型“menussssssssssssssssssssssssssssssssssssssssss/n,”
 * rectTest_208:menu控制的属性bindMenu中的content中的MenuItem中的value配置空
 * rectTest_209:menu控制的属性bindMenu中的content中的MenuItem中的value配置特殊符号
 * rectTest_210:menu控制的属性bindMenu中的content中的MenuItem中不配置icon
 * rectTest_211:menu控制的属性bindMenu中的content中的MenuItem中配置icon路径图标路径app.media.icon
 * rectTest_212:menu控制的属性bindMenu中的content中的MenuItem中配置icon路径，$r资源类型，$r("app.media.icon"
 * rectTest_213:menu控制的属性bindMenu中的content中的MenuItem中的配置icon路径图标路径为空
 * rectTest_215:menu控制的属性bindMenu中的content中的MenuItem中配置icon路径图标路径app.media.icon，图片为超大图片
 * rectTest_216:menu控制的属性bindMenu中的content中的MenuItem中配置action相同菜单项
 * rectTest_217:menu控制的属性bindMenu中的content中的MenuItem中配置action不同菜单项
 * rectTest_219:menu控制的属性bindMenu中的options不配置
 * rectTest_220:menu控制的属性bindMenu中的options中title?: ResourceStr标题设置空字符串
 * rectTest_221:menu控制的属性bindMenu中的options中title?: ResourceStr标题不设置
 * rectTest_223:menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成‘1’
 * rectTest_224:menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成引用资源型
 * rectTest_225:menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成空格
 * rectTest_226:menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成null
 * rectTest_227:menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成超长，“menusssssssssssssssssssssssssssssss/nsssssssssss,”
 * rectTest_228:menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量不配置
 * rectTest_229:menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置{0, 0}
 * rectTest_230:menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置{10, 10}
 * rectTest_231:menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置{-10, -10}
 * rectTest_233:menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置string类型 '10px'
 * rectTest_234:menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置资源引用类型
 * rectTest_235:menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置百分比‘20%’
 * rectTest_236:menu控制的属性bindMenu中的options中placement?: Placement显示位置不设置
 * rectTest_237:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置空
 * rectTest_238:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置undefined
 * rectTest_239:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Left
 * rectTest_240:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Right
 * rectTest_241:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Top
 * rectTest_242:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Bottom
 * rectTest_243:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置TopLeft
 * rectTest_244:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置TopRight
 * rectTest_245:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置BottomLeft
 * rectTest_246:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置BottomRight
 * rectTest_247:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置LeftTop
 * rectTest_248:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置LeftBottom
 * rectTest_249:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置RightTop
 * rectTest_250:menu控制的属性bindMenu中的options中placement?: Placement显示位置设置RightBottom
 * rectTest_251:menu控制的属性bindMenu中的options中onAppear?: ()
 * rectTest_252:menu控制的属性bindMenu中的options中onDisappear?: (）点击其他区域
 * rectTest_253:menu控制的属性bindMenu中的options中配置空
 * rectTest_254:menu控制的属性bindContextMenu中的content不配置
 * rectTest_256:menu控制的属性bindContextMenu中的content，CustomBuilder，使用build或compent创建自定义组件
 * rectTest_258:menu控制的属性bindContextMenu中的responseType不配置
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function menuTest() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  describe('menuTest', function () {

    afterEach(async function (done) {
      if (Settings.windowClass == null) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await sleep(1000);
      done()
    })

     it('menuTest_001',0,async function (done){
       //调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，
       // 其中一个调用builder自定义组件，创建一个二级菜单，二级菜单包含4个菜单
       let config={
         uri:"testability/pages/menu/menuIndex",
       }
       Settings.createWindow(config.uri)
       await sleep(2000)
       let driver = Driver.create()
       let btn = await driver.findComponent(ON.id('click_menu'))
       await sleep(2000)
       await btn.click()
       windowSnap.snapShot(globalThis.context)
       await sleep(2000)

       done()
     })

    it('menuTest_002',0,async function (done){
      //调用menu组件，menu组件字体 高宽不配置，其他配置项：
      //1，创建三个menuitem组件，其中一个调用builder自定义组件，创建一个二级菜单
      //2，二级菜单创建多个菜单，超过屏幕
      let config={
        uri:"testability/pages/menu/menuIndex1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await sleep(1000)
      await btn.click()
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_003',0,async function (done){
      //调用menu组件，menu组件字体 高宽不配置，其他配置项：
      //1，创建三个menuitem组件，其中两个调用menuitem组件builder自定义组件，创建两个个二级菜单
      let config={
        uri:"testability/pages/menu/menuIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await sleep(1000)
      await btn.click()
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_004',0,async function (done){
      //调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，左右侧设置图标，value为菜单菜单菜单：三个menuitem组件字体设置30
      let config={
        uri:"testability/pages/menu/menuIndex3.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:30}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_005',0,async function (done){
      //调用menu组件，menu组件字体 高宽不配置，其他配置项：
      //创建三个menuitem组件，左右侧设置图标，文本内容“菜单”，字体设置10
      let config={
        uri:"testability/pages/menu/menuIndex3.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_006',0,async function (done){
      //调用menu组件，menu组件字体 高宽不配置，其他配置项：
      //创建三个menuitem组件，左右侧设置图标，文本内容“菜单”，三个menuitem组件字体设置30
      let config={
        uri:"testability/pages/menu/menuIndex3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:30}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_007',0,async function (done){
      //调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，文本内容“菜单”三个menuitem组件字体设置10
      let config={
        uri:"testability/pages/menu/menuIndex3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_008',0,async function (done){
      //，调用menu组件，menu组件字体 高宽不配置，其他配置项：创建三个menuitem组件，
      // 文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置10
      let config={
        uri:"testability/pages/menu/menuIndex3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_009',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置20，高度设置50，宽度设置200配置.border({width:1}
      let config={
        uri:"testability/pages/menu/menuIndex4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_010',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置20，字数超过宽度，高度设置50，宽度设置200配置.border({width:1}
      let config={
        uri:"testability/pages/menu/menuIndex4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_011',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单”三个menuitem组件字体设置15，高度设置50，宽度设置200配置.border({width:1}
      let config={
        uri:"testability/pages/menu/menuIndex4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:15}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_012',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单”三个menuitem组件字体设置15，高度设置23，宽度设置23，图标大于设定宽度
      let config={
        uri:"testability/pages/menu/menuIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:15}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_013',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单菜单”三个menuitem组件字体设置20，宽度设置40，value大于设定宽度
      let config={
        uri:"testability/pages/menu/menuIndex6",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_014',0,async function (done){
      //，调用menu组件 字体 高宽不配置，
      //1，创建一个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置20，宽度设置40，value大于设定宽度，配置.border({width:1})
      //2，创建一个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置30，宽度设置200，配置.border({width:1}
      //3，创建一个menuitem组件，左右侧设置图标，文本内容“菜单”三个menuitem组件字体设置15，宽度设置200，配置.border({width:1}
      //4，创建一个menuitem组件，左右侧设置图标，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单”字体设置15，宽度设置200，配置.border({width:1}
      let config={
        uri:"testability/pages/menu/menuIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_015',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单”三个menuitem组件字体设置20，高度设置100%，宽度设置100%
      let config={
        uri:"testability/pages/menu/menuIndex8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      globalThis.value.message.notify({
        name:"widthValue", widthValue:"100%"
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:"100%"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_016',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单”三个menuitem组件字体设置15，高度设置23%，宽度设置23%，图标大于设定宽度
      let config={
        uri:"testability/pages/menu/menuIndex8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:15}
      })
      globalThis.value.message.notify({
        name:"widthValue", widthValue:"23%"
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:"23%"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_017',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单”三个menuitem组件字体设置15，高度设置23%，宽度设置23%，图标大于设定宽度
      let config={
        uri:"testability/pages/menu/menuIndex8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      globalThis.value.message.notify({
        name:"widthValue", widthValue:"100%"
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:"100%"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_018',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置15，高度设置50%，宽度设置100%
      let config={
        uri:"testability/pages/menu/menuIndex8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:15}
      })
      globalThis.value.message.notify({
        name:"widthValue", widthValue:"100%"
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:"50%"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_019',0,async function (done){
      //，调用menu组件 字体 高宽不配置，创建三个menuitem组件，左右侧设置图标，
      // 文本内容“菜单”三个menuitem组件字体设置20，宽度设置20%，value大于设定宽度
      let config={
        uri:"testability/pages/menu/menuIndex8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      globalThis.value.message.notify({
        name:"widthValue", widthValue:"20%"
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:"20%"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_020',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置30
      let config={
        uri:"testability/pages/menu/menuIndex9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:30}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_021',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置52
      let config={
        uri:"testability/pages/menu/menuIndex9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:52}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_022',0,async function (done){
      //，创建一个MenuItemGroup，创建三个menuitem组件，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置10
      let config={
        uri:"testability/pages/menu/menuIndex9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_023',0,async function (done){
      //，创建一个MenuItemGroup，创建三个menuitem组件，value为菜单：三个menuitem组件字体设置20，高设置50，宽设置100
      let config={
        uri:"testability/pages/menu/menuIndex10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_024',0,async function (done){
      //，创建一个MenuItemGroup，创建三个menuitem组件，value为菜单菜单菜单菜单菜单菜单：内容超过组件宽度，三个menuitem组件字体设置20，高宽设设置，置100
      let config={
        uri:"testability/pages/menu/menuIndex10.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_025',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置30，高宽设置20
      let config={
        uri:"testability/pages/menu/menuIndex10.2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:30}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_026',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置10，高宽设置20
      let config={
        uri:"testability/pages/menu/menuIndex10.2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_027',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单菜单菜单：三个menuitem组件字体设置30
      let config={
        uri:"testability/pages/menu/menuIndex11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:30}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_028',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，文本内容“菜单”，字体设置5
      let config={
        uri:"testability/pages/menu/menuIndex11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:5}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_029',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，文本内容“菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单”三个menuitem组件字体设置10
      let config={
        uri:"testability/pages/menu/menuIndex11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_030',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置20，高设置30，宽设置150
      let config={
        uri:"testability/pages/menu/menuIndex12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_031',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：三个menuitem组件字体设置15，高设置30，宽设置150
      let config={
        uri:"testability/pages/menu/menuIndex12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:15}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_032',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单菜单菜单菜单菜单菜单：内容超过组件宽度，三个menuitem组件字体设置20，高设置30，宽设置150
      let config={
        uri:"testability/pages/menu/menuIndex12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单菜单菜单菜单菜单菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_033',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置10，高宽设置20
      let config={
        uri:"testability/pages/menu/menuIndex12.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_034',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置10，高宽设置20
      let config={
        uri:"testability/pages/menu/menuIndex12.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:10}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_035',0,async function (done){
      //，创建一个MenuItemGroup，里面创建三个menuitem组件，左右侧设置图标，value为菜单：内容超过组件宽度，三个menuitem组件字体设置20，高设置100，宽度设置300
      let config={
        uri:"testability/pages/menu/menuIndex12.2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      globalThis.value.message.notify({
        name:"contentFont", contentFont:{size:20}
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_036',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的startIcon配置为string类型
      let config={
        uri:"testability/pages/menu/menuIndex13",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"startIcon", startIcon:"/media/icon.png"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_037',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的startIcon配置为资源引用类型
      let config={
        uri:"testability/pages/menu/menuIndex13",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"startIcon", startIcon:$r("app.media.icon")
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_038',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的startIcon不配置
      let config={
        uri:"testability/pages/menu/menuIndex14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_040',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的startIcon配置为null
      let config={
        uri:"testability/pages/menu/menuIndex13.2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_041',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的startIcon配置为null
      let config={
        uri:"testability/pages/menu/menuIndex13.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_042',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的content配置为string类型
      let config={
        uri:"testability/pages/menu/menuIndex15",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:"菜单"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_043',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的content配置为资源引用类型
      let config={
        uri:"testability/pages/menu/menuIndex15",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"content", content:$r("app.string.menu_content_Test")
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_045',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的content不配置
      let config={
        uri:"testability/pages/menu/menuIndex16",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_046',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的content配置为null
      let config={
        uri:"testability/pages/menu/menuIndex15.2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_047',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的content配置为undefined
      let config={
        uri:"testability/pages/menu/menuIndex15.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_048',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions的endIcon配置为string类型
      let config={
        uri:"testability/pages/menu/menuIndex17",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"endIcon", endIcon:"/media/icon.png"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_049',0,async function (done){
      //，配置MenuItem，配置CustomBuilder中的MenuItemOptions为endIcon配置为资源引用类型
      let config={
        uri:"testability/pages/menu/menuIndex17",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"endIcon", endIcon:$r("app.media.icon")
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_050',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions中的endIcon配置为null
      let config={
        uri:"testability/pages/menu/menuIndex17.2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_052',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions中的endIcon不配置
      let config={
        uri:"testability/pages/menu/menuIndex14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_053',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions中的endIcon配置为undefined
      let config={
        uri:"testability/pages/menu/menuIndex17.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_054',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions中的labelInfo配置为string类型
      let config={
        uri:"testability/pages/menu/menuIndex18",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"labelInfo", labelInfo:"Ctrl+C"
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_055',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions中的labelInfo配置为资源引用类型
      let config={
        uri:"testability/pages/menu/menuIndex18",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"labelInfo", labelInfo:$r("app.string.menu_labelInfo_Test")
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_057',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions中的labelInfo不配置
      let config={
        uri:"testability/pages/menu/menuIndex14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_058',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions中的labelInfo配置null
      let config={
        uri:"testability/pages/menu/menuIndex18.2",
      }
      Settings.createWindow(config.uri)

      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_059',0,async function (done){
      //，配置MenuItem，配置MenuItemOptions为labelInfo配置undefined
      let config={
        uri:"testability/pages/menu/menuIndex18.1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_060',0,async function (done){
      //，配置MenuItem，配置CustomBuilder，引用buidler创建二级菜单
      let config={
        uri:"testability/pages/menu/menuIndex19",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await sleep(1000)
      await btn.click()
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_061',0,async function (done){
      //，配置MenuItem，配置CustomBuilder，引用buidler创建二级菜单
      let config={
        uri:"testability/pages/menu/menuIndex19",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await sleep(1000)
      await btn.click()
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_062',0,async function (done){
      //，配置MenuItem，对MenuItem不配置
      let config={
        uri:"testability/pages/menu/menuIndex20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_063',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/selected",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性selected设为 true
      globalThis.value.message.notify({
        name:"select", value:true
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_064',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/selected",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性selected设为 false
      globalThis.value.message.notify({
        name:"select", value:false
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_065',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noSelected",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selected 不配置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_066',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/selected1",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selected配置$$变量
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('test_menu'))
      await sleep(1000)
      await btn.click()
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_070',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noSelectIcon",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selectIcon不配置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_071',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/selectIcon",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selectIcon设为 true
      await sleep(1000)
      globalThis.value.message.notify({
        name:"selectIcon", value:true
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_072',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/selectIcon",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selectIcon设为 false
      await sleep(1000)
      globalThis.value.message.notify({
        name:"selectIcon", value:false
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_073',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/selectIcon1",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selectIcon设为ResourceStr
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_074',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/nullSelectIcon",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selectIcon设为 null
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_075',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/undefinedSelectIcon",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性selectIcon设为 undefined
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_077',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont1",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性contentFont中的size设为number类型-10fp
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_078',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont2",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性contentFont中的size设为string 类型-10px
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_079',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont3",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性contentFont中的size设为资源引用类型
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_080',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont4",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性contentFont中的size设为百分比字符串
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_081',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noContentFont",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性contentFont中的size不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_083',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont5",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性contentFont中的size设为null
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_084',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont6",
      }
      Settings.createWindow(config.uri)
      // MenuItem的属性contentFont中的size设为undefined
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_085',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight为number类型100
      globalThis.value.message.notify({
        name:"weight", value:100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_086',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight为number类型900
      globalThis.value.message.notify({
        name:"weight", value:900
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_087',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight为number类型200
      globalThis.value.message.notify({
        name:"weight", value:200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_088',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont14",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight为number类型800
      globalThis.value.message.notify({
        name:"weight", value:800
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_089',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为string类型100px
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_090',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为FontWeight类型 Normal
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Normal
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_091',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为FontWeight类型 Regular
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Regular
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_092',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为FontWeight类型 Medium
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Medium
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_093',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为FontWeight类型 Bold
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Bold
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_094',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为FontWeight类型 Bolder
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Bolder
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_095',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noContentFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_097',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为null
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_098',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的weight设为undefined
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_099',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的family设为string类型'sans-serif'
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_100',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的family设为资源引用类型
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_102',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/nullFamily",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的family设为null类型'
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_103',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noContentFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的family不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_105',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont13",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的style设为Normal
      globalThis.value.message.notify({
        name:"fontStyle", value: FontStyle.Normal
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_106',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFont13",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的style设为Italic
      globalThis.value.message.notify({
        name:"fontStyle", value: FontStyle.Italic
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_108',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noContentFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFont中的style不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_110',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFontColor1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFontColor设为number类型0xffa500
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_111',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFontColor2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFontColor设为Color类型Blue
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_112',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFontColor3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFontColor设为string类型#ff000000'
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_113',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/contentFontColor4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFontColor设为Resource引用蓝色
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_114',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noContentFontColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性contentFontColor不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_116',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的size设为number类型10fp
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_117',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的size设为string类型10px
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_118',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的size设为配置资源引用类型
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_119',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的size设为百分比字符串
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_120',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的size设为16sp
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_122',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为number类型100
      globalThis.value.message.notify({
        name:"weight", value: 100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_123',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为number类型900
      globalThis.value.message.notify({
        name:"weight", value: 900
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_124',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为number类型200
      globalThis.value.message.notify({
        name:"weight", value: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_125',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为number类型800
      globalThis.value.message.notify({
        name:"weight", value: 800
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_126',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noLabelFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_128',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont6",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight配置string类型100
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_129',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为FontWeight类型Lighter
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Lighter
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_130',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为FontWeight类型Normal
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Normal
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_131',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为FontWeight类型Regular
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Regular
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_132',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为FontWeight类型 Medium
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Medium
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_133',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为FontWeight类型 Bold
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Bold
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_134',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight设为FontWeight类型 Bolder
      globalThis.value.message.notify({
        name:"weight", value: FontWeight.Bolder
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_135',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noLabelFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的weight不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_136',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的family设为string类型，'sans-serif'
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_137',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的family设为资源引用类型
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_140',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noLabelFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的family不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_141',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的style设为 Normal
      globalThis.value.message.notify({
        name:"style", value: FontStyle.Normal
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_142',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/labelFont10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的style设为 Italic
      globalThis.value.message.notify({
        name:"style", value: FontStyle.Italic
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_144',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noLabelFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont的style不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_145',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/menu/noLabelFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // MenuItem的属性labelFont不设置
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('menuTest_146', 0, async function (done){
      // MenuItem的属性labelFontColor设为number类型0xffa500
      let config={
        uri:"testability/pages/menu/labelFontColorNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_147', 0, async function (done){
      // MenuItem的属性labelFontColor设为Color类型Blue
      let config={
        uri:"testability/pages/menu/labelFontColorCol",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_148', 0, async function (done){
      // MenuItem的属性labelFontColor设为string类型'#ff000000'
      let config={
        uri:"testability/pages/menu/labelFontColorStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_149', 0, async function (done){
      // MenuItem的属性labelFontColor设为Resource引用蓝色
      let config={
        uri:"testability/pages/menu/labelFontColorResCol",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_150', 0, async function (done){
      // MenuItem的属性labelFontColor不设置
      let config={
        uri:"testability/pages/menu/noLabelFontColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_151', 0, async function (done){
      // MenuItemGroup的value不设置
      let config={
        uri:"testability/pages/menu/noMenuItemGroup",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_152', 0, async function (done){
      // MenuItemGroup的value中的header设为ResourceStr设为string
      let config={
        uri:"testability/pages/menu/menuItemGroupHStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_153', 0, async function (done){
      // MenuItemGroup的value中的header设为ResourceStr设为资源引用类型
      let config={
        uri:"testability/pages/menu/menuItemGroupHResStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_154', 0, async function (done){
      // MenuItemGroup的value中的header设为CustomBuilder
      let config={
        uri:"testability/pages/menu/menuItemGroupHCusBld",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_155', 0, async function (done){
      // MenuItemGroup的value中的header不设置
      let config={
        uri:"testability/pages/menu/noMenuItemGroup",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_156', 0, async function (done){
      // MenuItemGroup的value中的header设为null
      let config={
        uri:"testability/pages/menu/menuItemGroupHNull",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_158', 0, async function (done){
      // MenuItemGroup的value中的header设为undefined
      let config={
        uri:"testability/pages/menu/menuItemGroupHUdf",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_159', 0, async function (done){
      // MenuItemGroup的value中的footer设为ResourceStr设为string
      let config={
        uri:"testability/pages/menu/menuItemGroupFStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_160', 0, async function (done){
      // MenuItemGroup的value中的footer设为ResourceStr设为资源引用类型
      let config={
        uri:"testability/pages/menu/menuItemGroupFResStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_161', 0, async function (done){
      // MenuItemGroup的value中的footer设为CustomBuilder
      let config={
        uri:"testability/pages/menu/menuItemGroupFCusBld",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_162', 0, async function (done){
      // MenuItemGroup的value中的footer不设置
      let config={
        uri:"testability/pages/menu/noMenuItemGroup",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_163', 0, async function (done){
      // MenuItemGroup的value中的footer设为null
      let config={
        uri:"testability/pages/menu/menuItemGroupFNull",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_165', 0, async function (done){
      // MenuItemGroup的value中的header设为undefined
      let config={
        uri:"testability/pages/menu/menuItemGroupFUdf",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_166', 0, async function (done){
      // menu组件属性font中的size设为string类型10px
      let config={
        uri:"testability/pages/menu/menuFontSizeStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_167', 0, async function (done){
      // menu组件属性font中的size设为number类型10fp
      let config={
        uri:"testability/pages/menu/menuFontSizeNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_168', 0, async function (done){
      // menu组件font中的size设为资源引用类型
      let config={
        uri:"testability/pages/menu/menuFontSizeRes",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_169', 0, async function (done){
      // menu组件属性font中的size设为百分比字符串
      let config={
        uri:"testability/pages/menu/menuFontSizePct",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_170', 0, async function (done){
      // menu组件的属性font中的size不设置
      let config={
        uri:"testability/pages/menu/noMenuFontSize",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_171', 0, async function (done){
      // menu组件的属性font中的weight设为number类型100
      let config={
        uri:"testability/pages/menu/menuFontWeightNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: 100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_172', 0, async function (done){
      // menu组件的属性font中的weight设为number类型900
      let config={
        uri:"testability/pages/menu/menuFontWeightNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: 900
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_173', 0, async function (done){
      // menu组件的属性font中的weight设为number类型101
      let config={
        uri:"testability/pages/menu/menuFontWeightNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: 101
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_174', 0, async function (done){
      // menu组件的属性font中的weight设为number类型899
      let config={
        uri:"testability/pages/menu/menuFontWeightNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: 899
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_175', 0, async function (done){
      // menu组件的属性font中的weight设为string类型
      let config={
        uri:"testability/pages/menu/menuFontWeightStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_176', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight类型Lighter
      let config={
        uri:"testability/pages/menu/menuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: FontWeight.Lighter
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_177', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight类型Normal
      let config={
        uri:"testability/pages/menu/menuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: FontWeight.Normal
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_178', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight类型Regular
      let config={
        uri:"testability/pages/menu/menuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: FontWeight.Regular
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_179', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight类型Medium
      let config={
        uri:"testability/pages/menu/menuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: FontWeight.Medium
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_180', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight类型Bold
      let config={
        uri:"testability/pages/menu/menuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: FontWeight.Bold
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_181', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight类型Bolder
      let config={
        uri:"testability/pages/menu/menuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "weight", value: FontWeight.Bolder
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_182', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight不设置
      let config={
        uri:"testability/pages/menu/noMenuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_183', 0, async function (done){
      // menu组件的属性font中的weight设为FontWeight不设置
      let config={
        uri:"testability/pages/menu/noMenuFontWeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_184', 0, async function (done){
      // menu组件的属性font中的family设为配置资源引用类型
      let config={
        uri:"testability/pages/menu/menuFontFamilyRes",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_187', 0, async function (done){
      // menu组件的属性font中的family不设置
      let config={
        uri:"testability/pages/menu/noMenuFontFamily",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_188', 0, async function (done){
      // menu组件的属性font中的style设为Normal
      let config={
        uri:"testability/pages/menu/menuFontStyle",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "style", value: FontStyle.Normal
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_189', 0, async function (done){
      // menu组件的属性font中的style设为Italic
      let config={
        uri:"testability/pages/menu/menuFontStyle",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "style", value: FontStyle.Italic
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_190', 0, async function (done){
      // menu组件的属性font中的style设为null
      let config={
        uri:"testability/pages/menu/menuFontStyleNull",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_192', 0, async function (done){
      // menu组件的属性font中的style不设置
      let config={
        uri:"testability/pages/menu/noMenuFontStyle",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_193', 0, async function (done){
      // menu组件的属性font不设置
      let config={
        uri:"testability/pages/menu/noMenuFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_194', 0, async function (done){
      // menu组件的属性fontColor设为Color类型，Blue
      let config={
        uri:"testability/pages/menu/menuFontColorCol",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_195', 0, async function (done){
      // menu组件的属性fontColor设为number类型0xffa500
      let config={
        uri:"testability/pages/menu/menuFontColorNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_196', 0, async function (done){
      // menu组件的属性fontColor设为string类型'#ff000000'
      let config={
        uri:"testability/pages/menu/menuFontColorStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_197', 0, async function (done){
      // menu组件的属性fontColor设为Resource引用红色
      let config={
        uri:"testability/pages/menu/menuFontColorRes",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_198', 0, async function (done){
      // menu组件的属性fontColor不设置
      let config={
        uri:"testability/pages/menu/noMenuFont",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_200', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的CustomBuilder使用builder自定义建组件，组件内配置menu功能，实现多级菜单功能
      let config = {
        uri: "testability/pages/menu/menuSecondaryMenu",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_202', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中的value配置“”空字符串
      let config = {
        uri: "testability/pages/menu/bindMenuEmpty",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_204', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中的value配置string的$r类型
      let config = {
        uri: "testability/pages/menu/bindMenuResStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_205', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中的value配置String类型“menu”
      let config = {
        uri: "testability/pages/menu/bindMenuStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_206', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中的value配置string的$r类型，value文本数组数量为20
      let config = {
        uri: "testability/pages/menu/bindMenuResStr20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_207', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中的value配置String类型“menussssssssssssssssssssssssssssssssssssssssss/n,”
      let config = {
        uri: "testability/pages/menu/bindMenuLongStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_208', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中的value配置空
      let config = {
        uri: "testability/pages/menu/bindMenuNull",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_210', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中不配置icon
      let config = {
        uri: "testability/pages/menu/bindMenuStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_211', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中配置icon路径图标路径app.media.icon
      let config = {
        uri: "testability/pages/menu/bindMenuIcon",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "startIcon", value: "/media/icon.png"
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_212', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中配置icon路径，$r资源类型，$r("app.media.icon")
      let config = {
        uri: "testability/pages/menu/bindMenuResIcon",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_213', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中的配置icon路径图标路径为空
      let config = {
        uri: "testability/pages/menu/bindMenuNullIcon",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_215', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中配置icon路径图标路径app.media.icon，图片为超大图片
      let config = {
        uri: "testability/pages/menu/bindMenuBigIcon",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_216', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中配置action相同菜单项
      let config = {
        uri: "testability/pages/menu/bindMenuSameAction",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_217', 0, async function (done) {
      // menu控制的属性bindMenu中的content中的MenuItem中配置action不同菜单项
      let config = {
        uri: "testability/pages/menu/bindMenuDiffAction",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_219', 0, async function (done) {
      // menu控制的属性bindMenu中的options不配置
      let config = {
        uri: "testability/pages/menu/bindMenuNoOptions",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_220', 0, async function (done) {
      // menu控制的属性bindMenu中的options中title?: ResourceStr标题设置空字符串
      let config = {
        uri: "testability/pages/menu/bindMenuTitleNullStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_221', 0, async function (done) {
      // menu控制的属性bindMenu中的options中title?: ResourceStr标题不设置
      let config = {
        uri: "testability/pages/menu/bindMenuNoTitle",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_223', 0, async function (done) {
      // menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成‘1’
      let config = {
        uri: "testability/pages/menu/bindMenuTitleStr1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_224', 0, async function (done) {
      // menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成引用资源型
      let config = {
        uri: "testability/pages/menu/bindMenuTitleResStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_225', 0, async function (done) {
      // menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成空格
      let config = {
        uri: "testability/pages/menu/bindMenuTitleSpace",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_226', 0, async function (done) {
      // menu控制的属性bindMenu中的options中title?: ResourceStr标题设置成null
      let config = {
        uri: "testability/pages/menu/bindMenuTitleNull",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_227', 0, async function (done) {
      // menu控制的属性bindMenu中的options中title?:
      // ResourceStr标题设置成超长，“menusssssssssssssssssssssssssssssss/nsssssssssss,”
      let config = {
        uri: "testability/pages/menu/bindMenuTitleLongStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_228', 0, async function (done) {
      // menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量不配置
      let config = {
        uri: "testability/pages/menu/bindMenuNoTitle",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_229', 0, async function (done) {
      // menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置{0, 0}
      let config = {
        uri: "testability/pages/menu/bindMenuOffsetNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_230', 0, async function (done) {
      // menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置{10, 10}
      let config = {
        uri: "testability/pages/menu/bindMenuOffsetNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "offset", value: {x: 10, y: 10}
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_231', 0, async function (done) {
      // menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置{-10, -10}
      let config = {
        uri: "testability/pages/menu/bindMenuOffsetNum",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "offset", value: {x: -10, y: -10}
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_233', 0, async function (done) {
      // menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置string类型 '10px'
      let config = {
        uri: "testability/pages/menu/bindMenuOffsetStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_234', 0, async function (done) {
      // menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置资源引用类型
      let config = {
        uri: "testability/pages/menu/bindMenuOffsetResStr",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_235', 0, async function (done) {
      // menu控制的属性bindMenu中的options中offset?: Position菜单弹出位置的偏移量配置百分比‘20%’
      let config = {
        uri: "testability/pages/menu/bindMenuOffsetPct",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_236', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置不设置
      let config = {
        uri: "testability/pages/menu/bindMenuNoTitle",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_237', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置空
      let config = {
        uri: "testability/pages/menu/bindMenuPlacementNull",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_238', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置undefined
      let config = {
        uri: "testability/pages/menu/bindMenuPlacementUdf",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_239', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Left
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.Left
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_240', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Right
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.Right
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_241', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Top
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.Top
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_242', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置Bottom
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.Bottom
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_243', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置TopLeft
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.TopLeft
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_244', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置TopRight
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.TopRight
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_245', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置BottomLeft
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.BottomLeft
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_246', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置BottomRight
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.BottomRight
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_247', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置LeftTop
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.LeftTop
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_248', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置LeftBottom
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.LeftBottom
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_249', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置RightTop
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.RightTop
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_250', 0, async function (done) {
      // menu控制的属性bindMenu中的options中placement?: Placement显示位置设置RightBottom
      let config = {
        uri: "testability/pages/menu/bindMenuPlacement",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "placement", value: Placement.RightBottom
      })
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_251', 0, async function (done) {
      // menu控制的属性bindMenu中的options中onAppear?: ()
      let config = {
        uri: "testability/pages/menu/bindMenuOnAppear",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_252', 0, async function (done) {
      // menu控制的属性bindMenu中的options中onDisappear?: ()
      let config = {
        uri: "testability/pages/menu/bindMenuOnDisappear",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      let btn2 = await driver.findComponent(ON.id('click_menu2'))
      await btn2.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('menuTest_253', 0, async function (done) {
      // menu控制的属性bindMenu中的options中配置空
      let config = {
        uri: "testability/pages/menu/bindMenuNoOptions",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let driver = Driver.create()
      let btn = await driver.findComponent(ON.id('click_menu'))
      await btn.click()
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })
  })
}