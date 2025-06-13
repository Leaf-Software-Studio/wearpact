#!/bin/bash

# Exit on error
set -e

# Create a temporary directory for the release
RELEASE_DIR="wearpact-release"
mkdir -p $RELEASE_DIR

# Build the images
echo "Building Docker images..."
./build-images.sh

# Copy necessary files
echo "Copying files to release directory..."
cp -r wearpact-admin $RELEASE_DIR/
cp -r wearpact-client $RELEASE_DIR/
cp Instructions.md $RELEASE_DIR/
cp build-images.sh $RELEASE_DIR/

# Create the zip file
echo "Creating zip file..."
zip -r wearpact-release.zip $RELEASE_DIR

# Clean up
echo "Cleaning up..."
rm -rf $RELEASE_DIR

echo "Release package created: wearpact-release.zip" 