/*
 * Copyright (c) 2023 Hunan OpenValley Digital Industry Development Co., Ltd.
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

import camera from '@ohos.multimedia.camera';
import images from '@ohos.multimedia.image';
import emitter from '@ohos.events.emitter';
import worker from '@ohos.worker';
import Logger from '../utils/Logger';

const FOUR = 4; // format
const EIGHT = 8; // capacity
const FOUR_THOUSAND_AND_SIXTY_NINE = 4096; // buffer大小
const cameraWH = {
  width: 480,
  height: 640
};
const TAG = '[CameraModel]';

export default class CameraService {
  private context: any = undefined
  private cameraMgr: camera.CameraManager = undefined;
  private camerasArray: Array<camera.CameraDevice> = undefined;
  private cameraInput: camera.CameraInput = undefined;
  private previewOutput: camera.PreviewOutput = undefined;
  private photoOutPut: camera.PhotoOutput = undefined;
  private capSession: camera.CaptureSession = undefined;
  private videoOutput: camera.VideoOutput = undefined;
  private capability: camera.CameraOutputCapability = undefined;
  private receiver: images.ImageReceiver = undefined;
  private pixelMap: images.PixelMap = undefined;
  private idInterval: number = -1;
  private deCodeWorker: worker.ThreadWorker;

  constructor(context) {
    this.context = context;
    this.receiver = images.createImageReceiver(
      cameraWH.width,
      cameraWH.height,
      FOUR,
      EIGHT
    );
    Logger.info(TAG, 'createImageReceiver');
    this.receiver.on('imageArrival', () => {
      Logger.info(TAG, 'imageArrival');
      this.receiver.readNextImage((err, image) => {
        Logger.info(TAG, 'readNextImage image:' + JSON.stringify(image.size));
        if (err || image === undefined) {
          Logger.error(TAG, 'failed to get valid image');
          return;
        }
        image.getComponent(FOUR, async (errMsg, img) => {
          Logger.info(TAG, 'getComponent');
          Logger.info(TAG, 'img.byteBuffer ' + img.byteBuffer.byteLength);
          if (errMsg || img === undefined) {
            Logger.info(TAG, 'failed to get valid buffer');
            return;
          }
          let buffer = new ArrayBuffer(FOUR_THOUSAND_AND_SIXTY_NINE);
          if (img.byteBuffer) {
            buffer = img.byteBuffer;
            Logger.info(TAG, 'buffer==' + buffer.byteLength);
            let imageSourceApi = images.createImageSource(buffer);
            this.pixelMap = await imageSourceApi.createPixelMap();
            let imageInfo = await this.pixelMap.getImageInfo();
            let w = imageInfo.size.width;
            let h = imageInfo.size.height;
            Logger.info(TAG, 'imageInfo==w==' + w);
            Logger.info(TAG, 'imageInfo==h==' + h);
            Logger.info(TAG, 'imageInfo.density==h==' + imageInfo.density);
            this.deCodeWorker.postMessage({
              'w': w,
              'h': h,
              'buffer': buffer
            }, [buffer]);
            let _this = this;
            this.deCodeWorker.onmessage = async function (message): Promise<void> {
              let text: string = message.data.text;
              Logger.info(TAG, 'workerInstance=====text==' + text);
              if (text !== '') {
                let eventDataText = {
                  data: {
                    'text': text
                  }
                };
                let innerEventText = {
                  eventId: 1,
                  priority: emitter.EventPriority.IMMEDIATE
                };
                Logger.info(TAG, 'emit=====before');
                emitter.emit(innerEventText, eventDataText);
                Logger.info(TAG, 'emit=====after');
              } else {
                Logger.info(TAG, 'else =====takePicture');
                _this.takePicture();
              }
            }
          } else {
            Logger.error(TAG, 'img.byteBuffer is undefined');
          }
          image.release();
        });
      });
    });
  }

  /**
   * 初始化相机
   * @param surfaceId
   */
  async initCamera(surfaceId: string): Promise<void> {
    Logger.info(TAG, `initCamera surfaceId:${surfaceId}`);
    await this.cameraRelease();
    Logger.info(TAG, `initCamera this.cameraRelease surfaceId:${surfaceId}`);
    this.deCodeWorker = new worker.ThreadWorker('entry/ets/workers/DeCodeWorker.ts');
    Logger.info(TAG, 'getCameraManager begin');
    try {
      Logger.info(TAG, 'getCameraManager try begin');
      this.cameraMgr = camera.getCameraManager(this.context);
      Logger.info(TAG, 'getCameraManager try end');
    } catch (e) {
      Logger.info(TAG, `getCameraManager catch e:${JSON.stringify(e)}`);
      Logger.info(TAG, `getCameraManager catch code:${JSON.stringify(e.code)}`);
      Logger.info(TAG, `getCameraManager catch message:${JSON.stringify(e.message)}`);
    }
    Logger.info(TAG, 'getCameraManager end');
    Logger.info(TAG, `getCameraManager ${JSON.stringify(this.cameraMgr)}`);
    this.camerasArray = this.cameraMgr.getSupportedCameras();
    Logger.info(TAG, `get cameras ${this.camerasArray.length}`);
    if (this.camerasArray.length === 0) {
      Logger.info(TAG, 'cannot get cameras');
      return;
    }

    let mCamera = this.camerasArray[0];
    this.cameraInput = this.cameraMgr.createCameraInput(mCamera);
    this.cameraInput.open();
    Logger.info(TAG, 'createCameraInput');
    this.capability = this.cameraMgr.getSupportedOutputCapability(mCamera);
    let previewProfile = this.capability.previewProfiles[0];
    this.previewOutput = this.cameraMgr.createPreviewOutput(
      previewProfile,
      surfaceId
    );

    Logger.info(TAG, 'createPreviewOutput');
    let rSurfaceId = await this.receiver.getReceivingSurfaceId();
    let photoProfile = this.capability.photoProfiles[0];
    this.photoOutPut = this.cameraMgr.createPhotoOutput(
      photoProfile,
      rSurfaceId
    );

    this.capSession = this.cameraMgr.createCaptureSession();
    Logger.info(TAG, 'createCaptureSession');
    this.capSession.beginConfig();
    Logger.info(TAG, 'beginConfig');
    this.capSession.addInput(this.cameraInput);
    this.capSession.addOutput(this.previewOutput);
    this.capSession.addOutput(this.photoOutPut);
    await this.capSession.commitConfig();
    await this.capSession.start();
    Logger.info(TAG, 'captureSession start');
    this.takePicture();
  }

  /**
   * 拍照
   */
  async takePicture() {
    Logger.info(TAG, 'takePicture');
    let photoSettings = {
      rotation: 0,
      quality: camera.QualityLevel.QUALITY_LEVEL_MEDIUM,
      location: {
        // 位置信息，经纬度
        latitude: 12.9698,
        longitude: 77.75,
        altitude: 1000
      },
      mirror: false,
    };
    try {
      this.photoOutPut.capture(photoSettings);
    } catch (e) {
      Logger.error(TAG, 'takePicture err:' + e);
    }
    Logger.info(TAG, 'takePicture done');
  }

  /**
   * 资源释放
   */
  async cameraRelease(): Promise<void> {
    Logger.info(TAG, 'releaseCamera');
    if (this.deCodeWorker) {
      this.deCodeWorker.terminate();
      this.deCodeWorker = undefined;
      Logger.info(TAG, 'this.deCodeWorker.terminate===');
    }
    if (this.idInterval !== -1) {
      Logger.info(TAG, 'clearInterval idInterval');
      clearInterval(this.idInterval);
      this.idInterval = -1;
    }
    if (this.cameraInput) {
      await this.cameraInput.close();
      this.cameraInput = undefined;
    }
    if (this.previewOutput) {
      await this.previewOutput.release();
      this.previewOutput = undefined;
    }
    if (this.photoOutPut) {
      await this.photoOutPut.release();
      this.photoOutPut = undefined;
    }
    if (this.videoOutput) {
      await this.videoOutput.release();
      this.videoOutput = undefined;
    }
    if (this.capSession) {
      await this.capSession.release();
      this.capSession = undefined;
    }
  }
}

