# dhcp

## networkboot/dhcpd
https://hub.docker.com/r/networkboot/dhcpd/

docker run -it --rm --init --net host -v "$(pwd)/data":/data networkboot/dhcpd eth0