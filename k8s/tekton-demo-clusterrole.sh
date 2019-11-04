#!/bin/bash

kubectl create clusterrole tekton-demo \
        --verb=get,list,watch,create,update,patch,delete \
        --resource=deployments
