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
 */s
// @ts-nocheck
import window from '@ohos.window';
import Logger from './Logger';
import image from '@ohos.multimedia.image';
import mediaLibrary from '@ohos.multimedia.mediaLibrary';
import fs from '@ohos.file.fs';
import DateTimeUtil from  './DateTimeUtil';

const TAG: string = '[windowSnap]';
const INFO = {
    "img": {
        prefix: 'IMG_',
        suffix: '.webp',
        directory: mediaLibrary.DirectoryType.DIR_IMAGE,
        mediaType: mediaLibrary.MediaType.IMAGE
    },
    "txt": {
        prefix: 'TXT_',
        suffix: '.txt',
        directory: mediaLibrary.DirectoryType.DIR_DOCUMENTS,
        mediaType: mediaLibrary.MediaType.FILE
    }
}
/*
 * 文件名为时间戳格式:
 * let dateTimeUtil=new DateTimeUtil()
 * let name=`${dateTimeUtil.getDate()}_${dateTimeUtil.getTime()}`
 * 文件名固定，用于自动化UI对比
 * let name = "test"
 * */
class windowSnap {
    async createAndGetFile(context: any, type) {
        Logger.info(TAG, `createAndGetFile start`)
        let mediaTest = mediaLibrary.getMediaLibrary(context)
        let info = INFO[type]
        // 修改文件名
        let name = "test"
        let displayName = `${info.prefix}${name}${info.suffix}`
        let option = {
            selections: mediaLibrary.FileKey.DISPLAY_NAME + '=?',
            selectionArgs: [displayName],
        }
        let fetchFileResult = await mediaTest.getFileAssets(option);
        if (fetchFileResult.getCount()) {
            let asset = await fetchFileResult.getFirstObject();
            await mediaTest.deleteAsset(asset.uri)
        }
        let publicPath = await mediaTest.getPublicDirectory(info.directory)
        Logger.info(TAG, `publicPath=${publicPath},displayName=${displayName}`)
        return await mediaTest.createAsset(info.mediaType, displayName, publicPath)
    }

    async savePicture(data: image.PixelMap, context: any) {
        let packOpts: image.PackingOption = {
            format: "image/webp", quality: 100
        }
        let imagePackerApi = image.createImagePacker()
        let arrayBuffer = await imagePackerApi.packing(data, packOpts)
        let fileAsset = await this.createAndGetFile(context, "img")
        let fd = await fileAsset.open('Rw')
        imagePackerApi.release()
        try {
            await fs.write(fd, arrayBuffer)
        } catch (err) {
            Logger.error(TAG, `write failed ,code is ${err.code},message is ${err.message}`)
        }
        await fileAsset.close(fd)
        Logger.info(TAG, `write picture done`)
    }

    async saveTXT(data, context) {
        let fileAsset = await this.createAndGetFile(context, "txt")
        let fd = await fileAsset.open('Rw')
        try {
            await fs.write(fd, data)
        } catch (err) {
            Logger.error(TAG, `write failed ,code is ${err.code},message is ${err.message}`)
        }
        await fileAsset.close(fd)
        Logger.info(TAG, `write txt done`)
    }


    /*
     * 获取窗口结合&文件保存
     * 入参必填 ability的context

     * snapShot
     * savePicture：设备端保存路径：/storage/media/100/local/files/Pictures/IMG_test.webp
     * saveTXT：设备端保存路径：/storage/media/100/local/files/Documents/TXT_test.txt
     *
     * const readBuffer = new ArrayBuffer(data.getPixelBytesNumber())
     * //保存成像素值
     * data.readPixelsToBuffer(readBuffer, () => { this.saveTXT(readBuffer, context)})
     *
     **/
    async snapShot(context) {
        //获取窗口
        Logger.info(TAG, 'start snapshot')
        let windowClass = null;
        try {
            windowClass = window.findWindow('floatWindow');
            Logger.info(TAG, 'find window success')
        } catch (exception) {
            Logger.error(TAG, 'Failed to find the window. Cause:' + JSON.stringify(exception))
        }
        //截屏
        windowClass.snapshot((err, data) => {
            if (err.code) {
                console.error(TAG, 'Failed to snapshot  window. Cause:' + JSON.stringify(err));
                return;
            }

            this.savePicture(data, context)

            data.release();
        });
    }
}

export default new windowSnap()