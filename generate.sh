#!/usr/bin/env bash

# Update SPM folder (original code)
rm -rf ./SPM/.build
cd ./SPM && vapor clean -y --verbose
rm ./SPM/Package.resolved
cd ./SPM && vapor xcode -n --verbose


# Clean Fluenti folder, all but .git
find . ! -name '.git' -type f -exec rm -f {} +
