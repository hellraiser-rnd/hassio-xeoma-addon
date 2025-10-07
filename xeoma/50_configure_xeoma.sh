#!/usr/bin/with-contenv bashio
ARCHIVE_PATH="$(bashio::config 'archive_path')"
mkdir -p "${ARCHIVE_PATH}"
echo "Xeoma archive path: ${ARCHIVE_PATH}"
