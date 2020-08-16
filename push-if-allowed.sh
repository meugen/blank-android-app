#!/bin/bash

./gradlew clean
[ $? -eq 0 ] || exit 1
./gradlew app:androidTestDebug
[ $? -eq 0 ] || exit 1
./gradlew app:testDebug
[ $? -eq 0 ] || exit 1
./gradlew app:assembleRelease
[ $? -eq 0 ] || exit 1
git push
