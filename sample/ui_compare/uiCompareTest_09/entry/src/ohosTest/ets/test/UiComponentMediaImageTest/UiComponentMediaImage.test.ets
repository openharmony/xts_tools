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

import { describe, it, expect, beforeEach, afterEach } from '@ohos/hypium';
import { Driver, ON } from '@ohos.UiTest';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';

export default function UiComponentMediaImageTest() {
  describe('UiComponentMediaImageTest', () => {
    let driver: Driver = Driver.create();

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0010
     * @tc.name: ImageArktscard0010
     * @tc.desc: ArkTS卡片中Image组件使用媒体框架能力
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0010', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0010 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageArktscard0010');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_arktscard'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0011
     * @tc.name: ImageArktscard0011
     * @tc.desc: ArkTS卡片中Image组件传入base64格式图片
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0011', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0011 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageArktscard0011');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_base64_card'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0013
     * @tc.name: ImageArktscard0013
     * @tc.desc: 深浅模式切换后Image组件显示测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0013', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ARKTSCARD_0013 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageArktscard0013');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_mode_switch'));
      expect(img !== null).assertTrue();
      let btn = await driver.findComponent(ON.id('btn_toggle_mode'));
      if (btn) {
        await btn.click();
        await driver.delayMs(500);
      }
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_BASE64_0010
     * @tc.name: ImageBase640010
     * @tc.desc: Base64字符串引入GIF图片测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_BASE64_0010', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_BASE64_0010 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageBase640010');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_base64_gif'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_FOREGROUND_0010
     * @tc.name: ImageForeground0010
     * @tc.desc: 前景图大于背景图测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_FOREGROUND_0010', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_FOREGROUND_0010 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageForeground0010');
      await driver.delayMs(1000);
      let bg = await driver.findComponent(ON.id('background_img'));
      expect(bg !== null).assertTrue();
      let fg = await driver.findComponent(ON.id('foreground_img'));
      expect(fg !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_GIF_0011
     * @tc.name: ImageGif0011
     * @tc.desc: 多张动图列表快速滑动测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_GIF_0011', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_GIF_0011 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageGif0011');
      await driver.delayMs(1000);
      let list = await driver.findComponent(ON.id('gif_list'));
      expect(list !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_INTERFACE_0720
     * @tc.name: ImageInterface0720
     * @tc.desc: 相对路径引用图片跨包跨模块验证
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_INTERFACE_0720', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_INTERFACE_0720 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageInterface0720');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('cross_module_image'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_OBJECTFIT_ALIGN_0035
     * @tc.name: ImageObjectfitAlign0035
     * @tc.desc: ObjectFit Align类型横竖屏切换测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_OBJECTFIT_ALIGN_0035', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_OBJECTFIT_ALIGN_0035 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageObjectfitAlign0035');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_objectfit'));
      expect(img !== null).assertTrue();
      let btn = await driver.findComponent(ON.id('btn_contain'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0011
     * @tc.name: ImageOnerror0011
     * @tc.desc: 网络图片下载成功但size<=0触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0011', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0011 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0011');
      await driver.delayMs(1500);
      let img = await driver.findComponent(ON.id('image_network_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0012
     * @tc.name: ImageOnerror0012
     * @tc.desc: $r(app.media.xxxxxx)错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0012', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0012 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0012');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_resource_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0013
     * @tc.name: ImageOnerror0013
     * @tc.desc: Base64字符串错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0013', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0013 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0013');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_base64_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0014
     * @tc.name: ImageOnerror0014
     * @tc.desc: PixelMap/DrawableDescriptor对象错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0014', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0014 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0014');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_pixelmap_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0015
     * @tc.name: ImageOnerror0015
     * @tc.desc: 沙箱路径错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0015', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0015 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0015');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_sandbox_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0016
     * @tc.name: ImageOnerror0016
     * @tc.desc: 相对路径错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0016', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0016 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0016');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_relative_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0017
     * @tc.name: ImageOnerror0017
     * @tc.desc: 媒体库原图错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0017', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0017 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0017');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_media_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0018
     * @tc.name: ImageOnerror0018
     * @tc.desc: 媒体库缩略图错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0018', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0018 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0018');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_thumbnail_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0019
     * @tc.name: ImageOnerror0019
     * @tc.desc: 共享内存错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0019', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0019 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0019');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_memory_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0020
     * @tc.name: ImageOnerror0020
     * @tc.desc: ASTC文件错误触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0020', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0020 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0020');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_astc_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0021
     * @tc.name: ImageOnerror0021
     * @tc.desc: 非矢量图解码失败触发OnError
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0021', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_ONERROR_0021 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOnerror0021');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_decode_error'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_OPACITY_0011
     * @tc.name: ImageOpacity0011
     * @tc.desc: Opacity属性异常值测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_OPACITY_0011', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_OPACITY_0011 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageOpacity0011');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_opacity'));
      expect(img !== null).assertTrue();
      let btn = await driver.findComponent(ON.id('btn_neg1'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SRC_0010
     * @tc.name: ImageSrc0010
     * @tc.desc: 网络图片缓存测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SRC_0010', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SRC_0010 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSrc0010');
      await driver.delayMs(1500);
      let img = await driver.findComponent(ON.id('image_network_cache'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0014
     * @tc.name: ImageSvgNew0014
     * @tc.desc: SVG动画标签测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0014', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0014 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0014');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_animate'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0018
     * @tc.name: ImageSvgNew0018
     * @tc.desc: SVG objectFit测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0018', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0018 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0018');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_objectfit'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0019
     * @tc.name: ImageSvgNew0019
     * @tc.desc: SVG objectRepeat测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0019', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0019 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0019');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_objectrepeat'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0020
     * @tc.name: ImageSvgNew0020
     * @tc.desc: SVG colorFilter测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0020', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0020 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0020');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_colorfilter'));
      expect(img !== null).assertTrue();
      let btn = await driver.findComponent(ON.id('btn_toggle_filter'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0021
     * @tc.name: ImageSvgNew0021
     * @tc.desc: SVG obscured测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0021', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0021 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0021');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_obscured'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0022
     * @tc.name: ImageSvgNew0022
     * @tc.desc: SVG padding测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0022', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0022 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0022');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_padding'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0023
     * @tc.name: ImageSvgNew0023
     * @tc.desc: SVG fillColor测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0023', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0023 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0023');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_fillcolor'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0024
     * @tc.name: ImageSvgNew0024
     * @tc.desc: SVG draggable测试
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0024', 0, async (done: Function) => {
      Logger.info('SUB_ACE_UI_COMPONENT_MEDIA_IMAGE_SVG_NEW_0024 start');
      await Settings.createWindow('testability/pages/UiComponentMediaImage/ImageSvgNew0024');
      await driver.delayMs(1000);
      let img = await driver.findComponent(ON.id('image_svg_draggable'));
      expect(img !== null).assertTrue();
      await windowSnap.snapShot();
      await driver.delayMs(500);
      done();
    });
  });
}

