# dhcp

## networkboot/dhcpd

https://hub.docker.com/r/networkboot/dhcpd/

docker run -it --rm --init --net host -v "$PWD/data":/data networkboot/dhcpd ens160

## Build and push image

docker build --tag oaasgaa01/dhcp:latest .
docker push oaasgaa01/dhcp:latest

docker service create --name dhcp --with-registry-auth --network host oaasgaa01/dhcp:latest ens160
docker service update --with-registry-auth --force --image oaasgaa01/dhcp-php:latest dhcp
