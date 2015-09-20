SCHEME=MixAndMatchTests
PROJECT=${SCHEME}.xcodeproj

# Cobertura
bundle exec slather coverage \
    --input-format profdata \
    --cobertura-xml \
    --ignore "../**/*/Xcode*" \
    --output-directory slather-report \
    --scheme ${SCHEME} \
    ${PROJECT}

# Simple
bundle exec slather coverage \
    --input-format profdata \
    --simple-output \
    --ignore "../**/*/Xcode*" \
    --output-directory slather-report \
    --scheme ${SCHEME} \
    ${PROJECT}

# HTML option is broken at the time of trying this
# bundle exec slather coverage \
#     --input-format profdata \
#     --html \
#     --ignore "../**/*/Xcode*" \
#     --output-directory slather-html-report \
#     --scheme ${SCHEME} \
#     ${PROJECT}
