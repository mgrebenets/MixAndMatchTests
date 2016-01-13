SCHEME=MixAndMatchTests
PROJECT=${SCHEME}.xcodeproj
FORMAT="$1"

[[ -z "${FORMAT}" ]] && echo "usage: slather.sh covertura-xml|simple-output|html" && exit 2

bundle exec slather coverage \
    --input-format profdata \
    --${FORMAT} \
    --ignore "../**/*/Xcode*" \
    --output-directory slather-report \
    --scheme ${SCHEME} \
    ${PROJECT}
