#!/usr/bin/env bash
# Read-only ticket listing example. Requires Zammad API access.
set -euo pipefail

: "${ZAMMAD_URL:?Set ZAMMAD_URL}"
: "${ZAMMAD_TOKEN:?Set ZAMMAD_TOKEN}"

curl --fail-with-body --silent --show-error \
  --header "Authorization: Token token=${ZAMMAD_TOKEN}" \
  --header "Accept: application/json" \
  "${ZAMMAD_URL%/}/api/v1/tickets"
echo
