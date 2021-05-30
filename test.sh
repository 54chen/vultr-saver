#!/bin/sh
date;
VULTR_API_KEY=`cat config`

curl -s "https://api.vultr.com/v2/instances" \
  -X GET \
  -H "Authorization: Bearer ${VULTR_API_KEY}" | \
  python3 -c "exec(\"import sys, json;\nfor ids in json.load(sys.stdin)['instances']: print(ids['server_status']+':'+ids['main_ip']);\")"
