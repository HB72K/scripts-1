#!/bin/bash
#
# Patches required for build Lineage-15.1
#

echo "Patches for system_qcom...";
cd system/qcom &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/34/187634/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/35/187635/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/36/187636/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/37/187637/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

echo "Patches for build_make...";
cd build/make &&
git fetch https://github.com/LineageOS/android_build refs/changes/13/196713/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

echo "Patches for system_core...";
cd system/core &&
git fetch https://github.com/LineageOS/android_system_core refs/changes/11/198411/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_core refs/changes/55/198955/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

echo "Patches for external_tinycompress...";
cd external/tinycompress &&
git fetch https://github.com/LineageOS/android_external_tinycompress refs/changes/20/199120/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

echo "Patches for bionic...";
cd bionic &&
git fetch https://github.com/LineageOS/android_bionic refs/changes/21/198621/2 && git cherry-pick FETCH_HEAD &&
cd .. &&

echo "Patches for hardware_qcom_keymaster...";
cd hardware/qcom/keymaster &&
git fetch https://github.com/LineageOS/android_hardware_qcom_keymaster refs/changes/93/198793/2 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_keymaster refs/changes/71/199371/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_keymaster refs/changes/72/199372/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_keymaster refs/changes/73/199373/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_keymaster refs/changes/74/199374/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_keymaster refs/changes/75/199375/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_keymaster refs/changes/76/199376/1 && git cherry-pick FETCH_HEAD &&
cd ../../..

echo "Patches for hardware_qcom_audio...";
cd hardware/qcom/audio-caf/msm8974 &&
git fetch https://github.com/LineageOS/android_hardware_qcom_audio refs/changes/14/199514/4 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_audio refs/changes/53/199553/3 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_hardware_qcom_audio refs/changes/83/199983/1 && git cherry-pick FETCH_HEAD &&
cd ../../../..

echo "Finished! now you can build bro :D";
