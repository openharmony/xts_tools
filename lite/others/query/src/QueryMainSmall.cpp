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

#include <iostream>
#include <string>
#include <vector>
#include <cstring>
#include <fstream>
#include <utility>

#include "parameter.h"
#include "devattest_interface.h"

const int DEVATTEST_SUESS = 0;
const int UDIDSIZE_LEN = 64;

using namespace std;

template<typename KeyType, typename ValueType>
void writeTexToFile(const std::string& filename, const std::string& text1, const std::vector<std::pair<KeyType, ValueType>>& kvPairs, const std::string& text2) {
    std::ofstream outFile(filename, std::ios::out | std::ios::trunc); // 使用std::ios::trunc以清空文件内容
    if (!outFile.is_open()) {
        std::cerr << "无法打开或创建文件: " << filename << std::endl;
        return;
    }

    outFile << text1 << std::endl;
    for (const auto& pair : kvPairs) {
        outFile << pair.first << " = " << pair.second << std::endl;
    }
    outFile << text2 << std::endl;
}

void intToConstCharPtrSafe(int num, char* buffer, size_t bufferSize) {
    std::snprintf(buffer, bufferSize, "%d", num);
}

void ObtainProductParms(void)
{
    printf("******To Obtain Product Params Start******\n");
    std::vector<std::pair<const char*, const char*>> myVector;
    char buffer1[50];
    char buffer2[50];
    char buffer3[50];
    char buffer4[50];

    const char *productType = GetDeviceType();
    printf("Device Type = %s\n", productType);
    myVector.emplace_back("Device Type", productType);

    const char *securityPatchTag = GetSecurityPatchTag();
    printf("Security Patch = %s\n", securityPatchTag);
    myVector.emplace_back("Security Patch", securityPatchTag);

    const char *osName = GetOSFullName();
    printf("OsFullName = %s\n", osName);
    myVector.emplace_back("OsFullName", osName);

    const char *displayVersion = GetDisplayVersion();
    printf("DisplayVersion = %s\n", displayVersion);
    myVector.emplace_back("DisplayVersion", displayVersion);

    const char *versionId = GetVersionId();
    printf("VersionID = %s\n", versionId);
    myVector.emplace_back("VersionID", versionId);

    AttestResultInfo attestResultInfo = {0};
    attestResultInfo.ticket = NULL;
    int32_t retStatus = GetAttestStatus(&attestResultInfo);
    printf("authResult = %d\n", attestResultInfo.authResult);
    printf("softwareResult = %d\n", attestResultInfo.softwareResult);
    intToConstCharPtrSafe(attestResultInfo.authResult, buffer1, sizeof(buffer1));
    const char* authResult1 = buffer1;
    intToConstCharPtrSafe(attestResultInfo.softwareResult, buffer2, sizeof(buffer2));
    const char* softwareResult1 = buffer2;
    myVector.emplace_back("authResult", authResult1);
    myVector.emplace_back("softwareResult", softwareResult1);

    char udid[UDIDSIZE_LEN + 1] = {0};
    int retUdid = GetDevUdid(udid, UDIDSIZE_LEN + 1);
    printf("DevUdid = %s\n", udid);
    myVector.emplace_back("DevUdid", udid);

    const char *manuFacture = GetManufacture();
    printf("manuFacture = %s\n", manuFacture);
    myVector.emplace_back("manuFacture", manuFacture);

    const char *productModel = GetProductModel();
    printf("productModel = %s\n", productModel);
    myVector.emplace_back("productModel", productModel);

    const char *serial = GetSerial();
    printf("serial = %s\n", serial);
    myVector.emplace_back("serial", serial);

    const char *brand = GetBrand();
    printf("brand = %s\n", brand);
    myVector.emplace_back("brand", brand);

    const char *productSeries = GetProductSeries();
    printf("productSeries = %s\n", productSeries);
    myVector.emplace_back("productSeries", productSeries);

    const char *softwareModel = GetSoftwareModel();
    printf("softwareModel = %s\n", softwareModel);
    myVector.emplace_back("softwareModel", softwareModel);

    const char *hardWareModel = GetHardwareModel();
    printf("HardwareModel = %s\n", hardWareModel);
    myVector.emplace_back("HardwareModel", hardWareModel);

    const char *buildRootHash = GetBuildRootHash();
    printf("BuildRootHash = %s\n", buildRootHash);
    myVector.emplace_back("BuildRootHash", buildRootHash);

    const char *marketName = GetMarketName();
    printf("marketName = %s\n", marketName);
    myVector.emplace_back("marketName", marketName);

    int sdkApiVersion = GetSdkApiVersion();
    printf("SdkApiVersion = %d\n", sdkApiVersion);
    intToConstCharPtrSafe(sdkApiVersion, buffer4, sizeof(buffer4));
    const char* sdkApiVersion1 = buffer4;
    myVector.emplace_back("SdkApiVersion", sdkApiVersion1);

    int firstApiVersion = GetFirstApiVersion();
    printf("firstApiVersion = %d\n", firstApiVersion);
    intToConstCharPtrSafe(firstApiVersion, buffer3, sizeof(buffer3));
    const char* firstApiVersion1 = buffer3;
    myVector.emplace_back("firstApiVersion", firstApiVersion1);

    const char *bootloaderVersion = GetBootloaderVersion();
    printf("bootloaderVersion = %s\n", bootloaderVersion);
    myVector.emplace_back("bootloaderVersion", bootloaderVersion);

    const char *incrementalVersion = GetIncrementalVersion();
    printf("incrementalVersion = %s\n", incrementalVersion);
    myVector.emplace_back("incrementalVersion", incrementalVersion);

    const char *buildType = GetBuildType();
    printf("buildType = %s\n", buildType);
    myVector.emplace_back("buildType", buildType);

    const char *buildUser = GetBuildUser();
    printf("buildUser = %s\n", buildUser);
    myVector.emplace_back("buildUser", buildUser);

    const char *buildHost = GetBuildHost();
    printf("buildHost = %s\n", buildHost);
    myVector.emplace_back("buildHost", buildHost);

    const char *buildTime = GetBuildTime();
    printf("buildTime = %s\n", buildTime);
    myVector.emplace_back("buildTime", buildTime);

    const char *abiList = GetAbiList();
    printf("AbiList = %s\n", abiList);
    myVector.emplace_back("AbiList", abiList);
    printf("******To Obtain Product Params End  ******\n");
    std::string text1 = "******To Obtain Product Params Start******";
    std::string text2 = "******To Obtain Product Params End  ******";
    writeTexToFile("querySmall.txt", text1, myVector, text2);
}

int main()
{
    ObtainProductParms();
    return 0;
}
