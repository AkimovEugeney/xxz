#!/bin/bash
# Увеличиваем лимиты ОС
echo "* soft nofile 1000000" | sudo tee -a /etc/security/limits.conf
echo "* hard nofile 1000000" | sudo tee -a /etc/security/limits.conf
sudo sysctl -w fs.file-max=1000000
ulimit -n 1000000

# Увеличиваем сетевые лимиты
sudo sysctl -w net.ipv4.tcp_max_syn_backlog=8192
sudo sysctl -w net.ipv4.ip_local_port_range="1024 65535"