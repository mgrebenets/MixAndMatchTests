BUILD_DIR=$(pwd)/build
LCOV_INFO=coverage.info
INJECTIONS_DIR=Injections
LCOV_EXCLUDE="*/Xcode.app/Contents/Developer/* *Tests.m *TestsTests/* *UnitTests/* *AcceptanceTests/* ${INJECTIONS_DIR}/* Libraries/* Resources/* ${BUILD_DIR}/* Scripts/* Configurations/*"
# LCOV_EXCLUDE="'*/Xcode.app/Contents/Developer/*' '*Tests.m' '*UnitTests/*' '*AcceptanceTests/*' '$(INJECTIONS_DIR)/*' 'Libraries/*' 'Resources/*' '$(BUILD_DIR)/*' '$(TEST_BUILD_DIR)/*' 'Scripts/*' 'Configurations/*'"
REPORTS_DIR=lcov-reports

lcov --capture --directory ${BUILD_DIR} --output-file ${LCOV_INFO}
lcov --remove ${LCOV_INFO} ${LCOV_EXCLUDE} --output-file ${LCOV_INFO}
genhtml ${LCOV_INFO} --output-directory ${REPORTS_DIR}
