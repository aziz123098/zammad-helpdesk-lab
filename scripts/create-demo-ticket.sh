#!/usr/bin/env bash
# OPTIONAL DEMO — creates a NEW test ticket if you execute it.
# This script was not used in the original UI-based lab.
set -euo pipefail

: "${ZAMMAD_URL:?Set ZAMMAD_URL}"
: "${ZAMMAD_TOKEN:?Set ZAMMAD_TOKEN}"
: "${ZAMMAD_CUSTOMER_EMAIL:?Set an existing sample customer's email}"
: "${ZAMMAD_GROUP:?Set an existing group name, e.g. IT Helpdesk}"

curl --fail-with-body --silent --show-error \
  --request POST \
  --header "Authorization: Token token=${ZAMMAD_TOKEN}" \
  --header "Content-Type: application/json" \
  --data "$(python3 -c 'import json,os;print(json.dumps({"title":"Demo: Wi-Fi connectivity issue","group":os.environ["ZAMMAD_GROUP"],"customer":os.environ["ZAMMAD_CUSTOMER_EMAIL"],"article":{"subject":"Wi-Fi connectivity issue","body":"Demo customer cannot connect to the company Wi-Fi network.","type":"note","internal":True}}))')" \
  "${ZAMMAD_URL%/}/api/v1/tickets"
echo
