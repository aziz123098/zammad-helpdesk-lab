#!/usr/bin/env bash
# Sample Zammad API verification script. NOT executed as part of the original lab.
set -euo pipefail

: "${ZAMMAD_URL:?Set ZAMMAD_URL, e.g. http://localhost:8080}"
: "${ZAMMAD_TOKEN:?Set a Zammad API token with appropriate permissions}"

curl --fail-with-body --silent --show-error \
  --header "Authorization: Token token=${ZAMMAD_TOKEN}" \
  --header "Accept: application/json" \
  "${ZAMMAD_URL%/}/api/v1/users/me"
echo
