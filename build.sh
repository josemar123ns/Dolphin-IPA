#!/bin/bash

# Set up build environment

# Define the path to the project
PROJECT_DIR="./Dolphin-IPA"

# Create output directory
OUTPUT_DIR="./output"
mkdir -p $OUTPUT_DIR

# Navigate to the project directory
cd $PROJECT_DIR

# Clean previous builds
rm -rf build/*

# Configure the build
# Assuming Xcode is set up correctly
xcodebuild -scheme Dolphin-IPA -configuration Release -sdk iphoneos -archivePath $OUTPUT_DIR/Dolphin-IPA.xcarchive archive

# Export the IPA
xcodebuild -exportArchive -archivePath $OUTPUT_DIR/Dolphin-IPA.xcarchive -exportPath $OUTPUT_DIR -exportOptionsPlist exportOptions.plist

# Done

echo "IPA generation completed successfully!"