#!/usr/bin/with-contenv bashio
ARCHIVE_PATH="$(bashio::config 'archive_path')"
HTTP_PORT="$(bashio::config 'http_port')"

mkdir -p "${ARCHIVE_PATH}"

ip link add link eth0 address 02:42:ac:11:00:02 dev eth0_alias type macvlan || true

/root/xeoma.app -start -core -log -silent -open web:${HTTP_PORT} -path "${ARCHIVE_PATH}"
