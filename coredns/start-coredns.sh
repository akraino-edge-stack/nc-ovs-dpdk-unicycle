#!/bin/bash
docker run \
   --detach \
   --restart=always \
   --name coredns \
   --network=host \
   --volume /opt/akraino/ovs-dpdk-unicycle/coredns:/etc/coredns \
   coredns/coredns:1.3.1 -conf /etc/coredns/Corefile
