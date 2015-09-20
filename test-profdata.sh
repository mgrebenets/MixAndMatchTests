#!/bin/bash

SCHEME=MixAndMatchTests
PROJECT=${SCHEME}.xcodeproj

# Do not specify build directory or derived data directory, rather figure it out from build settings
# This helps when using tools like slather that don't support custom directory paths

# If want to use unit tests target (via scheme), add suffix
[[ -n "${TESTS_TARGET}" ]] && SCHEME=${SCHEME}Tests
echo "Using scheme: ${SCHEME}"

xcodebuild ${CLEAN} test \
    -project ${PROJECT}\
    -scheme ${SCHEME} \
    -sdk iphonesimulator \
    -configuration Debug \
    -enableCodeCoverage YES
