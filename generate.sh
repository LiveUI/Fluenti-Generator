#!/usr/bin/env bash

copy() {
	local SOURCES="$1Sources"
	echo "Copy $SOURCES"
 	cp -a $SOURCES ../Fluenti 2>/dev/null
}

echo "Fluenti generator by LiveUI"
echo "Update SPM folder (original code)"

#cd ./SPM && vapor clean -y --verbose && rm -f Package.resolved && rm -rf .build && vapor xcode -n --verbose

echo "Clean Fluenti folder, all but essentials"
cd ./Fluenti

mkdir -p ../.tmp

cp .gitignore ../.tmp/.gitignore
cp LICENSE ../.tmp/LICENSE
cp README.md ../.tmp/README.md

find . ! -name '.git' -type f -exec rm -rf {} +
pwd
exit


cp ../.tmp/.gitignore .gitignore
cp ../.tmp/LICENSE LICENSE
cp ../.tmp/README.md README.md

rm -rf ../.tmp

echo "Move SPM Project and Fluenti stuff over"
cp -rf ../SPM/Fluenti.xcodeproj ./
cp -rf ../SPM/Sources ./
cp -rf ../SPM/Tests ./

echo "Manage dependencies:"

cd ../SPM/
shopt -s dotglob
shopt -s nullglob
CHECKOUTS=(.build/checkouts/*/)
for CHECKOUT in "${CHECKOUTS[@]}"
	do copy $CHECKOUT
done
