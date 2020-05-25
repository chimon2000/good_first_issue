#!/bin/bash
set -e

echo "Run tests and get coverage"
flutter test --coverage

echo "Remove coverage from untestable areas"
flutter pub run remove_from_coverage -f coverage/lcov.info -r '(models.*$)|((main|uikit|bootstrap|freezed|device_info|environment|.g).dart$)'

if hash lcov-summary 2>/dev/null; then
    echo "Build coverage report for VS Code"
    lcov-summary coverage/lcov.info 
fi