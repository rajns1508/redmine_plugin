#!/bin/bash
set -e

PLUGIN_NAME="your_redmine_plugin"
VERSION=$(cat VERSION)

ZIP_NAME="${PLUGIN_NAME}-${VERSION}.zip"

echo "Building plugin ZIP: $ZIP_NAME"

rm -f "$ZIP_NAME"

zip -r "$ZIP_NAME" . \
  -x ".git/*" \
  -x ".github/*" \
  -x "ci/*"

echo "ZIP created successfully"

