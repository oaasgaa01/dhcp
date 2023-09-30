# dhcp

udp port 67 server
udp port 68 client


## npflan

[NPF DHCPd on Kubernetes](https://github.com/npflan/dhcp)

## networkboot/dhcpd

https://hub.docker.com/r/networkboot/dhcpd/

docker run -it --rm --init --net host -v "$PWD/data":/data networkboot/dhcpd ens160

## Create/update service

docker service create \
 --name dhcp \
 --with-registry-auth \
 --network host \
 oaasgaa01/dhcp:latest dhcp 

docker service update \
 --with-registry-auth \
 --force \
 --image oaasgaa01/dhcp-php:latest \
 dhcp
