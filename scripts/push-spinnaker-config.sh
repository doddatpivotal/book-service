#!/usr/bin/env bash

spin application save \
  --application-name book-service \
  --cloud-providers kubernetes \
  --owner-email dpfeffer@vmware.com \
  --file ci/spinnaker/book-service/application.json \
  --gate-endpoint https://api.spinnaker.ingress.kingslanding.pks.lab.winterfell.live

#curl -X POST \
#  https://api.spinnaker.ingress.kingslanding.pks.lab.winterfell.live/v2/canaryConfig \
#  --header 'Content-Type: application/json' \
#  --data @ci/spinnaker/book-service/canary-config/book-service-kayenta-test.json
#
#spin pipeline save \
#  --file ci/spinnaker/book-service/pipeline/deliver.json \
#  --gate-endpoint https://api.spinnaker.ingress.kingslanding.pks.lab.winterfell.live
