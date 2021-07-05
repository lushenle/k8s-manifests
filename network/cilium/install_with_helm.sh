#!/usr/bin/env bash
#
# wget https://get.helm.sh/helm-v3.6.2-linux-amd64.tar.gz
# tar -xf helm-v3.6.2-linux-amd64.tar.gz --strip-components=1 -C /usr/local/bin linux-amd64/helm
#
# add cilium helm repo
helm repo add cilium https://helm.cilium.io

# update helm repo
helm repo update

# install cilium in kube-system namespace
helm install cilium cilium/cilium --version 1.10.2 \
   --namespace kube-system \
   --set kubeProxyReplacement=strict \
   --set k8sServiceHost=172.20.0.3 \
   --set k8sServicePort=6443 \
   --set global.nodeinit.enabled=true \
   --set global.externalIPs.enabled=true \
   --set global.nodePort.enabled=true \
   --set global.hostPort.enabled=true \
   --set global.pullPolicy=IfNotPresent \
   --set config.ipam=cluster-pool \
   --set global.hubble.enabled=true \
   --set global.hubble.listenAddress=":4244" \
   --set global.hubble.relay.enabled=true \
   --set global.hubble.metrics.enabled="{dns,drop,tcp,flow,port-distribution,icmp,http}" \
   --set global.prometheus.enabled=true \
   --set global.operatorPrometheus.enabled=true \
   --set global.hubble.ui.enabled=true
