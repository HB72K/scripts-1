cd frameworks/av &&
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/76/194976/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/15/198115/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/14/198114/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/13/198113/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/16/198116/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

cd system/qcom &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/34/187634/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/35/187635/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/36/187636/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_qcom refs/changes/37/187637/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

cd build/make &&
git fetch https://github.com/LineageOS/android_build refs/changes/13/196713/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

cd system/core &&
git fetch https://github.com/LineageOS/android_system_core refs/changes/11/198411/1 && git cherry-pick FETCH_HEAD &&
git fetch https://github.com/LineageOS/android_system_core refs/changes/55/198955/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

cd external/tinycompress &&
git fetch https://github.com/LineageOS/android_external_tinycompress refs/changes/20/199120/1 && git cherry-pick FETCH_HEAD &&
cd ../.. &&

cd bionic &&
git fetch https://github.com/LineageOS/android_bionic refs/changes/21/198621/2 && git cherry-pick FETCH_HEAD &&
cd .. &&

cd external/ntfs-3g &&
git fetch https://github.com/LineageOS/android_external_ntfs-3g refs/changes/28/198028/1 && git cherry-pick FETCH_HEAD &&
cd ../..
