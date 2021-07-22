#!/bin/bash
    yum install bind-utils
    yum install -y dnsmasq
    
    systemctl enable dnsmasq
    rm -f /etc/resolv.conf
    echo "nameserver 127.0.0.1" >> /etc/resolv.conf
    touch /etc/dnsmasq.d/unlock.conf
    echo "server=8.8.8.8" >> /etc/dnsmasq.d/unlock.conf
    echo "server=8.8.4.4" >> /etc/dnsmasq.d/unlock.conf
    echo "address=/netflix.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "address=/netflix.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "address=/nflximg.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "address=/nflximg.com/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "address=/nflxvideo.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "address=/nflxso.net/$1" >> /etc/dnsmasq.d/unlock.conf
    echo "address=/nflxext.com/$1" >> /etc/dnsmasq.d/unlock.conf
    
    systemctl restart dnsmasq
