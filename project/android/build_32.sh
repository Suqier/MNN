#!/bin/bash
cmake ../../../ \
-DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
-DCMAKE_BUILD_TYPE=Release \
-DANDROID_ABI="armeabi-v7a" \
-DANDROID_STL=c++_static \
-DANDROID_NATIVE_API_LEVEL=android-14  \
-DANDROID_TOOLCHAIN=clang \
-DMNN_USE_LOGCAT=false \
-DMNN_USE_SSE=OFF \
-DMNN_BUILD_TEST=ON \
-DMNN_ARM82=OFF \
-DMNN_BUILD_FOR_ANDROID_COMMAND=true \
-DNATIVE_LIBRARY_OUTPUT=. -DNATIVE_INCLUDE_OUTPUT=. $*

make -j4
