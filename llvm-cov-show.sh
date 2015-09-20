

SCHEME=MixAndMatchTests
PROJECT=${SCHEME}.xcodeproj
BUILD_SETTINGS=build-settings.txt

xcodebuild -project ${PROJECT} -scheme ${SCHEME} -sdk iphonesimulator -configuration Debug -showBuildSettings > ${BUILD_SETTINGS}

# Project Temp Root ends up with /Build/Intermediates/
PROJECT_TEMP_ROOT=$(grep -m1 PROJECT_TEMP_ROOT ${BUILD_SETTINGS} | cut -d= -f2 | xargs)

# Profile data is callced Coverage.profdata, let's find it
PROFDATA=$(find ${PROJECT_TEMP_ROOT} -name "Coverage.profdata")

# DISCLAIMER: It's your fault if schemes and targets are not named the same!
# Instrumented binary is stored under same Build/Intermediates location
# But better use find utility to locate it, because there are configuration and target specific names in the path

# This fersion looks for file with executable premissions
# BINARY=$(find ${PROJECT_TEMP_ROOT} -type file -perm +111 -name "${SCHEME}")

# This version uses path option
BINARY=$(find ${PROJECT_TEMP_ROOT} -path "*${SCHEME}.app/${SCHEME}")

xcrun llvm-cov show \
    -instr-profile ${PROFDATA} \
    ${BINARY}

xcrun llvm-cov report \
    -instr-profile ${PROFDATA} \
    ${BINARY}
