#!/bin/sh
cd $OPENSHIFT_BIN_DIR
sudo chmod +r openshift.local.config/master/openshift-registry.kubeconfig
sudo chmod +r openshift.local.config/master/admin.kubeconfig
oadm registry --create --credentials=openshift.local.config/master/openshift-registry.kubeconfig --config=openshift.local.config/master/admin.kubeconfig
oc create -f /data/src/github.com/openshift/origin/examples/image-streams/image-streams-centos7.json -n openshift
