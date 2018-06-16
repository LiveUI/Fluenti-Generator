#!/usr/bin/env bash

# Update SPM folder (original code)

cd ./SPM &&\
	vapor clean -y --verbose &&\
	rm -f Package.resolved &&\
	rm -rf .build&&\
	vapor xcode -n --verbose


# Clean Fluenti folder, all but .git
#cd ./SPM && find . ! -name '.git' -type f -exec rm -f {} +
