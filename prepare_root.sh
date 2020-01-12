#!/bin/bash

# Run this with sudo to set up /root/ca ready for signing certificates

mkdir -p /root/ca/{certs,crl,csr,newcerts,private}
setfacl -d -m u::rx -m g::- -m o::- /root/ca/private
setfacl -d -m u::rx -m g::rx -m o::rx /root/ca/certs
chmod 700 /root/ca/private
touch /root/ca/index.txt
tee /root/ca/serial <<< 1000
