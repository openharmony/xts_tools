#!/bin/bash

sed -i 's|"compileSdkVersion": 26|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|"compileSdkVersion": "26"|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i "s|\"compileSdkVersion\": '26'|\"compileSdkVersion\": \"26.0.0\"|g" $(find $1 -name build-profile.json5)
sed -i 's|compileSdkVersion: 26|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|compileSdkVersion: "26"|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)

sed -i 's|"compatibleSdkVersion": 26|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|"compatibleSdkVersion": "26"|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i "s|\"compatibleSdkVersion\": '26'|\"compatibleSdkVersion\": \"26.0.0\"|g" $(find $1 -name build-profile.json5)
sed -i 's|compatibleSdkVersion: 26|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|compatibleSdkVersion: "26"|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)

sed -i '/"targetSdkVersion"/d' $(find $1 -name build-profile.json5)
sed -i "/arkTSVersion/d" $(find $1 -name build-profile.json5 | grep "/entry/")
find $1 -name hypium | xargs rm -rf

sh_dir=$(dirname $(readlink -f $0))
${sh_dir}/batch_update_static.sh $1