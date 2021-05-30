#!/bin/sh
echo "\n";
echo 'create instance at:'
date;
echo "\n";

DIR=`dirname $0`;
VULTR_API_KEY=`cat ${DIR}/config`
sleep 2;
curl "https://api.vultr.com/v2/instances" \
  -X POST \
  -H "Authorization: Bearer ${VULTR_API_KEY}" \
  -H "Content-Type: application/json" \
  --data '{
    "region" : "atl",
    "plan" : "vhf-1c-1gb",
    "snapshot_id" : "061ab18f-0660-4ee1-9d6a-4383c7496796"
  }'
