#!/bin/bash
hostnamectl; ip a | grep "scope global";\
cat /etc/sysctl.conf | grep net.ipv4.conf.all.accept_redirects=
cat /etc/sysctl.conf | grep net.ipv4.conf.default.accept_redirects=
cat /etc/sysctl.conf | grep net.ipv4.conf.all.secure_redirects=
cat /etc/sysctl.conf | grep net.ipv4.conf.default.secure_redirects=


#!/bin/bash
sysctl -w net.ipv4.conf.all.accept_redirects=0
sysctl -w net.ipv4.conf.default.accept_redirects=0
sysctl -w net.ipv4.conf.all.secure_redirects=0
sysctl -w net.ipv4.conf.default.secure_redirects=0

# grep "umask" /etc/profile /etc/profile.d/*.sh
