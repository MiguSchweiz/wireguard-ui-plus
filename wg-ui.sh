#!/bin/bash

export WGUI_SERVER_POST_UP_SCRIPT="iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE; ip6tables -A FORWARD -i wg0 -j ACCEPT; ip6tables -t nat -A POSTROUTING -o eth0 -j MASQUERADE"
export WGUI_SERVER_POST_DOWN_SCRIPT="iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE; ip6tables -D FORWARD -i wg0 -j ACCEPT; ip6tables -t nat -D POSTROUTING -o eth0 -j MASQUERADE"
export WGUI_SERVER_INTERFACE_ADDRESSES=10.0.1.0/24
./wireguard-ui &

