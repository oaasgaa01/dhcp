# DHCP on UBUNTU

## Install
[How to Install and Configure DHCP Server on Ubuntu 20.04](https://www.howtoforge.com/how-to-install-and-configure-dhcp-server-on-ubuntu-20-04/)

```bash
sudo apt update
sudo apt install isc-dhcp-server -y

sudo systemctl start isc-dhcp-server
sudo systemctl enable isc-dhcp-server

sudo nano /etc/default/isc-dhcp-server

INTERFACESv4="ens160"

sudo nano /etc/dhcp/dhcpd.conf

subnet 192.168.1.0 netmask 255.255.255.0        # zone to issue address from
{
        pool {
                #failover peer "dhcp";           # Pool for dhcp leases with failover bootp not allowed
                deny dynamic bootp clients;
                range 192.168.1.100 192.168.1.150;
        }

        allow unknown-clients;
        authoritative;

        option routers                  192.168.1.1;
        option subnet-mask              255.255.255.0;
        option broadcast-address        192.168.1.255;
        option domain-name              "hds.local";
        option domain-name-servers      172.16.1.5, 8.8.8.8;
        option ntp-servers              192.168.1.21, 192.168.1.22;
        option netbios-node-type        8;

        default-lease-time              600;
        max-lease-time                  7200;
}
```

sudo systemctl restart isc-dhcp-server
sudo systemctl status isc-dhcp-server

ERROR -> fix
sudo mkdir /run/dhcp-server
