# openshift-tools
Some personal scripts I use to easily setup my test/play/demo env

I run on a MacBook, using VirtualBox and Boot2Docker. Note I also [use dnsmasq on my host](http://passingcuriosity.com/2013/dnsmasq-dev-osx/) so I can easily setup routes using DNS wildcard *.apps.

Some of the scripts are hard-coded to my setup, you may want to change that.

The typical flow is:

### clean up
`boot2docker down`

`boot2docker destroy`

### prepare vm
`boot2docker init`

Setup port forwarding

`vbox-init`

Fire up VM

`boot2docker up`

If needed, set shell env based on output of `boot2docker shellinit`

Additionally, on the host, setup routes based on new boot2docker ip

`oo-route`

Can pre-fetch docker image (if you don't now, it will occur when you attempt to start docker)

`docker pull openshift/origin:latest`

### start OpenShift Origin
`oo-start`

### config OpenShift Origin
`docker exec oo /sspeiche/git/openshift-tools/oo-setup`

**That's it!**  You should be able to launch the Web Console from your browser on your host such as [https://localhost:8443](https://localhost:8443)
