#!/bin/bash

if [ -z ${PLUGIN_NAMESPACE} ]; then
  PLUGIN_NAMESPACE="default"
fi

if [ -z ${PLUGIN_TAG} ]; then
  PLUGIN_TAG="latest"
fi

if [ ! -z ${PLUGIN_KUBERNETES_CONFIG} ]; then
  KUBERNETES_CONFIG=$PLUGIN_KUBERNETES_CONFIG
fi

mkdir $HOME/.kube
#echo "$KUBERNETES_CONFIG" > $HOME/.kube/config

#kubectl -n default set image deployment/test-make-api test-make-api=cloud.canister.io:5000/doink/test-make-api:latest

#echo lets go
#echo ${PLUGIN_NAMESPACE}
#echo ${PLUGIN_DEPLOYMENT}
#echo ${PLUGIN_CONTAINER}
#echo ${PLUGIN_REPO}
#echo ${PLUGIN_TAG}
#echo "$KUBERNETES_CONFIG"
#cat $HOME/.kube/config

#echo kubectl -n ${PLUGIN_NAMESPACE} set image deployment/${PLUGIN_DEPLOYMENT} \
#      ${PLUGIN_CONTAINER}=${PLUGIN_REPO}:${PLUGIN_TAG} --record

kubectl -n ${PLUGIN_NAMESPACE} set image deployment/${PLUGIN_DEPLOYMENT} \
      ${PLUGIN_CONTAINER}=${PLUGIN_REPO}:${PLUGIN_TAG} --record
