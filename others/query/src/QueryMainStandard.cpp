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
 */
#include <stdio.h>
#include <stdlib.h>
#include <securec.h>
#include <string.h>

#include "parameter.h"
#include "devattest_client.h"

const int UDIDSIZE_LEN = 64;

using namespace OHOS::DevAttest;
using namespace OHOS;

void ObtainProductParms(void)
{
    const char *bootloaderVersion = GetBootloaderVersion();
    if (bootloaderVersion != nullptr) {
        printf("bootloaderVersion = %s\n", bootloaderVersion);
    }

    const char *securityPatchTag = GetSecurityPatchTag();
    if (securityPatchTag != nullptr) {
        printf("Security Patch = %s\n", securityPatchTag);
    }

    const char *abiList = GetAbiList();
    if (abiList != nullptr) {
        printf("AbiList = %s\n", abiList);
    }

    int sdkApiVersion = GetSdkApiVersion();
    if (sdkApiVersion != 0) {
        printf("SdkApiVersion = %d\n", sdkApiVersion);
    }

    int firstApiVersion = GetFirstApiVersion();
    if (firstApiVersion != 0) {
        printf("firstApiVersion = %d\n", firstApiVersion);
    }

    const char *incrementalVersion = GetIncrementalVersion();
    if (incrementalVersion != nullptr) {
        printf("incrementalVersion = %s\n", incrementalVersion);
    }

    const char *versionId = GetVersionId();
    if (versionId != nullptr) {
        printf("VersionID = %s\n", versionId);
    }

    const char *buildType = GetBuildType();
    if (buildType != nullptr) {
        printf("buildType = %s\n", buildType);
    }

    const char *buildUser = GetBuildUser();
    if (buildUser != nullptr) {
        printf("buildUser = %s\n", buildUser);
    }

    const char *buildHost = GetBuildHost();
    if (buildHost != nullptr) {
        printf("buildHost = %s\n", buildHost);
    }

    const char *buildTime = GetBuildTime();
    if (buildTime != nullptr) {
        printf("buildTime = %s\n", buildTime);
    }

    const char *buildRootHash = GetBuildRootHash();
    if (buildRootHash != nullptr) {
        printf("BuildRootHash = %s\n", buildRootHash);
    }	

    char udid[UDIDSIZE_LEN + 1] = { 0 };
    int ret = GetDevUdid(udid, UDIDSIZE_LEN + 1);
    if (ret == 0) {
        printf("DevUdid = %s\n", udid);
    }

    AttestResultInfo attestResultInfo;
    (void)DelayedSingleton<DevAttestClient>::GetInstance()->GetAttestStatus(attestResultInfo);
    //能读到结果 将结果打印
    printf("authResult = %d\n",attestResultInfo.authResult_);
    printf("softwareResult = %d\n",attestResultInfo.softwareResult_);
    for (int i = 0; i < 5; i++) {
        printf("softwareResultDetail[%d] = %d\n",
            i, attestResultInfo.softwareResultDetail_[i]);
    }
}

int main()
{
    printf("******To Obtain Product Params Start******\n");
    const char *productType = GetDeviceType();
    if (productType != nullptr) {
        printf("Device Type = %s\n", productType);
    }

    const char *manuFacture = GetManufacture();
    if (manuFacture != nullptr) {
        printf("manuFacture = %s\n", manuFacture);
    }

    const char *brand = GetBrand();
    if (brand != nullptr) {
        printf("brand = %s\n", brand);
    }

    const char *marketName = GetMarketName();
    if (marketName != nullptr) {
        printf("marketName = %s\n", marketName);
    }

    const char *productSeries = GetProductSeries();
    if (productSeries != nullptr) {
        printf("productSeries = %s\n", productSeries);
    }

    const char *softwareModel = GetSoftwareModel();
    if (softwareModel != nullptr) {
        printf("softwareModel = %s\n", softwareModel);
    }

    const char *productModel = GetProductModel();
    if (productModel != nullptr) {
        printf("productModel = %s\n", productModel);
    }

    const char *hardWareModel = GetHardwareModel();
    if (hardWareModel != nullptr) {
        printf("HardwareModel = %s\n", hardWareModel);
    }

    const char *hardWareProfile = GetHardwareProfile();
    if (hardWareProfile != nullptr) {
        printf("HardwareProfile = %s\n", hardWareProfile);
    }

    const char *serial = GetSerial();
    if (serial != nullptr) {
        printf("serial = %s\n", serial);
    }

    const char *osName = GetOSFullName();
    if (osName != nullptr) {
        printf("OsFullName = %s\n", osName);
    }

    const char *displayVersion = GetDisplayVersion();
    if (displayVersion != nullptr) {
        printf("DisplayVersion = %s\n", displayVersion);
    }

    ObtainProductParms();	

    printf("******To Obtain Product Params End  ******\n");
    return 0;
}
