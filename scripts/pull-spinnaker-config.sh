#!/usr/bin/env bash

spin application get book-service \
  --gate-endpoint https://api.spinnaker.ingress.kingslanding.pks.lab.winterfell.live \
  > ci/spinnaker/book-service/application.json

#export config=`curl https://api.spinnaker.ingress.kingslanding.pks.lab.winterfell.live/v2/canaryConfig \
#  --header 'Content-Type: application/json'`
#export config="{\"data\": $config}"
#export configId=`echo $config | jq '.data[] | select(.name=="book-service-kayenta-test") | .id' -r`
#
#curl https://api.spinnaker.ingress.kingslanding.pks.lab.winterfell.live/v2/canaryConfig/$configId \
#  --header 'Content-Type: application/json' \
#  > ci/spinnaker/book-service/canary-config/book-service-kayenta-test.json

spin pipeline get \
  --application book-service \
  --name "Deliver" \
  --gate-endpoint https://api.spinnaker.ingress.kingslanding.pks.lab.winterfell.live \
  > ci/spinnaker/book-service/pipeline/deliver.json