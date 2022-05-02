iptables -A FORWARD -i eth0 -o tun1 -j ACCEPT
iptables -A FORWARD -i tun1 -o eth0 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -t nat -A POSTROUTING -o tun1 -j MASQUERADE
openvpn /config/your-config-file.ovpn
