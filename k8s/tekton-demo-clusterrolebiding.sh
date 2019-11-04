#!/bin/bash

kubectl create clusterrolebinding tekton-demo \
        --clusterrole=tekton-demo \
        --serviceaccount=default:tekton-demo
