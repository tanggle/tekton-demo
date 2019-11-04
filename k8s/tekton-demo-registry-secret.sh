#!/bin/bash

kubectl -n tekton-pipelines create secret docker-registry regcred \
		--docker-server='harbor.k8s.bns.co.kr' \
		--docker-username='tanggle' \
		--docker-password='!Juye02@' \
		--docker-email='gpkwon@bns.co.kr'
