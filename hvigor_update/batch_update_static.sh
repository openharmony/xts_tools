#!/bin/bash
sh_dir=$(dirname $(readlink -f $0))
for i in $(find $1 -name BUILD.gn | xargs grep static_suite | awk -F ':' '{print $1}' | xargs dirname)
do
    #echo i=${i}
    for j in $(find ${i} -name "*.ets")
    do
        sed -i '/use static/d' ${j}
    done
    node ${sh_dir}/update-1.2.js ${i}
done