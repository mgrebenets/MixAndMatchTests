Code Coverage Reports for Xcode Project
===
_Mix and match containing both Objective-C and Swift_

This is a sample repository that demonstrates getting the code coverage reports out of Xocde using command line.

# Switching Xcode
If you want to experiment with both Xcode 6 and 7, make sure you switch Xcode version.
For temporary effect that applies to current shell session only, use `DEVELOPER_DIR` environment variable.

```bash
# Default
export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer

# Some other
export DEVELOPER_DIR=/Applications/Xcode-beta.app/Contents/Developer
```

# Pre-requisites
Install `gcovr` and `lcov` tools.

```bash
brew install gcovr lcov
```

Install custom version of Slather ruby gem.

```bash
# Will use Gemfile
bundle install
```

# Scripts

## test-gcov.sh
Run `test` action with proper build settings to enable app instrumentation and generation of coverage data.

If you want to use unit tests scheme, set `TESTS_TARGET` variable to "YES". This may be useful in advanced setup where you want to redefine `TEST_HOST` build setting as well.

```bash
# Run tests using Test action of default target
./test-gcov.sh

# Run tests using Test action of
TESTS_TARGET=YES ./test-gcov.sh
```

## gcovr.sh
This script will use `gcovr` tool to collect test coverage information from build directory and output it as Cobertura-compatible coverage report XML named `gcov-report.xml`.

## lcov.sh
This script will use `lcov` utility to collect test coverage information and output it as HTML report.

## test-profdata.sh
This script will run the tests using new `-enableCodeCoverage` option of `xcodebuild`. Requires Xcode 7 or newer.

## slather.sh
Collect code coverage data in Profdata format and convert to gcov format (Cobertura-compatible). Output is saved to `slather-report` folder.
more notes for blog post
