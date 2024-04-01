#!/usr/bin/env python3
# coding=utf-8

#
# Copyright (c) 2024 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

import os
import json

OPEN_HARMONY_KEY = 'C=CN, O=OpenHarmony, OU=OpenHarmony Team, CN=OpenHarmony Application Root CA'
OPEN_HARMONY_VALUE = '-----BEGIN CERTIFICATE-----\nMIICRDCCAcmgAwIBAgIED+E4izAMBggqhkjOPQQDAwUAMGgxCzAJBgNVBAYTAkNO\nMRQwEgYDVQQKEwtPcGVuSGFybW9ueTEZMBcGA1UECxMQT3Blbkhhcm1vbnkgVGVh\nbTEoMCYGA1UEAxMfT3Blbkhhcm1vbnkgQXBwbGljYXRpb24gUm9vdCBDQTAeFw0y\nMTAyMDIxMjE0MThaFw00OTEyMzExMjE0MThaMGgxCzAJBgNVBAYTAkNOMRQwEgYD\nVQQKEwtPcGVuSGFybW9ueTEZMBcGA1UECxMQT3Blbkhhcm1vbnkgVGVhbTEoMCYG\nA1UEAxMfT3Blbkhhcm1vbnkgQXBwbGljYXRpb24gUm9vdCBDQTB2MBAGByqGSM49\nAgEGBSuBBAAiA2IABE023XmRaw2DnO8NSsb+KG/uY0FtS3u5LQucdr3qWVnRW5ui\nQIL6ttNZBEeLTUeYcJZCpayg9Llf+1SmDA7dY4iP2EcRo4UN3rilovtfFfsmH4ty\n3SApHVFzWUl+NwdH8KNCMEAwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMC\nAQYwHQYDVR0OBBYEFBc6EKGrGXzlAE+s0Zgnsphadw7NMAwGCCqGSM49BAMDBQAD\nZwAwZAIwd1p3JzHN93eoPped1li0j64npgqNzwy4OrkehYAqNXpcpaEcLZ7UxW8E\nI2lZJ3SbAjAkqySHb12sIwdSFKSN9KCMMEo/eUT5dUXlcKR2nZz0MJdxT5F51qcX\n1CumzkcYhgU=\n-----END CERTIFICATE-----\n'

file_descriptor = os.open('trusted_root_ca.json', os.O_RDWR, 0o666)

with os.fdopen(file_descriptor, 'r+') as file:
    data = json.load(file)
    data[OPEN_HARMONY_KEY] = OPEN_HARMONY_VALUE
    file.seek(0)
    json.dump(data, file, indent = 4)
    file.truncate()
