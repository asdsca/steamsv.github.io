#!/bin/bash
yum install bind-utils
yum install -y dnsmasq
systemctl enable dnsmasq
rm -f /etc/resolv.conf
echo "nameserver 127.0.0.1" >> /etc/resolv.conf
touch /etc/dnsmasq.d/unlock.conf
echo "server=8.8.8.8" >> /etc/dnsmasq.d/unlock.conf
echo "server=8.8.4.4" >> /etc/dnsmasq.d/unlock.conf
echo "server=/netflix.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/netflix.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflximg.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflximg.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflxvideo.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflxso.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflxext.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/bilibili.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/app.bilibili.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/api.bilibili.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/data.bilibili.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/interface.bilibili.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/grpc.biliapi.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/dataflow.biliapi.com/$1" >> /etc/dnsmasq.d/unlock.conf
systemctl restart dnsmasq
