#!/bin/bash 
OUTPUT_DIR=client-configs/files
BASE_CONFIG=client-configs/base.conf
 
cat ${BASE_CONFIG} \
    <(echo -e '<ca>') \
    /etc/openvpn/server/ca.crt \
    <(echo -e '</ca>\n<cert>') \
    /usr/share/easy-rsa/pki/issued/${1}.crt \
    <(echo -e '</cert>\n<key>') \
    /usr/share/easy-rsa/pki/private/${1}.key \
    <(echo -e '</key>\n<tls-crypt>') \
    /etc/openvpn/server/ta.key \
    <(echo -e '</tls-crypt>') \
    > ${OUTPUT_DIR}/${1}-${2}.ovpn