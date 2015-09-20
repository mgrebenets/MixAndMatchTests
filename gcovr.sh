BUILD_DIR=$(pwd)/build
GCOV_FILTER=".*"
INJECTIONS_DIR=Injections
GCOV_EXCLUDE="(.*./Developer/SDKs/.*)|(.*./Developer/Toolchains/.*)|(.*TestsTests\.m)|(.*TestsTests/.*)|(${INJECTIONS_DIR}/.*)|(Libraries.*)|(.*UnitTests/.*)|(.*AcceptanceTests/.*)"

gcovr \
    --filter="${GCOV_FILTER}" \
    --exclude="${GCOV_EXCLUDE}" \
    --object-directory=${BUILD_DIR} -x > gcov-report.xml
