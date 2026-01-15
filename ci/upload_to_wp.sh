#!/bin/bash
set -e

ZIP_FILE=$(ls *.zip)

echo "Uploading $ZIP_FILE to WordPress..."

curl -u "$WP_USER:$WP_PASS" \
  -F "file=@${ZIP_FILE}" \
  "$WP_URL/wp-json/wp/v2/media"

echo "Upload completed"

