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

#include "parameter.h"
#include "devattest_interface.h"

const int DEVATTEST_SUESS = 0;
const int UDIDSIZE_LEN = 64;

void ObtainProductParms()
{
    int sdkApiVersion = GetSdkApiVersion();
    if (sdkApiVersion != 0) {
        printf("SdkApiVersion = %d\n", sdkApiVersion);
    } else {
        printf("SdkApiVersion = 0\n");
    }

    int firstApiVersion = GetFirstApiVersion();
    if (firstApiVersion != 0) {
        printf("firstApiVersion = %d\n", firstApiVersion);
    } else {
        printf("firstApiVersion = 0\n");
    }

    const char *bootloaderVersion = GetBootloaderVersion();
    if (bootloaderVersion != nullptr) {
        printf("bootloaderVersion = %s\n", bootloaderVersion);
    } else {
        printf("bootloaderVersion = nullptr\n");
    }


    const char *incrementalVersion = GetIncrementalVersion();
    if (incrementalVersion != nullptr) {
        printf("incrementalVersion = %s\n", incrementalVersion);
    } else {
        printf("incrementalVersion = nullptr\n");
    }

    const char *buildType = GetBuildType();
    if (buildType != nullptr) {
        printf("buildType = %s\n", buildType);
    } else {
        printf("buildType = nullptr\n");
    }

    const char *buildUser = GetBuildUser();
    if (buildUser != nullptr) {
        printf("buildUser = %s\n", buildUser);
    } else {
        printf("buildUser = nullptr\n");
    }

    const char *buildHost = GetBuildHost();
    if (buildHost != nullptr) {
        printf("buildHost = %s\n", buildHost);
    } else {
        printf("buildHost = nullptr\n");
    }

    const char *buildTime = GetBuildTime();
    if (buildTime != nullptr) {
        printf("buildTime = %s\n", buildTime);
    } else {
        printf("buildTime = nullptr\n");
    }

    const char *abiList = GetAbiList();
    if (abiList != nullptr) {
        printf("AbiList = %s\n", abiList);
    } else {
        printf("AbiList = nullptr\n");
    }
}

int main()
{
    printf("******To Obtain Product Params Start******\n");
    const char *productType = GetDeviceType();
    if (productType != nullptr) {
        printf("Device Type = %s\n", productType);
    } else {
        printf("Device Type = nullptr\n");
    }

    const char *securityPatchTag = GetSecurityPatchTag();
    if (securityPatchTag != nullptr) {
        printf("Security Patch = %s\n", securityPatchTag);
    } else {
        printf("Security Patch = nullptr\n");
    }

    const char *osName = GetOSFullName();
    if (osName != nullptr) {
        printf("OsFullName = %s\n", osName);
    } else {
        printf("OsFullName = nullptr\n");
    }

    const char *displayVersion = GetDisplayVersion();
    if (displayVersion != nullptr) {
        printf("DisplayVersion = %s\n", displayVersion);
    } else {
        printf("DisplayVersion = nullptr\n");
    }

    const char *versionId = GetVersionId();
    if (versionId != nullptr) {
        printf("VersionID = %s\n", versionId);
    } else {
        printf("VersionID = nullptr\n");
    }

    AttestResultInfo attestResultInfo = {0};
    attestResultInfo.ticket = NULL;
    int32_t retStatus = GetAttestStatus(&attestResultInfo);
    if (retStatus != DEVATTEST_SUESS) {
        printf("[CLIENT MAIN] wrong. retStatus:%d\n", retStatus);
        printf("authResult = %d\n", attestResultInfo.authResult);
        printf("softwareResult = %d\n", attestResultInfo.softwareResult);
    } else {
        printf("authResult = %d\n", attestResultInfo.authResult);
        printf("softwareResult = %d\n", attestResultInfo.softwareResult);
    }

    char udid[UDIDSIZE_LEN + 1] = {0};
    int retUdid = GetDevUdid(udid, UDIDSIZE_LEN + 1);
    if (retUdid == 0) {
        printf("DevUdid = %s\n", udid);
    } else {
        printf("DevUdid = nullptr\n");
    }

    const char *manuFacture = GetManufacture();
    if (manuFacture != nullptr) {
        printf("manuFacture = %s\n", manuFacture);
    } else {
        printf("manuFacture = nullptr\n");
    }

    const char *productModel = GetProductModel();
    if (productModel != nullptr) {
        printf("productModel = %s\n", productModel);
    } else {
        printf("productModel = nullptr\n");
    }

    const char *serial = GetSerial();
    if (serial != nullptr) {
        printf("serial = %s\n", serial);
    } else {
        printf("serial = nullptr\n");
    }

    const char *brand = GetBrand();
    if (brand != nullptr) {
        printf("brand = %s\n", brand);
    } else {
        printf("brand = nullptr\n");
    }

    const char *productSeries = GetProductSeries();
    if (productSeries != nullptr) {
        printf("productSeries = %s\n", productSeries);
    } else {
        printf("productSeries = nullptr\n");
    }

    const char *softwareModel = GetSoftwareModel();
    if (softwareModel != nullptr) {
        printf("softwareModel = %s\n", softwareModel);
    } else {
        printf("softwareModel = nullptr\n");
    }

    const char *hardWareModel = GetHardwareModel();
    if (hardWareModel != nullptr) {
        printf("HardwareModel = %s\n", hardWareModel);
    } else {
        printf("HardwareModel = nullptr\n");
    }

    const char *buildRootHash = GetBuildRootHash();
    if (buildRootHash != nullptr) {
        printf("BuildRootHash = %s\n", buildRootHash);
    } else {
        printf("BuildRootHash = nullptr\n");
    }

    const char *marketName = GetMarketName();
    if (marketName != nullptr) {
        printf("marketName = %s\n", marketName);
    } else {
        printf("marketName = nullptr\n");
    }

    ObtainProductParms();

    printf("******To Obtain Product Params End  ******\n");
    return 0;
}
