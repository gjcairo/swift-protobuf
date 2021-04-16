#!/bin/bash -x

if [ ! -f ./AppleInternal/AppleInternalIfy.sh ]; then
    echo "This script is expected to be run from the top-level of swift-protobuf"
    exit -1
fi

grep -qi 'AppleInternal Section' ./SwiftProtobuf.xcodeproj/xcconfigs/Base.xcconfig
grepResult=$?
if [ 0 -eq $grepResult ]; then
    echo "This project has already been AppleInternalIfy-ed"
    exit -1
fi

for filepath in $(find ./AppleInternal/xcconfigPatches -type f); do
    filename=$(basename $filepath)
    dstfilepath=./SwiftProtobuf.xcodeproj/xcconfigs/$filename
    echo -e "\n\n// AppleInternal Section\n\n" >> $dstfilepath
    cat $filepath >> $dstfilepath
done

# Move around our docs
cp -f './README.md' './README-OSS.md'
cp './AppleInternal/README-AppleInternal.md' './README.md'

cat ./AppleInternal/SourcePatch.diff | patch -p1

# We don't want anything @inlinable, as we don't want to incur the ABI compatibility hit
find ./Sources -name "*.swift" -type f -exec sed -i '' -e 's/^\( *\)@inlinable/\/\/\1@inlinable/g' {} \;

# Rename library and target names from SwiftProtobuf -> InternalSwiftProtobuf for each Package.swift
# Ensure the InternalSwiftProtobuf target has a proper path element
for PACKAGE_FILE in $(ls Package*.swift); do
    sed -i '' -e 's/(name: "SwiftProtobuf"/(name: "InternalSwiftProtobuf"/g' -e 's/\[\(.*\)"SwiftProtobuf"/\[\1"InternalSwiftProtobuf"/g' -e 's/target(name: "InternalSwiftProtobuf")/target(name: "InternalSwiftProtobuf", path: "Sources\/SwiftProtobuf")/g' $PACKAGE_FILE
done

# Any explicit "import SwiftProtobuf" or "SwiftProtobuf.<sometype>" in Sources or Tests needs to be replaced.
find ./Sources -name "*.swift" -type f -exec sed -i '' -e 's/import SwiftProtobuf$/import InternalSwiftProtobuf/g' -e 's/SwiftProtobuf\./InternalSwiftProtobuf\./g' {} \;

# In Tests, we're only concerned about the human-edited .swift files, as the forthcoming call to `make regenerate` will regenerate all the .pb.swift files
find ./Tests -name "*.swift" -not -name "*.pb.swift" -type f -exec sed -i '' -e 's/import SwiftProtobuf$/import InternalSwiftProtobuf/g' -e 's/SwiftProtobuf\./InternalSwiftProtobuf\./g' {} \;

make regenerate
