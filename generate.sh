#!/usr/bin/env bash

# Update SPM folder (original code)

#cd ./SPM && vapor clean -y --verbose && rm -f Package.resolved && rm -rf .build && vapor xcode -n --verbose


# Clean Fluenti folder, all but essentials
cd ./Fluenti

mkdir -p ../.tmp

cp .gitignore ../.tmp/.gitignore
cp LICENSE ../.tmp/LICENSE
cp README.md ../.tmp/README.md

find . ! -name '.git' -type f -exec rm -f {} +
cp ../.tmp/.gitignore .gitignore
cp ../.tmp/LICENSE LICENSE
cp ../.tmp/README.md README.md