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
echo "server=/acg.tv/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/acgvideo.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/b23.tv/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/biliapi.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/biliapi.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/bilibili.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/bilibiligame.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/biligame.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/biligame.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/bilivideo.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/bilivideo.cn/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/hdslb.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/im9.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/mincdn.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/gamer2-cds.cdn.hinet.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/gamer-cds.cdn.hinet.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/gamer.com.tw/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/ani.gamer.com.tw/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/i2.bahamut.com.tw/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/app-measurement.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/api.gamer.com.tw/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/bahamut.com.tw/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/hinet.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/fbcdn.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/gvt1.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/digicert.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/viblast.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/cache.video.iqiyi.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/cache.video.qiyi.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/subscription.iqiyi.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/l.rcd.iqiyi.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/iqiyi.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/iqiyipic.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/iq.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/qy.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/71.am/$1" >> /etc/dnsmasq.d/unlock.conf
systemctl restart dnsmasq
