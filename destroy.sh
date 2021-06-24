#!/bin/sh
echo "\n";
echo 'destroy instance at';
date;
echo "\n";
DIR=`dirname $0`;
VULTR_API_KEY=`cat ${DIR}/config`

INS=`curl -s "https://api.vultr.com/v2/instances" \
  -X GET \
  -H "Authorization: Bearer ${VULTR_API_KEY}" | \
  python3 -c "exec(\"import sys, json;\nfor ids in json.load(sys.stdin)['instances']: print(ids['id']);\")"`

for IN in ${INS}
do
 echo ${INS};
 curl "https://api.vultr.com/v2/instances/${INS}" \
   -X DELETE \
   -H "Authorization: Bearer ${VULTR_API_KEY}"
done;
