#!/bin/sh
cd $OPENSHIFT_BIN_DIR && sudo ./openshift start --public-master=localhost --volume-dir=/tmp/oo-volume &> openshift.log &
echo "Logging at: " $OPENSHIFT_BIN_DIR/openshift.log
