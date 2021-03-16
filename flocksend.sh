#!/bin/bash

START=$(date +%Y-%m-%d-%H-%M)
HOSTNAME=$(hostname | awk '{print toupper($0)}')
THIS=$(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null || echo "$0")
DIR=$(dirname "${THIS}")
CONFIG_FILE="$HOME/flockconfig.conf"

MESSAGE=${1:-"default message"}

. $CONFIG_FILE

PAYLOAD="{
  \"flockml\": \"<flockml>$HOSTNAME - $MESSAGE</flockml>\"
}"

curl -X POST $FLOCK_WEBHOOK -H "Content-Type: application/json" -d "$PAYLOAD"

exit 0