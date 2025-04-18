#!/bin/sh
set -e

log () {
  echo "$(date "+%Y-%m-%d %H:%M:%S") [${2:-INFO}]: $1"
}

log "pwd is $(pwd)"

log "ip is $(curl -s -4 https://ifconfig.co)"

log "editing server toml"
sed 's/%DEFAULT_TOKEN%/'"${DEFAULT_TOKEN}"'/g' server.toml.tpl > server.toml

log "starting rathole"
/usr/bin/frps -c server.toml