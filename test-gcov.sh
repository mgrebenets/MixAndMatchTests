#!/bin/bash

SCHEME=MixAndMatchTests
PROJECT=${SCHEME}.xcodeproj
BUILD_DIR=$(pwd)/build

# If want to use unit tests target (via scheme), add suffix
[[ -n "${TESTS_TARGET}" ]] && SCHEME=${SCHEME}Tests
echo "Using scheme: ${SCHEME}"

xcodebuild test \
    -project ${PROJECT} \
    -scheme ${SCHEME} \
    -sdk iphonesimulator \
    -configuration Debug \
    CONFIGURATION_BUILD_DIR=${BUILD_DIR} \
    OBJROOT=${BUILD_DIR} \
    GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
	GCC_GENERATE_DEBUGGING_SYMBOLS=YES \
	GCC_GENERATE_TEST_COVERAGE_FILES=YES \
    GCC_PREPROCESSOR_DEFINITIONS="\$(GCC_PREPROCESSOR_DEFINITIONS) ENABLE_GCOV_FLUSH=1"
