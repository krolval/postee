#!/bin/sh
kubectl create ns aqua
kubectl create -n aqua configmap postee-config --from-file=../cfg.yaml
kubectl create -n aqua -f pv.yaml
kubectl create -n aqua -f pvc.yaml
kubectl create -n aqua -f webhook.yaml